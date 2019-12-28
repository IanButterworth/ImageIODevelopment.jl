libname = "libturbojpeg"

using Pkg; Pkg.add("JpegTurbo_jll")

using JpegTurbo_jll
jllroot = dirname(dirname(JpegTurbo_jll.libjpeg_path))

using Clang
const LIB_INCLUDE = joinpath(jllroot, "include") |> normpath
# const HEADERSs = filter(x->endswith(x, ".h"), readdir(LIB_INCLUDE))
# @show HEADERSs
const HEADERS = ["jconfig.h", "jmorecfg.h", "jerror.h", "jpeglib.h", "turbojpeg.h"]
const LIB_HEADERS = [joinpath(LIB_INCLUDE, header) for header in HEADERS]

refdir = joinpath.(@__DIR__, "ref_headers")
!isdir(refdir) && mkdir(refdir)
refpaths = joinpath.(refdir, basename.(LIB_HEADERS))
cp.(LIB_HEADERS, refpaths, follow_symlinks=true, force=true)

@show HEADERS

wc = init(; headers = LIB_HEADERS,
            output_file = joinpath(@__DIR__, "$(libname)_api.jl"),
            common_file = joinpath(@__DIR__, "$(libname)_common.jl"),
            clang_includes = vcat(LIB_INCLUDE, CLANG_INCLUDE),
            clang_args = ["-I", joinpath(LIB_INCLUDE, ".."), "-DBITS_IN_JSAMPLE=8", "-DINCOMPLETE_TYPES_BROKEN"],
            header_wrapped = (root, current)->root == current,
            header_library = x->libname,
            clang_diagnostics = true,
            )

run(wc)
rm(joinpath(@__DIR__, "LibTemplate.jl"))
commonpath = joinpath(@__DIR__, "$(libname)_common.jl")


### Manual Steps

#Line 327-onwards of _common.jl should be changed to:

# #const jpeg_saved_marker_ptr = Ptr{jpeg_marker_struct}
#
# struct jpeg_marker_struct
#     #next::jpeg_saved_marker_ptr
#     next::Ptr{Cvoid}
#     marker::UINT8
#     original_length::UInt32
#     data_length::UInt32
#     data::Ptr{JOCTET}
# end
#
# const jpeg_saved_marker_ptr = Ptr{jpeg_marker_struct}




# open(joinpath(@__DIR__, "$(libname)_fixes.jl"), "w") do io
#     write(io, "# manual fixes\n\n")
#     # write(io, "JSAMPLE\n")
# end
