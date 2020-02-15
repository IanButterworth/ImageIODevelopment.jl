using ImageIO
using Test
using ColorTypes
using FixedPointNumbers
using ImageCore
using Logging
using Random

logger = ConsoleLogger(stdout, Logging.Info)
global_logger(logger)

tmpdir = joinpath(@__DIR__,"temp")
@testset "ImageIO.jl" begin
    # Write your own tests here.

    @testset "libtiff" begin
        @test ImageIO.ModTIFF.version() == "LIBTIFF, Version 4.0.10\nCopyright (c) 1988-1996 Sam Leffler\nCopyright (c) 1991-1996 Silicon Graphics, Inc."
    end

    include("png.jl")

    @testset "libjpeg" begin
        @test unsafe_string(ImageIO.ModJPEG.tjGetErrorStr()) == "No error"
    end

end

try
    rm(tmpdir, recursive = true)
catch
    @error "Unable to remove temp directory at: $(tmpdir)"
end
