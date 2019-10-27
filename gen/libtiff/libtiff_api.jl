# Julia wrapper for header: tiff.h
# Automatically generated using Clang.jl

# Julia wrapper for header: tiffconf.h
# Automatically generated using Clang.jl

# Julia wrapper for header: tiffio.h
# Automatically generated using Clang.jl


function TIFFGetVersion()
    ccall((:TIFFGetVersion, libtiff), Cstring, ())
end

function TIFFFindCODEC(arg1)
    ccall((:TIFFFindCODEC, libtiff), Ptr{TIFFCodec}, (uint16,), arg1)
end

function TIFFRegisterCODEC(arg1, arg2, arg3)
    ccall((:TIFFRegisterCODEC, libtiff), Ptr{TIFFCodec}, (uint16, Cstring, TIFFInitMethod), arg1, arg2, arg3)
end

function TIFFUnRegisterCODEC(arg1)
    ccall((:TIFFUnRegisterCODEC, libtiff), Cvoid, (Ptr{TIFFCodec},), arg1)
end

function TIFFIsCODECConfigured(arg1)
    ccall((:TIFFIsCODECConfigured, libtiff), Cint, (uint16,), arg1)
end

function TIFFGetConfiguredCODECs()
    ccall((:TIFFGetConfiguredCODECs, libtiff), Ptr{TIFFCodec}, ())
end

function _TIFFmalloc(s)
    ccall((:_TIFFmalloc, libtiff), Ptr{Cvoid}, (tmsize_t,), s)
end

function _TIFFcalloc(nmemb, siz)
    ccall((:_TIFFcalloc, libtiff), Ptr{Cvoid}, (tmsize_t, tmsize_t), nmemb, siz)
end

function _TIFFrealloc(p, s)
    ccall((:_TIFFrealloc, libtiff), Ptr{Cvoid}, (Ptr{Cvoid}, tmsize_t), p, s)
end

function _TIFFmemset(p, v, c)
    ccall((:_TIFFmemset, libtiff), Cvoid, (Ptr{Cvoid}, Cint, tmsize_t), p, v, c)
end

function _TIFFmemcpy(d, s, c)
    ccall((:_TIFFmemcpy, libtiff), Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, tmsize_t), d, s, c)
end

function _TIFFmemcmp(p1, p2, c)
    ccall((:_TIFFmemcmp, libtiff), Cint, (Ptr{Cvoid}, Ptr{Cvoid}, tmsize_t), p1, p2, c)
end

function _TIFFfree(p)
    ccall((:_TIFFfree, libtiff), Cvoid, (Ptr{Cvoid},), p)
end

function TIFFGetTagListCount(arg1)
    ccall((:TIFFGetTagListCount, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFGetTagListEntry(arg1, tag_index)
    ccall((:TIFFGetTagListEntry, libtiff), uint32, (Ptr{TIFF}, Cint), arg1, tag_index)
end

function TIFFFindField(arg1, arg2, arg3)
    ccall((:TIFFFindField, libtiff), Ptr{TIFFField}, (Ptr{TIFF}, uint32, TIFFDataType), arg1, arg2, arg3)
end

function TIFFFieldWithTag(arg1, arg2)
    ccall((:TIFFFieldWithTag, libtiff), Ptr{TIFFField}, (Ptr{TIFF}, uint32), arg1, arg2)
end

function TIFFFieldWithName(arg1, arg2)
    ccall((:TIFFFieldWithName, libtiff), Ptr{TIFFField}, (Ptr{TIFF}, Cstring), arg1, arg2)
end

function TIFFFieldTag(arg1)
    ccall((:TIFFFieldTag, libtiff), uint32, (Ptr{TIFFField},), arg1)
end

function TIFFFieldName(arg1)
    ccall((:TIFFFieldName, libtiff), Cstring, (Ptr{TIFFField},), arg1)
end

function TIFFFieldDataType(arg1)
    ccall((:TIFFFieldDataType, libtiff), TIFFDataType, (Ptr{TIFFField},), arg1)
end

function TIFFFieldPassCount(arg1)
    ccall((:TIFFFieldPassCount, libtiff), Cint, (Ptr{TIFFField},), arg1)
end

function TIFFFieldReadCount(arg1)
    ccall((:TIFFFieldReadCount, libtiff), Cint, (Ptr{TIFFField},), arg1)
end

function TIFFFieldWriteCount(arg1)
    ccall((:TIFFFieldWriteCount, libtiff), Cint, (Ptr{TIFFField},), arg1)
end

function TIFFAccessTagMethods(arg1)
    ccall((:TIFFAccessTagMethods, libtiff), Ptr{TIFFTagMethods}, (Ptr{TIFF},), arg1)
end

function TIFFGetClientInfo(arg1, arg2)
    ccall((:TIFFGetClientInfo, libtiff), Ptr{Cvoid}, (Ptr{TIFF}, Cstring), arg1, arg2)
end

function TIFFSetClientInfo(arg1, arg2, arg3)
    ccall((:TIFFSetClientInfo, libtiff), Cvoid, (Ptr{TIFF}, Ptr{Cvoid}, Cstring), arg1, arg2, arg3)
end

function TIFFCleanup(tif)
    ccall((:TIFFCleanup, libtiff), Cvoid, (Ptr{TIFF},), tif)
end

function TIFFClose(tif)
    ccall((:TIFFClose, libtiff), Cvoid, (Ptr{TIFF},), tif)
end

function TIFFFlush(tif)
    ccall((:TIFFFlush, libtiff), Cint, (Ptr{TIFF},), tif)
end

function TIFFFlushData(tif)
    ccall((:TIFFFlushData, libtiff), Cint, (Ptr{TIFF},), tif)
end

function TIFFReadDirectory(tif)
    ccall((:TIFFReadDirectory, libtiff), Cint, (Ptr{TIFF},), tif)
end

function TIFFReadCustomDirectory(tif, diroff, infoarray)
    ccall((:TIFFReadCustomDirectory, libtiff), Cint, (Ptr{TIFF}, toff_t, Ptr{TIFFFieldArray}), tif, diroff, infoarray)
end

function TIFFReadEXIFDirectory(tif, diroff)
    ccall((:TIFFReadEXIFDirectory, libtiff), Cint, (Ptr{TIFF}, toff_t), tif, diroff)
end

function TIFFScanlineSize64(tif)
    ccall((:TIFFScanlineSize64, libtiff), uint64, (Ptr{TIFF},), tif)
end

function TIFFScanlineSize(tif)
    ccall((:TIFFScanlineSize, libtiff), tmsize_t, (Ptr{TIFF},), tif)
end

function TIFFRasterScanlineSize64(tif)
    ccall((:TIFFRasterScanlineSize64, libtiff), uint64, (Ptr{TIFF},), tif)
end

function TIFFRasterScanlineSize(tif)
    ccall((:TIFFRasterScanlineSize, libtiff), tmsize_t, (Ptr{TIFF},), tif)
end

function TIFFStripSize64(tif)
    ccall((:TIFFStripSize64, libtiff), uint64, (Ptr{TIFF},), tif)
end

function TIFFStripSize(tif)
    ccall((:TIFFStripSize, libtiff), tmsize_t, (Ptr{TIFF},), tif)
end

function TIFFRawStripSize64(tif, strip)
    ccall((:TIFFRawStripSize64, libtiff), uint64, (Ptr{TIFF}, uint32), tif, strip)
end

function TIFFRawStripSize(tif, strip)
    ccall((:TIFFRawStripSize, libtiff), tmsize_t, (Ptr{TIFF}, uint32), tif, strip)
end

function TIFFVStripSize64(tif, nrows)
    ccall((:TIFFVStripSize64, libtiff), uint64, (Ptr{TIFF}, uint32), tif, nrows)
end

function TIFFVStripSize(tif, nrows)
    ccall((:TIFFVStripSize, libtiff), tmsize_t, (Ptr{TIFF}, uint32), tif, nrows)
end

function TIFFTileRowSize64(tif)
    ccall((:TIFFTileRowSize64, libtiff), uint64, (Ptr{TIFF},), tif)
end

function TIFFTileRowSize(tif)
    ccall((:TIFFTileRowSize, libtiff), tmsize_t, (Ptr{TIFF},), tif)
end

function TIFFTileSize64(tif)
    ccall((:TIFFTileSize64, libtiff), uint64, (Ptr{TIFF},), tif)
end

function TIFFTileSize(tif)
    ccall((:TIFFTileSize, libtiff), tmsize_t, (Ptr{TIFF},), tif)
end

function TIFFVTileSize64(tif, nrows)
    ccall((:TIFFVTileSize64, libtiff), uint64, (Ptr{TIFF}, uint32), tif, nrows)
end

function TIFFVTileSize(tif, nrows)
    ccall((:TIFFVTileSize, libtiff), tmsize_t, (Ptr{TIFF}, uint32), tif, nrows)
end

function TIFFDefaultStripSize(tif, request)
    ccall((:TIFFDefaultStripSize, libtiff), uint32, (Ptr{TIFF}, uint32), tif, request)
end

function TIFFDefaultTileSize(arg1, arg2, arg3)
    ccall((:TIFFDefaultTileSize, libtiff), Cvoid, (Ptr{TIFF}, Ptr{uint32}, Ptr{uint32}), arg1, arg2, arg3)
end

function TIFFFileno(arg1)
    ccall((:TIFFFileno, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFSetFileno(arg1, arg2)
    ccall((:TIFFSetFileno, libtiff), Cint, (Ptr{TIFF}, Cint), arg1, arg2)
end

function TIFFClientdata(arg1)
    ccall((:TIFFClientdata, libtiff), thandle_t, (Ptr{TIFF},), arg1)
end

function TIFFSetClientdata(arg1, arg2)
    ccall((:TIFFSetClientdata, libtiff), thandle_t, (Ptr{TIFF}, thandle_t), arg1, arg2)
end

function TIFFGetMode(arg1)
    ccall((:TIFFGetMode, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFSetMode(arg1, arg2)
    ccall((:TIFFSetMode, libtiff), Cint, (Ptr{TIFF}, Cint), arg1, arg2)
end

function TIFFIsTiled(arg1)
    ccall((:TIFFIsTiled, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFIsByteSwapped(arg1)
    ccall((:TIFFIsByteSwapped, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFIsUpSampled(arg1)
    ccall((:TIFFIsUpSampled, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFIsMSB2LSB(arg1)
    ccall((:TIFFIsMSB2LSB, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFIsBigEndian(arg1)
    ccall((:TIFFIsBigEndian, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFGetReadProc(arg1)
    ccall((:TIFFGetReadProc, libtiff), TIFFReadWriteProc, (Ptr{TIFF},), arg1)
end

function TIFFGetWriteProc(arg1)
    ccall((:TIFFGetWriteProc, libtiff), TIFFReadWriteProc, (Ptr{TIFF},), arg1)
end

function TIFFGetSeekProc(arg1)
    ccall((:TIFFGetSeekProc, libtiff), TIFFSeekProc, (Ptr{TIFF},), arg1)
end

function TIFFGetCloseProc(arg1)
    ccall((:TIFFGetCloseProc, libtiff), TIFFCloseProc, (Ptr{TIFF},), arg1)
end

function TIFFGetSizeProc(arg1)
    ccall((:TIFFGetSizeProc, libtiff), TIFFSizeProc, (Ptr{TIFF},), arg1)
end

function TIFFGetMapFileProc(arg1)
    ccall((:TIFFGetMapFileProc, libtiff), TIFFMapFileProc, (Ptr{TIFF},), arg1)
end

function TIFFGetUnmapFileProc(arg1)
    ccall((:TIFFGetUnmapFileProc, libtiff), TIFFUnmapFileProc, (Ptr{TIFF},), arg1)
end

function TIFFCurrentRow(arg1)
    ccall((:TIFFCurrentRow, libtiff), uint32, (Ptr{TIFF},), arg1)
end

function TIFFCurrentDirectory(arg1)
    ccall((:TIFFCurrentDirectory, libtiff), uint16, (Ptr{TIFF},), arg1)
end

function TIFFNumberOfDirectories(arg1)
    ccall((:TIFFNumberOfDirectories, libtiff), uint16, (Ptr{TIFF},), arg1)
end

function TIFFCurrentDirOffset(arg1)
    ccall((:TIFFCurrentDirOffset, libtiff), uint64, (Ptr{TIFF},), arg1)
end

function TIFFCurrentStrip(arg1)
    ccall((:TIFFCurrentStrip, libtiff), uint32, (Ptr{TIFF},), arg1)
end

function TIFFCurrentTile(tif)
    ccall((:TIFFCurrentTile, libtiff), uint32, (Ptr{TIFF},), tif)
end

function TIFFReadBufferSetup(tif, bp, size)
    ccall((:TIFFReadBufferSetup, libtiff), Cint, (Ptr{TIFF}, Ptr{Cvoid}, tmsize_t), tif, bp, size)
end

function TIFFWriteBufferSetup(tif, bp, size)
    ccall((:TIFFWriteBufferSetup, libtiff), Cint, (Ptr{TIFF}, Ptr{Cvoid}, tmsize_t), tif, bp, size)
end

function TIFFSetupStrips(arg1)
    ccall((:TIFFSetupStrips, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFWriteCheck(arg1, arg2, arg3)
    ccall((:TIFFWriteCheck, libtiff), Cint, (Ptr{TIFF}, Cint, Cstring), arg1, arg2, arg3)
end

function TIFFFreeDirectory(arg1)
    ccall((:TIFFFreeDirectory, libtiff), Cvoid, (Ptr{TIFF},), arg1)
end

function TIFFCreateDirectory(arg1)
    ccall((:TIFFCreateDirectory, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFCreateCustomDirectory(arg1, arg2)
    ccall((:TIFFCreateCustomDirectory, libtiff), Cint, (Ptr{TIFF}, Ptr{TIFFFieldArray}), arg1, arg2)
end

function TIFFCreateEXIFDirectory(arg1)
    ccall((:TIFFCreateEXIFDirectory, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFLastDirectory(arg1)
    ccall((:TIFFLastDirectory, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFSetDirectory(arg1, arg2)
    ccall((:TIFFSetDirectory, libtiff), Cint, (Ptr{TIFF}, uint16), arg1, arg2)
end

function TIFFSetSubDirectory(arg1, arg2)
    ccall((:TIFFSetSubDirectory, libtiff), Cint, (Ptr{TIFF}, uint64), arg1, arg2)
end

function TIFFUnlinkDirectory(arg1, arg2)
    ccall((:TIFFUnlinkDirectory, libtiff), Cint, (Ptr{TIFF}, uint16), arg1, arg2)
end

function TIFFUnsetField(arg1, arg2)
    ccall((:TIFFUnsetField, libtiff), Cint, (Ptr{TIFF}, uint32), arg1, arg2)
end

function TIFFWriteDirectory(arg1)
    ccall((:TIFFWriteDirectory, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFWriteCustomDirectory(arg1, arg2)
    ccall((:TIFFWriteCustomDirectory, libtiff), Cint, (Ptr{TIFF}, Ptr{uint64}), arg1, arg2)
end

function TIFFCheckpointDirectory(arg1)
    ccall((:TIFFCheckpointDirectory, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFRewriteDirectory(arg1)
    ccall((:TIFFRewriteDirectory, libtiff), Cint, (Ptr{TIFF},), arg1)
end

function TIFFPrintDirectory(arg1, arg2, arg3)
    ccall((:TIFFPrintDirectory, libtiff), Cvoid, (Ptr{TIFF}, Ptr{FILE}, Clong), arg1, arg2, arg3)
end

function TIFFReadScanline(tif, buf, row, sample)
    ccall((:TIFFReadScanline, libtiff), Cint, (Ptr{TIFF}, Ptr{Cvoid}, uint32, uint16), tif, buf, row, sample)
end

function TIFFWriteScanline(tif, buf, row, sample)
    ccall((:TIFFWriteScanline, libtiff), Cint, (Ptr{TIFF}, Ptr{Cvoid}, uint32, uint16), tif, buf, row, sample)
end

function TIFFReadRGBAImage(arg1, arg2, arg3, arg4, arg5)
    ccall((:TIFFReadRGBAImage, libtiff), Cint, (Ptr{TIFF}, uint32, uint32, Ptr{uint32}, Cint), arg1, arg2, arg3, arg4, arg5)
end

function TIFFReadRGBAImageOriented(arg1, arg2, arg3, arg4, arg5, arg6)
    ccall((:TIFFReadRGBAImageOriented, libtiff), Cint, (Ptr{TIFF}, uint32, uint32, Ptr{uint32}, Cint, Cint), arg1, arg2, arg3, arg4, arg5, arg6)
end

function TIFFReadRGBAStrip(arg1, arg2, arg3)
    ccall((:TIFFReadRGBAStrip, libtiff), Cint, (Ptr{TIFF}, uint32, Ptr{uint32}), arg1, arg2, arg3)
end

function TIFFReadRGBATile(arg1, arg2, arg3, arg4)
    ccall((:TIFFReadRGBATile, libtiff), Cint, (Ptr{TIFF}, uint32, uint32, Ptr{uint32}), arg1, arg2, arg3, arg4)
end

function TIFFReadRGBAStripExt(arg1, arg2, arg3, stop_on_error)
    ccall((:TIFFReadRGBAStripExt, libtiff), Cint, (Ptr{TIFF}, uint32, Ptr{uint32}, Cint), arg1, arg2, arg3, stop_on_error)
end

function TIFFReadRGBATileExt(arg1, arg2, arg3, arg4, stop_on_error)
    ccall((:TIFFReadRGBATileExt, libtiff), Cint, (Ptr{TIFF}, uint32, uint32, Ptr{uint32}, Cint), arg1, arg2, arg3, arg4, stop_on_error)
end

function TIFFRGBAImageOK(arg1, arg2)
    ccall((:TIFFRGBAImageOK, libtiff), Cint, (Ptr{TIFF}, Ptr{UInt8}), arg1, arg2)
end

function TIFFRGBAImageBegin(arg1, arg2, arg3, arg4)
    ccall((:TIFFRGBAImageBegin, libtiff), Cint, (Ptr{TIFFRGBAImage}, Ptr{TIFF}, Cint, Ptr{UInt8}), arg1, arg2, arg3, arg4)
end

function TIFFRGBAImageGet(arg1, arg2, arg3, arg4)
    ccall((:TIFFRGBAImageGet, libtiff), Cint, (Ptr{TIFFRGBAImage}, Ptr{uint32}, uint32, uint32), arg1, arg2, arg3, arg4)
end

function TIFFRGBAImageEnd(arg1)
    ccall((:TIFFRGBAImageEnd, libtiff), Cvoid, (Ptr{TIFFRGBAImage},), arg1)
end

function TIFFOpen(arg1, arg2)
    ccall((:TIFFOpen, libtiff), Ptr{TIFF}, (Cstring, Cstring), arg1, arg2)
end

function TIFFFdOpen(arg1, arg2, arg3)
    ccall((:TIFFFdOpen, libtiff), Ptr{TIFF}, (Cint, Cstring, Cstring), arg1, arg2, arg3)
end

function TIFFClientOpen(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    ccall((:TIFFClientOpen, libtiff), Ptr{TIFF}, (Cstring, Cstring, thandle_t, TIFFReadWriteProc, TIFFReadWriteProc, TIFFSeekProc, TIFFCloseProc, TIFFSizeProc, TIFFMapFileProc, TIFFUnmapFileProc), arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
end

function TIFFFileName(arg1)
    ccall((:TIFFFileName, libtiff), Cstring, (Ptr{TIFF},), arg1)
end

function TIFFSetFileName(arg1, arg2)
    ccall((:TIFFSetFileName, libtiff), Cstring, (Ptr{TIFF}, Cstring), arg1, arg2)
end

function TIFFSetErrorHandler(arg1)
    ccall((:TIFFSetErrorHandler, libtiff), TIFFErrorHandler, (TIFFErrorHandler,), arg1)
end

function TIFFSetErrorHandlerExt(arg1)
    ccall((:TIFFSetErrorHandlerExt, libtiff), TIFFErrorHandlerExt, (TIFFErrorHandlerExt,), arg1)
end

function TIFFSetWarningHandler(arg1)
    ccall((:TIFFSetWarningHandler, libtiff), TIFFErrorHandler, (TIFFErrorHandler,), arg1)
end

function TIFFSetWarningHandlerExt(arg1)
    ccall((:TIFFSetWarningHandlerExt, libtiff), TIFFErrorHandlerExt, (TIFFErrorHandlerExt,), arg1)
end

function TIFFSetTagExtender(arg1)
    ccall((:TIFFSetTagExtender, libtiff), TIFFExtendProc, (TIFFExtendProc,), arg1)
end

function TIFFComputeTile(tif, x, y, z, s)
    ccall((:TIFFComputeTile, libtiff), uint32, (Ptr{TIFF}, uint32, uint32, uint32, uint16), tif, x, y, z, s)
end

function TIFFCheckTile(tif, x, y, z, s)
    ccall((:TIFFCheckTile, libtiff), Cint, (Ptr{TIFF}, uint32, uint32, uint32, uint16), tif, x, y, z, s)
end

function TIFFNumberOfTiles(arg1)
    ccall((:TIFFNumberOfTiles, libtiff), uint32, (Ptr{TIFF},), arg1)
end

function TIFFReadTile(tif, buf, x, y, z, s)
    ccall((:TIFFReadTile, libtiff), tmsize_t, (Ptr{TIFF}, Ptr{Cvoid}, uint32, uint32, uint32, uint16), tif, buf, x, y, z, s)
end

function TIFFWriteTile(tif, buf, x, y, z, s)
    ccall((:TIFFWriteTile, libtiff), tmsize_t, (Ptr{TIFF}, Ptr{Cvoid}, uint32, uint32, uint32, uint16), tif, buf, x, y, z, s)
end

function TIFFComputeStrip(arg1, arg2, arg3)
    ccall((:TIFFComputeStrip, libtiff), uint32, (Ptr{TIFF}, uint32, uint16), arg1, arg2, arg3)
end

function TIFFNumberOfStrips(arg1)
    ccall((:TIFFNumberOfStrips, libtiff), uint32, (Ptr{TIFF},), arg1)
end

function TIFFReadEncodedStrip(tif, strip, buf, size)
    ccall((:TIFFReadEncodedStrip, libtiff), tmsize_t, (Ptr{TIFF}, uint32, Ptr{Cvoid}, tmsize_t), tif, strip, buf, size)
end

function TIFFReadRawStrip(tif, strip, buf, size)
    ccall((:TIFFReadRawStrip, libtiff), tmsize_t, (Ptr{TIFF}, uint32, Ptr{Cvoid}, tmsize_t), tif, strip, buf, size)
end

function TIFFReadEncodedTile(tif, tile, buf, size)
    ccall((:TIFFReadEncodedTile, libtiff), tmsize_t, (Ptr{TIFF}, uint32, Ptr{Cvoid}, tmsize_t), tif, tile, buf, size)
end

function TIFFReadRawTile(tif, tile, buf, size)
    ccall((:TIFFReadRawTile, libtiff), tmsize_t, (Ptr{TIFF}, uint32, Ptr{Cvoid}, tmsize_t), tif, tile, buf, size)
end

function TIFFWriteEncodedStrip(tif, strip, data, cc)
    ccall((:TIFFWriteEncodedStrip, libtiff), tmsize_t, (Ptr{TIFF}, uint32, Ptr{Cvoid}, tmsize_t), tif, strip, data, cc)
end

function TIFFWriteRawStrip(tif, strip, data, cc)
    ccall((:TIFFWriteRawStrip, libtiff), tmsize_t, (Ptr{TIFF}, uint32, Ptr{Cvoid}, tmsize_t), tif, strip, data, cc)
end

function TIFFWriteEncodedTile(tif, tile, data, cc)
    ccall((:TIFFWriteEncodedTile, libtiff), tmsize_t, (Ptr{TIFF}, uint32, Ptr{Cvoid}, tmsize_t), tif, tile, data, cc)
end

function TIFFWriteRawTile(tif, tile, data, cc)
    ccall((:TIFFWriteRawTile, libtiff), tmsize_t, (Ptr{TIFF}, uint32, Ptr{Cvoid}, tmsize_t), tif, tile, data, cc)
end

function TIFFDataWidth(arg1)
    ccall((:TIFFDataWidth, libtiff), Cint, (TIFFDataType,), arg1)
end

function TIFFSetWriteOffset(tif, off)
    ccall((:TIFFSetWriteOffset, libtiff), Cvoid, (Ptr{TIFF}, toff_t), tif, off)
end

function TIFFSwabShort(arg1)
    ccall((:TIFFSwabShort, libtiff), Cvoid, (Ptr{uint16},), arg1)
end

function TIFFSwabLong(arg1)
    ccall((:TIFFSwabLong, libtiff), Cvoid, (Ptr{uint32},), arg1)
end

function TIFFSwabLong8(arg1)
    ccall((:TIFFSwabLong8, libtiff), Cvoid, (Ptr{uint64},), arg1)
end

function TIFFSwabFloat(arg1)
    ccall((:TIFFSwabFloat, libtiff), Cvoid, (Ptr{Cfloat},), arg1)
end

function TIFFSwabDouble(arg1)
    ccall((:TIFFSwabDouble, libtiff), Cvoid, (Ptr{Cdouble},), arg1)
end

function TIFFSwabArrayOfShort(wp, n)
    ccall((:TIFFSwabArrayOfShort, libtiff), Cvoid, (Ptr{uint16}, tmsize_t), wp, n)
end

function TIFFSwabArrayOfTriples(tp, n)
    ccall((:TIFFSwabArrayOfTriples, libtiff), Cvoid, (Ptr{uint8}, tmsize_t), tp, n)
end

function TIFFSwabArrayOfLong(lp, n)
    ccall((:TIFFSwabArrayOfLong, libtiff), Cvoid, (Ptr{uint32}, tmsize_t), lp, n)
end

function TIFFSwabArrayOfLong8(lp, n)
    ccall((:TIFFSwabArrayOfLong8, libtiff), Cvoid, (Ptr{uint64}, tmsize_t), lp, n)
end

function TIFFSwabArrayOfFloat(fp, n)
    ccall((:TIFFSwabArrayOfFloat, libtiff), Cvoid, (Ptr{Cfloat}, tmsize_t), fp, n)
end

function TIFFSwabArrayOfDouble(dp, n)
    ccall((:TIFFSwabArrayOfDouble, libtiff), Cvoid, (Ptr{Cdouble}, tmsize_t), dp, n)
end

function TIFFReverseBits(cp, n)
    ccall((:TIFFReverseBits, libtiff), Cvoid, (Ptr{uint8}, tmsize_t), cp, n)
end

function TIFFGetBitRevTable(arg1)
    ccall((:TIFFGetBitRevTable, libtiff), Ptr{Cuchar}, (Cint,), arg1)
end

function LogL16toY(arg1)
    ccall((:LogL16toY, libtiff), Cdouble, (Cint,), arg1)
end

function LogL10toY(arg1)
    ccall((:LogL10toY, libtiff), Cdouble, (Cint,), arg1)
end

function XYZtoRGB24(arg1, arg2)
    ccall((:XYZtoRGB24, libtiff), Cvoid, (Ptr{Cfloat}, Ptr{uint8}), arg1, arg2)
end

function uv_decode(arg1, arg2, arg3)
    ccall((:uv_decode, libtiff), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Cint), arg1, arg2, arg3)
end

function LogLuv24toXYZ(arg1, arg2)
    ccall((:LogLuv24toXYZ, libtiff), Cvoid, (uint32, Ptr{Cfloat}), arg1, arg2)
end

function LogLuv32toXYZ(arg1, arg2)
    ccall((:LogLuv32toXYZ, libtiff), Cvoid, (uint32, Ptr{Cfloat}), arg1, arg2)
end

function LogL16fromY(arg1, arg2)
    ccall((:LogL16fromY, libtiff), Cint, (Cdouble, Cint), arg1, arg2)
end

function LogL10fromY(arg1, arg2)
    ccall((:LogL10fromY, libtiff), Cint, (Cdouble, Cint), arg1, arg2)
end

function uv_encode(arg1, arg2, arg3)
    ccall((:uv_encode, libtiff), Cint, (Cdouble, Cdouble, Cint), arg1, arg2, arg3)
end

function LogLuv24fromXYZ(arg1, arg2)
    ccall((:LogLuv24fromXYZ, libtiff), uint32, (Ptr{Cfloat}, Cint), arg1, arg2)
end

function LogLuv32fromXYZ(arg1, arg2)
    ccall((:LogLuv32fromXYZ, libtiff), uint32, (Ptr{Cfloat}, Cint), arg1, arg2)
end

function TIFFCIELabToRGBInit(arg1, arg2, arg3)
    ccall((:TIFFCIELabToRGBInit, libtiff), Cint, (Ptr{TIFFCIELabToRGB}, Ptr{TIFFDisplay}, Ptr{Cfloat}), arg1, arg2, arg3)
end

function TIFFCIELabToXYZ(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    ccall((:TIFFCIELabToXYZ, libtiff), Cvoid, (Ptr{TIFFCIELabToRGB}, uint32, int32, int32, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function TIFFXYZToRGB(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    ccall((:TIFFXYZToRGB, libtiff), Cvoid, (Ptr{TIFFCIELabToRGB}, Cfloat, Cfloat, Cfloat, Ptr{uint32}, Ptr{uint32}, Ptr{uint32}), arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function TIFFYCbCrToRGBInit(arg1, arg2, arg3)
    ccall((:TIFFYCbCrToRGBInit, libtiff), Cint, (Ptr{TIFFYCbCrToRGB}, Ptr{Cfloat}, Ptr{Cfloat}), arg1, arg2, arg3)
end

function TIFFYCbCrtoRGB(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    ccall((:TIFFYCbCrtoRGB, libtiff), Cvoid, (Ptr{TIFFYCbCrToRGB}, uint32, int32, int32, Ptr{uint32}, Ptr{uint32}, Ptr{uint32}), arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function TIFFMergeFieldInfo(arg1, arg2, arg3)
    ccall((:TIFFMergeFieldInfo, libtiff), Cint, (Ptr{TIFF}, Ptr{TIFFFieldInfo}, uint32), arg1, arg2, arg3)
end
# Julia wrapper for header: tiffvers.h
# Automatically generated using Clang.jl

