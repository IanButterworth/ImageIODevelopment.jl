module ImageIO

function readimage() end
function writeimage() end

include(joinpath("tiff", "tiff.jl"))
include(joinpath("jpeg", "jpeg.jl"))
include(joinpath("png", "png.jl"))

export ModTIFF, ModJPEG, ModPNG

end # module
