module ModJPEG

using JpegTurbo_jll

libjpeg_wrap_dir = joinpath(@__DIR__, "..", "gen", "libturbojpeg")

using CEnum
include(joinpath(libjpeg_wrap_dir, "ctypes.jl"))
export Ctm, Ctime_t, Cclock_t
include(joinpath(libjpeg_wrap_dir, "libturbojpeg_common.jl"))
include(joinpath(libjpeg_wrap_dir, "libturbojpeg_api.jl"))

end # module
