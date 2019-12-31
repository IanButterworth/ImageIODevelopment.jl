using JpegTurbo_jll
libjpeg_wrap_dir = joinpath(@__DIR__, "..", "..", "gen", "libturbojpeg")
using CEnum
include(joinpath(libjpeg_wrap_dir, "ctypes.jl"))
export Ctm, Ctime_t, Cclock_t
include(joinpath(libjpeg_wrap_dir, "libturbojpeg_common.jl"))
include(joinpath(libjpeg_wrap_dir, "libturbojpeg_api.jl"))

using ColorTypes, ImageCore, FixedPointNumbers


#taken from https://stackoverflow.com/questions/9094691/examples-or-tutorials-of-using-libjpeg-turbos-turbojpeg
function saveimage(filename::String, img::AbstractArray{T,2}; preallocate_max::Bool=false, jpegQual::Int = 93, chromacomp=TJSAMP_420) where T<:Colorant
    #93 chosen to match imagemagick (identified through https://www.imgonline.com.ua/eng/determine-jpeg-quality-result.php)
    #420 chosen to match imagemagick http://www.imagemagick.org/Usage/formats/#jpg_write

    rawimg = rawview(channelview(permuteddimsview(img, (2,1))))
    srcBuf = collect(vec(rawimg))

    nbands, width, height = size(rawimg)
    pitch = Int(width * nbands)
    pixelFormat = nbands == 3 ? TJPF_RGB : TJPF_GRAY
    jpegSubsamp = nbands == 3 ? chromacomp : TJSAMP_GRAY
    flags = 0

    handle = tjInitCompress()
    handle == C_NULL && error("TurboJPEG Error: Unable to initialize compressor object: $(unsafe_string(tjGetErrorStr()))")

    jpegSize = preallocate_max ? Ref(tjBufSize(width, height, jpegSubsamp)) : Ref(Culong(C_NULL))

    jpegBuf = Ref(tjAlloc(jpegSize[]))

    tj_stat = tjCompress2(handle, srcBuf, width, pitch, height, pixelFormat,
                        jpegBuf, jpegSize, jpegSubsamp, jpegQual, flags)

    if tj_stat != 0
        err = tjGetErrorStr()
        tjDestroy(handle)
        handle = C_NULL
        error("TurboJPEG Error: $(unsafe_string(err))")
    end

    jpegBuf_j = unsafe_wrap(Array, jpegBuf[], jpegSize[]; own = false)
    open(filename, "w") do io
       write(io, jpegBuf_j)
    end

    tjstat = tjDestroy(handle) #should deallocate data buffer
    handle = nothing
    tjFree(jpegBuf[])
    return nothing
end

using BenchmarkTools
img = rand(RGB{N0f8}, 1000, 2000);
#img = reshape(range(RGB(1,0,0), RGB(0,1,1), length=200), 10, 20)
@btime saveimage(joinpath(@__DIR__,"out_fileio_imageio.jpg"), $img)

using FileIO
@btime save(joinpath(@__DIR__,"out_fileio_quartimageio.jpg"), $img)

using ImageMagick
@btime save(joinpath(@__DIR__,"out_fileio_imagemagick.jpg"), $img)
