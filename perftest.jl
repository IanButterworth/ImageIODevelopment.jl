using BenchmarkTools

testimg = "/Users/ian/.julia/dev/ImageIO/test/temp/rgb_n0f8.png"

@time using FileIO                      #0.311481 seconds (212.64 k allocations: 12.633 MiB)
@time img1 = load(testimg)              #5.867467 seconds (13.37 M allocations: 680.954 MiB, 6.01% gc time)
@btime img1 = load(testimg)             #487.182 μs (367 allocations: 21.88 KiB)


@time using ImageIO                     #1.287301 seconds (2.25 M allocations: 111.920 MiB, 1.60% gc time)
@time img2 = ModPNG.readimage(testimg)  #0.377399 seconds (1.14 M allocations: 57.108 MiB, 3.07% gc time)
@btime img2 = ModPNG.readimage(testimg) #26.236 μs (15 allocations: 992 bytes)

@assert img1 == img2
