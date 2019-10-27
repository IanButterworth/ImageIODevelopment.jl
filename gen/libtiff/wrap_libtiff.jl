name = "libtiff"

using Pkg; Pkg.add("Libtiff_jll")

using Libtiff_jll
jllroot = dirname(dirname(Libtiff_jll.libtiff_path))

using Clang
const LIB_INCLUDE = joinpath(jllroot, "include") |> normpath
const HEADERS = filter(x->endswith(x, ".h"), readdir(LIB_INCLUDE))
const LIB_HEADERS = [joinpath(LIB_INCLUDE, header) for header in HEADERS]

@show HEADERS

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
rm(joinpath(@__DIR__, "LibTemplate.jl"))

open(joinpath(@__DIR__, "$(name)_fixes.jl"), "w") do io
    write(io, "# manual fixes\n\n")
    write(io, "const ptrdiff_t = Cptrdiff_t\n")
    write(io, "const TIFF_STRIPCHOP = 8000\n")
    write(io, "const FILE = 0 # This fixes loading, but breaks TIFFPrintDirectory(arg1, arg2, arg3)\n")
end
