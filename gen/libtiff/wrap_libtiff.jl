name = "libtiff"
using Libtiff_jll
jllroot = dirname(dirname(Libtiff_jll.libtiff_path))

using Clang
const LIB_INCLUDE = joinpath(jllroot, "include") |> normpath
const LIB_HEADERS = [joinpath(LIB_INCLUDE, header) for header in ["tiff.h", "tiffconf.h", "tiffio.h", "tiffvers.h"]]

wc = init(; headers = LIB_HEADERS,
            output_file = joinpath(@__DIR__, "$(name)_api.jl"),
            common_file = joinpath(@__DIR__, "$(name)_common.jl"),
            clang_includes = vcat(LIB_INCLUDE, CLANG_INCLUDE),
            clang_args = ["-I", joinpath(LIB_INCLUDE, "..")],
            header_wrapped = (root, current)->root == current,
            header_library = x->name,
            clang_diagnostics = true,
            )

run(wc)

# open(joinpath(@__DIR__, "libdwf_fixes.jl"), "w") do io
#     write(io, "# manual fixes\n\n")
# end
