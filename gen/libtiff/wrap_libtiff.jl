libname = "libtiff"

using Pkg; Pkg.add("Libtiff_jll")

using Libtiff_jll
jllroot = dirname(dirname(Libtiff_jll.libtiff_path))

using Clang
const LIB_INCLUDE = joinpath(jllroot, "include") |> normpath
const HEADERS = filter(x->endswith(x, ".h"), readdir(LIB_INCLUDE))
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
            clang_args = ["-I", joinpath(LIB_INCLUDE, "..")],
            header_wrapped = (root, current)->root == current,
            header_library = x->libname,
            clang_diagnostics = true,
            )

run(wc)
rm(joinpath(@__DIR__, "LibTemplate.jl"))

open(joinpath(@__DIR__, "$(libname)_fixes.jl"), "w") do io
    write(io, "# manual fixes\n\n")
    write(io, "const ptrdiff_t = Cptrdiff_t\n")
    write(io, "const TIFF_STRIPCHOP = 8000\n")
    write(io, "const FILE = 0 # This fixes loading, but breaks TIFFPrintDirectory(arg1, arg2, arg3)\n")
end
