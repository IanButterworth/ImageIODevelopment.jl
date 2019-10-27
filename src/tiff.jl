module TIFF

using Libtiff_jll

libtiff_wrap_dir = joinpath(@__DIR__, "..", "gen", "libtiff")

using CEnum
include(joinpath(libtiff_wrap_dir, "ctypes.jl"))
export Ctm, Ctime_t, Cclock_t

include(joinpath(libtiff_wrap_dir, "libtiff_common.jl"))
include(joinpath(libtiff_wrap_dir, "libtiff_api.jl"))

end # module
