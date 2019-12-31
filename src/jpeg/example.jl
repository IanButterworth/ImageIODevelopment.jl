using JpegTurbo_jll
libjpeg_wrap_dir = joinpath(@__DIR__, "..", "..", "gen", "libturbojpeg")
using CEnum
include(joinpath(libjpeg_wrap_dir, "ctypes.jl"))
export Ctm, Ctime_t, Cclock_t
include(joinpath(libjpeg_wrap_dir, "libturbojpeg_common.jl"))
include(joinpath(libjpeg_wrap_dir, "libturbojpeg_api.jl"))

using ColorTypes, ImageCore, FixedPointNumbers


#taken from https://stackoverflow.com/questions/9094691/examples-or-tutorials-of-using-libjpeg-turbos-turbojpeg
function saveimage(img::AbstractArray{T,2}) where T<:Colorant
    rawimg = rawview(channelview(img))
    srcBuf = collect(vec(rawimg))

    nbands, width, height = size(rawimg)
    pitch = Int(width * nbands)
    pixelFormat = nbands == 3 ? TJPF_RGB : TJPF_GRAY
    jpegSubsamp = nbands == 3 ? TJSAMP_411 : TJSAMP_GRAY
    jpegQual = 92
    flags = 0

    handle = tjInitCompress()
    handle == C_NULL && error("TurboJPEG Error: Unable to initialize compressor object: $(unsafe_string(tjGetErrorStr()))")

    jpegBuf = Ptr{UInt8}(C_NULL)
    jpegSize = Culong(0)
    # jpegMaxSize = tjBufSize(width, height, jpegSubsamp)
    # jpegBuf = Array{UInt8}(undef, jpegMaxSize)
    # jpegSize = jpegMaxSize

    @show handle, srcBuf, width, pitch, height, pixelFormat, Ref(jpegBuf), Ref(jpegSize), jpegSubsamp, jpegQual, flags

    tj_stat = tjCompress2(handle, srcBuf, width, pitch, height, pixelFormat,
                        Ref(jpegBuf), Ref(jpegSize), jpegSubsamp, jpegQual, flags)
    if tj_stat != 0
        err = tjGetErrorStr()
        tjDestroy(handle)
        handle = C_NULL
        error("TurboJPEG Error: $(unsafe_string(err))")
    end
    @show jpegSize

    jpegBuf_j = unsafe_wrap(Array, jpegBuf, jpegSize; own = false)
    open(joinpath(@__DIR__, "out.jpg"), "w") do io
       write(io, jpegBuf_j)
    end

    tjstat = tjDestroy(handle) #should deallocate data buffer
    handle = nothing
    tjFree(jpegBuf)
end


saveimage(rand(RGB{N0f8}, 10, 10))
