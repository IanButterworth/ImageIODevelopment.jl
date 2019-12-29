using ImageIO
using Test
using ColorTypes
using FixedPointNumbers
using ImageCore
using Logging
using Random

#logger = ConsoleLogger(stdout, Logging.Debug)
logger = ConsoleLogger(stdout, Logging.Info)
global_logger(logger)

tmpdir = joinpath(tempdir(), "ImageIO")

@testset "ImageIO.jl" begin
    # Write your own tests here.

    @testset "libtiff" begin
        @test ImageIO.ModTIFF.version() == "LIBTIFF, Version 4.0.10\nCopyright (c) 1988-1996 Sam Leffler\nCopyright (c) 1991-1996 Silicon Graphics, Inc."
    end

    @testset "libpng" begin
        tmpdir = joinpath(tempdir(), "ImageIO")
        isdir(tmpdir) && rm(tmpdir, recursive = true)
        mkdir(tmpdir)

        img = rand(Bool, 5, 5, 5, 5)
        filepath = joinpath(tmpdir, "5x5x5x5.png")
        @test_throws ErrorException ModPNG.writeimage(filepath, img)

        @testset "Binary Image" begin
            a = rand(Bool, 11, 10)
            filepath = joinpath(tmpdir, "binary1.png")
            ModPNG.writeimage(filepath, a)
            b1 = ModPNG.readimage(filepath)
            @test b1 == convert(Array{Gray{N0f8}}, a)

            a = bitrand(5,5)
            filepath = joinpath(tmpdir, "binary2.png")
            ModPNG.writeimage(filepath, a)
            b2 = ModPNG.readimage(filepath)
            @test b2 == convert(Array{Gray{N0f8}}, a)

            a = colorview(Gray, a)
            filepath = joinpath(tmpdir, "binary3.png")
            ModPNG.writeimage(filepath, a)
            b3 = ModPNG.readimage(filepath)
            @test b3 == convert(Array{Gray{N0f8}}, a)
        end

        @testset "Gray image" begin
            gray = vcat(fill(Gray(1.0), 10, 10), fill(Gray(0.5), 10, 10), fill(Gray(0.0), 10, 10))
            filepath = joinpath(tmpdir, "gray1.png")
            ModPNG.writeimage(filepath, gray)
            g1 = ModPNG.readimage(filepath)
            @test g1 == convert(Array{Gray{N0f8}}, gray)

            gray = rand(Gray{N0f8}, 5, 5)
            filepath = joinpath(tmpdir, "gray2.png")
            ModPNG.writeimage(filepath, gray)
            g2 = ModPNG.readimage(filepath)
            @test g2 == gray
        end

        @testset "Color - RGB" begin
            rgb8 = rand(RGB{N0f8}, 10, 5)
            filepath = joinpath(tmpdir, "rgb_n0f8.png")
            ModPNG.writeimage(filepath, rgb8)
            r1 = ModPNG.readimage(filepath)
            @test r1 == rgb8

            rgb16 = rand(RGB{N0f16}, 5, 5)
            filepath = joinpath(tmpdir, "rgb_n0f16.png")
            ModPNG.writeimage(filepath, rgb16)
            r1 = ModPNG.readimage(filepath)
            @test r1 ==  rgb16
        end

        @testset "Alpha" begin
            # RGBA
            r = RGBA(1.0,0.0,0.0, 0.2)
            g = RGBA(0.0,1.0,0.0, 0.8)
            b = RGBA(0.0,0.0,1.0, 1.0)
            rgba1 = vcat(fill(r, 50,100), fill(g, 50,100), fill(b, 50,100))
            filepath = joinpath(tmpdir, "rgba1.png")
            ModPNG.writeimage(filepath, rgba1)
            r1 = ModPNG.readimage(filepath)
            @test r1 == rgba1

            # GrayA
            r = GrayA(1.0, 0.25)
            g = GrayA(0.5, 0.5)
            b = GrayA(0.0, 0.75)
            graya = vcat(fill(r, 50,100), fill(g, 50,100), fill(b, 50,100))
            filepath = joinpath(tmpdir, "graya1.png")
            ModPNG.writeimage(filepath, graya)
            g1 = ModPNG.readimage(filepath)
            @test g1 == convert(Array{GrayA{N0f8}}, graya)
        end
        # TODO implement palette
    end

    @testset "libjpeg" begin
        @test unsafe_string(ImageIO.ModJPEG.tjGetErrorStr()) == "No error"
    end

end

try
    rm(tmpdir, recursive = true)
catch
    @error "Unable to remove temp directory at: $(tmpdir)"
end
