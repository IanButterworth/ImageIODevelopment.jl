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
