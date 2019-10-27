module ModPNG

using libpng_jll

libpng_wrap_dir = joinpath(@__DIR__, "..", "gen", "libpng")

using CEnum
include(joinpath(libpng_wrap_dir, "ctypes.jl"))
export Ctm, Ctime_t, Cclock_t

include(joinpath(libpng_wrap_dir, "libpng_common.jl"))
include(joinpath(libpng_wrap_dir, "libpng_api.jl"))

end # module
