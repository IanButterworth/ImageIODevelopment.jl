# manual fixes

const ptrdiff_t = Cptrdiff_t
const TIFF_STRIPCHOP = 8000
const FILE = 0 # This fixes loading, but breaks TIFFPrintDirectory(arg1, arg2, arg3)
