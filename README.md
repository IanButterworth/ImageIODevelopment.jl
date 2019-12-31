# ImageIO.jl

A very WIP attempt at an Image-IO package to directly use libjpegturbo, libtiff, libpng etc. to read/write images

Requires Julia 1.3+

[![Build Status](https://travis-ci.com/ianshmean/ImageIO.jl.svg?branch=master)](https://travis-ci.com/ianshmean/ImageIO.jl)
[![Build Status](https://api.cirrus-ci.com/github/ianshmean/ImageIO.jl.svg)](https://cirrus-ci.com/github/ianshmean/ImageIO.jl)
[![Codecov](https://codecov.io/gh/ianshmean/ImageIO.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/ianshmean/ImageIO.jl)


# Status
Works for PNGs via the absorption of https://github.com/FugroRoames/LibPNG.jl (which may move to a seperate dep if released, and if API makes sense once this API is built out)

Wrapping Libs:

### libpng
done - loads and validated with tests

### libtiff
done - loads and returns version

### libjpeg
done - loads and returns "No error"


# Benchmarking (WIP)

##PNG reading
```julia
using BenchmarkTools

testimg = "/Users/ian/.julia/dev/ImageIO/test/temp/rgb_n0f8.png"

@time using FileIO                      #0.311481 seconds (212.64 k allocations: 12.633 MiB)
@time img1 = load(testimg)              #5.867467 seconds (13.37 M allocations: 680.954 MiB, 6.01% gc time)
@btime img1 = load(testimg)             #487.182 μs (367 allocations: 21.88 KiB)

@time using ImageIO                     #1.287301 seconds (2.25 M allocations: 111.920 MiB, 1.60% gc time)
@time img2 = ModPNG.readimage(testimg)  #0.377399 seconds (1.14 M allocations: 57.108 MiB, 3.07% gc time)
@btime img2 = ModPNG.readimage(testimg) #26.236 μs (15 allocations: 992 bytes)

@assert img1 == img2
```

##JPEG writing

`@btime` tests

|  | rand(RGB{N0f8}, 10, 20) | rand(RGB{N0f8}, 1000, 2000) | rand(RGB{N0f8}, 10000, 20000) |
|---------------------------|-----------------------------------------|----------------------------------------|-------------------------------------|
| ImageIO.jl - libturbojpeg | 101.484 μs (46 allocations: 2.81 KiB) | 92.338 ms (51 allocations: 5.72 MiB) | 14.329 s (51 allocations: 572.21 MiB) |
| FileIO - QuartzImageIO.jl | 534.594 μs (198 allocations: 12.84 KiB) | 89.069 ms (201 allocations: 22.90 MiB) | 9.053 s (201 allocations: 2.24 GiB) |
| FileIO - ImageMagick.jl | 460.599 μs (198 allocations: 12.84 KiB) | 90.524 ms (201 allocations: 22.90 MiB) | 9.378 s (201 allocations: 2.24 GiB) |

