using ImageIO
using Test

@testset "ImageIO.jl" begin
    # Write your own tests here.

    @testset "libtiff" begin
        @test ImageIO.ModTIFF.version() == "LIBTIFF, Version 4.0.10\nCopyright (c) 1988-1996 Sam Leffler\nCopyright (c) 1991-1996 Silicon Graphics, Inc."
    end

    @testset "libpng" begin
        @test ImageIO.ModPNG.version() == v"1.6.37"
    end
    @testset "libjpeg" begin
        ImageIO.ModJPEG.tjGetErrorStr()
    end

end
