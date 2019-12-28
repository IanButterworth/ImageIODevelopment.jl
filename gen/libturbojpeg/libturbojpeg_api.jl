# Julia wrapper for header: jconfig.h
# Automatically generated using Clang.jl

# Julia wrapper for header: jmorecfg.h
# Automatically generated using Clang.jl

# Julia wrapper for header: jerror.h
# Automatically generated using Clang.jl

# Julia wrapper for header: jpeglib.h
# Automatically generated using Clang.jl


function jpeg_std_error(err)
    ccall((:jpeg_std_error, libturbojpeg), Ptr{jpeg_error_mgr}, (Ptr{jpeg_error_mgr},), err)
end

function jpeg_CreateCompress(cinfo, version, structsize)
    ccall((:jpeg_CreateCompress, libturbojpeg), Cvoid, (j_compress_ptr, Cint, Cint), cinfo, version, structsize)
end

function jpeg_CreateDecompress(cinfo, version, structsize)
    ccall((:jpeg_CreateDecompress, libturbojpeg), Cvoid, (j_decompress_ptr, Cint, Cint), cinfo, version, structsize)
end

function jpeg_destroy_compress(cinfo)
    ccall((:jpeg_destroy_compress, libturbojpeg), Cvoid, (j_compress_ptr,), cinfo)
end

function jpeg_destroy_decompress(cinfo)
    ccall((:jpeg_destroy_decompress, libturbojpeg), Cvoid, (j_decompress_ptr,), cinfo)
end

function jpeg_stdio_dest(cinfo, outfile)
    ccall((:jpeg_stdio_dest, libturbojpeg), Cvoid, (j_compress_ptr, Ptr{Cint}), cinfo, outfile)
end

function jpeg_stdio_src(cinfo, infile)
    ccall((:jpeg_stdio_src, libturbojpeg), Cvoid, (j_decompress_ptr, Ptr{Cint}), cinfo, infile)
end

function jpeg_mem_dest(cinfo, outbuffer, outsize)
    ccall((:jpeg_mem_dest, libturbojpeg), Cvoid, (j_compress_ptr, Ptr{Ptr{Cuchar}}, Ptr{Culong}), cinfo, outbuffer, outsize)
end

function jpeg_mem_src(cinfo, inbuffer, insize)
    ccall((:jpeg_mem_src, libturbojpeg), Cvoid, (j_decompress_ptr, Ptr{Cuchar}, Culong), cinfo, inbuffer, insize)
end

function jpeg_set_defaults(cinfo)
    ccall((:jpeg_set_defaults, libturbojpeg), Cvoid, (j_compress_ptr,), cinfo)
end

function jpeg_set_colorspace(cinfo, colorspace)
    ccall((:jpeg_set_colorspace, libturbojpeg), Cvoid, (j_compress_ptr, J_COLOR_SPACE), cinfo, colorspace)
end

function jpeg_default_colorspace(cinfo)
    ccall((:jpeg_default_colorspace, libturbojpeg), Cvoid, (j_compress_ptr,), cinfo)
end

function jpeg_set_quality(cinfo, quality, force_baseline)
    ccall((:jpeg_set_quality, libturbojpeg), Cvoid, (j_compress_ptr, Cint, boolean), cinfo, quality, force_baseline)
end

function jpeg_set_linear_quality(cinfo, scale_factor, force_baseline)
    ccall((:jpeg_set_linear_quality, libturbojpeg), Cvoid, (j_compress_ptr, Cint, boolean), cinfo, scale_factor, force_baseline)
end

function jpeg_add_quant_table(cinfo, which_tbl, basic_table, scale_factor, force_baseline)
    ccall((:jpeg_add_quant_table, libturbojpeg), Cvoid, (j_compress_ptr, Cint, Ptr{UInt32}, Cint, boolean), cinfo, which_tbl, basic_table, scale_factor, force_baseline)
end

function jpeg_quality_scaling(quality)
    ccall((:jpeg_quality_scaling, libturbojpeg), Cint, (Cint,), quality)
end

function jpeg_simple_progression(cinfo)
    ccall((:jpeg_simple_progression, libturbojpeg), Cvoid, (j_compress_ptr,), cinfo)
end

function jpeg_suppress_tables(cinfo, suppress)
    ccall((:jpeg_suppress_tables, libturbojpeg), Cvoid, (j_compress_ptr, boolean), cinfo, suppress)
end

function jpeg_alloc_quant_table(cinfo)
    ccall((:jpeg_alloc_quant_table, libturbojpeg), Ptr{JQUANT_TBL}, (j_common_ptr,), cinfo)
end

function jpeg_alloc_huff_table(cinfo)
    ccall((:jpeg_alloc_huff_table, libturbojpeg), Ptr{JHUFF_TBL}, (j_common_ptr,), cinfo)
end

function jpeg_start_compress(cinfo, write_all_tables)
    ccall((:jpeg_start_compress, libturbojpeg), Cvoid, (j_compress_ptr, boolean), cinfo, write_all_tables)
end

function jpeg_write_scanlines(cinfo, scanlines, num_lines)
    ccall((:jpeg_write_scanlines, libturbojpeg), JDIMENSION, (j_compress_ptr, JSAMPARRAY, JDIMENSION), cinfo, scanlines, num_lines)
end

function jpeg_finish_compress(cinfo)
    ccall((:jpeg_finish_compress, libturbojpeg), Cvoid, (j_compress_ptr,), cinfo)
end

function jpeg_write_raw_data(cinfo, data, num_lines)
    ccall((:jpeg_write_raw_data, libturbojpeg), JDIMENSION, (j_compress_ptr, JSAMPIMAGE, JDIMENSION), cinfo, data, num_lines)
end

function jpeg_write_marker(cinfo, marker, dataptr, datalen)
    ccall((:jpeg_write_marker, libturbojpeg), Cvoid, (j_compress_ptr, Cint, Ptr{JOCTET}, UInt32), cinfo, marker, dataptr, datalen)
end

function jpeg_write_m_header(cinfo, marker, datalen)
    ccall((:jpeg_write_m_header, libturbojpeg), Cvoid, (j_compress_ptr, Cint, UInt32), cinfo, marker, datalen)
end

function jpeg_write_m_byte(cinfo, val)
    ccall((:jpeg_write_m_byte, libturbojpeg), Cvoid, (j_compress_ptr, Cint), cinfo, val)
end

function jpeg_write_tables(cinfo)
    ccall((:jpeg_write_tables, libturbojpeg), Cvoid, (j_compress_ptr,), cinfo)
end

function jpeg_write_icc_profile(cinfo, icc_data_ptr, icc_data_len)
    ccall((:jpeg_write_icc_profile, libturbojpeg), Cvoid, (j_compress_ptr, Ptr{JOCTET}, UInt32), cinfo, icc_data_ptr, icc_data_len)
end

function jpeg_read_header(cinfo, require_image)
    ccall((:jpeg_read_header, libturbojpeg), Cint, (j_decompress_ptr, boolean), cinfo, require_image)
end

function jpeg_start_decompress(cinfo)
    ccall((:jpeg_start_decompress, libturbojpeg), boolean, (j_decompress_ptr,), cinfo)
end

function jpeg_read_scanlines(cinfo, scanlines, max_lines)
    ccall((:jpeg_read_scanlines, libturbojpeg), JDIMENSION, (j_decompress_ptr, JSAMPARRAY, JDIMENSION), cinfo, scanlines, max_lines)
end

function jpeg_skip_scanlines(cinfo, num_lines)
    ccall((:jpeg_skip_scanlines, libturbojpeg), JDIMENSION, (j_decompress_ptr, JDIMENSION), cinfo, num_lines)
end

function jpeg_crop_scanline(cinfo, xoffset, width)
    ccall((:jpeg_crop_scanline, libturbojpeg), Cvoid, (j_decompress_ptr, Ptr{JDIMENSION}, Ptr{JDIMENSION}), cinfo, xoffset, width)
end

function jpeg_finish_decompress(cinfo)
    ccall((:jpeg_finish_decompress, libturbojpeg), boolean, (j_decompress_ptr,), cinfo)
end

function jpeg_read_raw_data(cinfo, data, max_lines)
    ccall((:jpeg_read_raw_data, libturbojpeg), JDIMENSION, (j_decompress_ptr, JSAMPIMAGE, JDIMENSION), cinfo, data, max_lines)
end

function jpeg_has_multiple_scans(cinfo)
    ccall((:jpeg_has_multiple_scans, libturbojpeg), boolean, (j_decompress_ptr,), cinfo)
end

function jpeg_start_output(cinfo, scan_number)
    ccall((:jpeg_start_output, libturbojpeg), boolean, (j_decompress_ptr, Cint), cinfo, scan_number)
end

function jpeg_finish_output(cinfo)
    ccall((:jpeg_finish_output, libturbojpeg), boolean, (j_decompress_ptr,), cinfo)
end

function jpeg_input_complete(cinfo)
    ccall((:jpeg_input_complete, libturbojpeg), boolean, (j_decompress_ptr,), cinfo)
end

function jpeg_new_colormap(cinfo)
    ccall((:jpeg_new_colormap, libturbojpeg), Cvoid, (j_decompress_ptr,), cinfo)
end

function jpeg_consume_input(cinfo)
    ccall((:jpeg_consume_input, libturbojpeg), Cint, (j_decompress_ptr,), cinfo)
end

function jpeg_calc_output_dimensions(cinfo)
    ccall((:jpeg_calc_output_dimensions, libturbojpeg), Cvoid, (j_decompress_ptr,), cinfo)
end

function jpeg_save_markers(cinfo, marker_code, length_limit)
    ccall((:jpeg_save_markers, libturbojpeg), Cvoid, (j_decompress_ptr, Cint, UInt32), cinfo, marker_code, length_limit)
end

function jpeg_set_marker_processor(cinfo, marker_code, routine)
    ccall((:jpeg_set_marker_processor, libturbojpeg), Cvoid, (j_decompress_ptr, Cint, jpeg_marker_parser_method), cinfo, marker_code, routine)
end

function jpeg_read_coefficients(cinfo)
    ccall((:jpeg_read_coefficients, libturbojpeg), Ptr{jvirt_barray_ptr}, (j_decompress_ptr,), cinfo)
end

function jpeg_write_coefficients(cinfo, coef_arrays)
    ccall((:jpeg_write_coefficients, libturbojpeg), Cvoid, (j_compress_ptr, Ptr{jvirt_barray_ptr}), cinfo, coef_arrays)
end

function jpeg_copy_critical_parameters(srcinfo, dstinfo)
    ccall((:jpeg_copy_critical_parameters, libturbojpeg), Cvoid, (j_decompress_ptr, j_compress_ptr), srcinfo, dstinfo)
end

function jpeg_abort_compress(cinfo)
    ccall((:jpeg_abort_compress, libturbojpeg), Cvoid, (j_compress_ptr,), cinfo)
end

function jpeg_abort_decompress(cinfo)
    ccall((:jpeg_abort_decompress, libturbojpeg), Cvoid, (j_decompress_ptr,), cinfo)
end

function jpeg_abort(cinfo)
    ccall((:jpeg_abort, libturbojpeg), Cvoid, (j_common_ptr,), cinfo)
end

function jpeg_destroy(cinfo)
    ccall((:jpeg_destroy, libturbojpeg), Cvoid, (j_common_ptr,), cinfo)
end

function jpeg_resync_to_restart(cinfo, desired)
    ccall((:jpeg_resync_to_restart, libturbojpeg), boolean, (j_decompress_ptr, Cint), cinfo, desired)
end

function jpeg_read_icc_profile(cinfo, icc_data_ptr, icc_data_len)
    ccall((:jpeg_read_icc_profile, libturbojpeg), boolean, (j_decompress_ptr, Ptr{Ptr{JOCTET}}, Ptr{UInt32}), cinfo, icc_data_ptr, icc_data_len)
end
# Julia wrapper for header: turbojpeg.h
# Automatically generated using Clang.jl


function tjInitCompress()
    ccall((:tjInitCompress, libturbojpeg), tjhandle, ())
end

function tjCompress2(handle, srcBuf, width, pitch, height, pixelFormat, jpegBuf, jpegSize, jpegSubsamp, jpegQual, flags)
    ccall((:tjCompress2, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Ptr{Ptr{Cuchar}}, Ptr{Culong}, Cint, Cint, Cint), handle, srcBuf, width, pitch, height, pixelFormat, jpegBuf, jpegSize, jpegSubsamp, jpegQual, flags)
end

function tjCompressFromYUV(handle, srcBuf, width, pad, height, subsamp, jpegBuf, jpegSize, jpegQual, flags)
    ccall((:tjCompressFromYUV, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Ptr{Ptr{Cuchar}}, Ptr{Culong}, Cint, Cint), handle, srcBuf, width, pad, height, subsamp, jpegBuf, jpegSize, jpegQual, flags)
end

function tjCompressFromYUVPlanes(handle, srcPlanes, width, strides, height, subsamp, jpegBuf, jpegSize, jpegQual, flags)
    ccall((:tjCompressFromYUVPlanes, libturbojpeg), Cint, (tjhandle, Ptr{Ptr{Cuchar}}, Cint, Ptr{Cint}, Cint, Cint, Ptr{Ptr{Cuchar}}, Ptr{Culong}, Cint, Cint), handle, srcPlanes, width, strides, height, subsamp, jpegBuf, jpegSize, jpegQual, flags)
end

function tjBufSize(width, height, jpegSubsamp)
    ccall((:tjBufSize, libturbojpeg), Culong, (Cint, Cint, Cint), width, height, jpegSubsamp)
end

function tjBufSizeYUV2(width, pad, height, subsamp)
    ccall((:tjBufSizeYUV2, libturbojpeg), Culong, (Cint, Cint, Cint, Cint), width, pad, height, subsamp)
end

function tjPlaneSizeYUV(componentID, width, stride, height, subsamp)
    ccall((:tjPlaneSizeYUV, libturbojpeg), Culong, (Cint, Cint, Cint, Cint, Cint), componentID, width, stride, height, subsamp)
end

function tjPlaneWidth(componentID, width, subsamp)
    ccall((:tjPlaneWidth, libturbojpeg), Cint, (Cint, Cint, Cint), componentID, width, subsamp)
end

function tjPlaneHeight(componentID, height, subsamp)
    ccall((:tjPlaneHeight, libturbojpeg), Cint, (Cint, Cint, Cint), componentID, height, subsamp)
end

function tjEncodeYUV3(handle, srcBuf, width, pitch, height, pixelFormat, dstBuf, pad, subsamp, flags)
    ccall((:tjEncodeYUV3, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Ptr{Cuchar}, Cint, Cint, Cint), handle, srcBuf, width, pitch, height, pixelFormat, dstBuf, pad, subsamp, flags)
end

function tjEncodeYUVPlanes(handle, srcBuf, width, pitch, height, pixelFormat, dstPlanes, strides, subsamp, flags)
    ccall((:tjEncodeYUVPlanes, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Ptr{Ptr{Cuchar}}, Ptr{Cint}, Cint, Cint), handle, srcBuf, width, pitch, height, pixelFormat, dstPlanes, strides, subsamp, flags)
end

function tjInitDecompress()
    ccall((:tjInitDecompress, libturbojpeg), tjhandle, ())
end

function tjDecompressHeader3(handle, jpegBuf, jpegSize, width, height, jpegSubsamp, jpegColorspace)
    ccall((:tjDecompressHeader3, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Culong, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), handle, jpegBuf, jpegSize, width, height, jpegSubsamp, jpegColorspace)
end

function tjGetScalingFactors(numscalingfactors)
    ccall((:tjGetScalingFactors, libturbojpeg), Ptr{tjscalingfactor}, (Ptr{Cint},), numscalingfactors)
end

function tjDecompress2(handle, jpegBuf, jpegSize, dstBuf, width, pitch, height, pixelFormat, flags)
    ccall((:tjDecompress2, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Culong, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint), handle, jpegBuf, jpegSize, dstBuf, width, pitch, height, pixelFormat, flags)
end

function tjDecompressToYUV2(handle, jpegBuf, jpegSize, dstBuf, width, pad, height, flags)
    ccall((:tjDecompressToYUV2, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Culong, Ptr{Cuchar}, Cint, Cint, Cint, Cint), handle, jpegBuf, jpegSize, dstBuf, width, pad, height, flags)
end

function tjDecompressToYUVPlanes(handle, jpegBuf, jpegSize, dstPlanes, width, strides, height, flags)
    ccall((:tjDecompressToYUVPlanes, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Culong, Ptr{Ptr{Cuchar}}, Cint, Ptr{Cint}, Cint, Cint), handle, jpegBuf, jpegSize, dstPlanes, width, strides, height, flags)
end

function tjDecodeYUV(handle, srcBuf, pad, subsamp, dstBuf, width, pitch, height, pixelFormat, flags)
    ccall((:tjDecodeYUV, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Cint, Cint, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint), handle, srcBuf, pad, subsamp, dstBuf, width, pitch, height, pixelFormat, flags)
end

function tjDecodeYUVPlanes(handle, srcPlanes, strides, subsamp, dstBuf, width, pitch, height, pixelFormat, flags)
    ccall((:tjDecodeYUVPlanes, libturbojpeg), Cint, (tjhandle, Ptr{Ptr{Cuchar}}, Ptr{Cint}, Cint, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint), handle, srcPlanes, strides, subsamp, dstBuf, width, pitch, height, pixelFormat, flags)
end

function tjInitTransform()
    ccall((:tjInitTransform, libturbojpeg), tjhandle, ())
end

function tjTransform(handle, jpegBuf, jpegSize, n, dstBufs, dstSizes, transforms, flags)
    ccall((:tjTransform, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Culong, Cint, Ptr{Ptr{Cuchar}}, Ptr{Culong}, Ptr{tjtransform}, Cint), handle, jpegBuf, jpegSize, n, dstBufs, dstSizes, transforms, flags)
end

function tjDestroy(handle)
    ccall((:tjDestroy, libturbojpeg), Cint, (tjhandle,), handle)
end

function tjAlloc(bytes)
    ccall((:tjAlloc, libturbojpeg), Ptr{Cuchar}, (Cint,), bytes)
end

function tjLoadImage(filename, width, align, height, pixelFormat, flags)
    ccall((:tjLoadImage, libturbojpeg), Ptr{Cuchar}, (Cstring, Ptr{Cint}, Cint, Ptr{Cint}, Ptr{Cint}, Cint), filename, width, align, height, pixelFormat, flags)
end

function tjSaveImage(filename, buffer, width, pitch, height, pixelFormat, flags)
    ccall((:tjSaveImage, libturbojpeg), Cint, (Cstring, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint), filename, buffer, width, pitch, height, pixelFormat, flags)
end

function tjFree(buffer)
    ccall((:tjFree, libturbojpeg), Cvoid, (Ptr{Cuchar},), buffer)
end

function tjGetErrorStr2(handle)
    ccall((:tjGetErrorStr2, libturbojpeg), Cstring, (tjhandle,), handle)
end

function tjGetErrorCode(handle)
    ccall((:tjGetErrorCode, libturbojpeg), Cint, (tjhandle,), handle)
end

function TJBUFSIZE(width, height)
    ccall((:TJBUFSIZE, libturbojpeg), Culong, (Cint, Cint), width, height)
end

function TJBUFSIZEYUV(width, height, jpegSubsamp)
    ccall((:TJBUFSIZEYUV, libturbojpeg), Culong, (Cint, Cint, Cint), width, height, jpegSubsamp)
end

function tjBufSizeYUV(width, height, subsamp)
    ccall((:tjBufSizeYUV, libturbojpeg), Culong, (Cint, Cint, Cint), width, height, subsamp)
end

function tjCompress(handle, srcBuf, width, pitch, height, pixelSize, dstBuf, compressedSize, jpegSubsamp, jpegQual, flags)
    ccall((:tjCompress, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Ptr{Cuchar}, Ptr{Culong}, Cint, Cint, Cint), handle, srcBuf, width, pitch, height, pixelSize, dstBuf, compressedSize, jpegSubsamp, jpegQual, flags)
end

function tjEncodeYUV(handle, srcBuf, width, pitch, height, pixelSize, dstBuf, subsamp, flags)
    ccall((:tjEncodeYUV, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Ptr{Cuchar}, Cint, Cint), handle, srcBuf, width, pitch, height, pixelSize, dstBuf, subsamp, flags)
end

function tjEncodeYUV2(handle, srcBuf, width, pitch, height, pixelFormat, dstBuf, subsamp, flags)
    ccall((:tjEncodeYUV2, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Ptr{Cuchar}, Cint, Cint), handle, srcBuf, width, pitch, height, pixelFormat, dstBuf, subsamp, flags)
end

function tjDecompressHeader(handle, jpegBuf, jpegSize, width, height)
    ccall((:tjDecompressHeader, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Culong, Ptr{Cint}, Ptr{Cint}), handle, jpegBuf, jpegSize, width, height)
end

function tjDecompressHeader2(handle, jpegBuf, jpegSize, width, height, jpegSubsamp)
    ccall((:tjDecompressHeader2, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Culong, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), handle, jpegBuf, jpegSize, width, height, jpegSubsamp)
end

function tjDecompress(handle, jpegBuf, jpegSize, dstBuf, width, pitch, height, pixelSize, flags)
    ccall((:tjDecompress, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Culong, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint), handle, jpegBuf, jpegSize, dstBuf, width, pitch, height, pixelSize, flags)
end

function tjDecompressToYUV(handle, jpegBuf, jpegSize, dstBuf, flags)
    ccall((:tjDecompressToYUV, libturbojpeg), Cint, (tjhandle, Ptr{Cuchar}, Culong, Ptr{Cuchar}, Cint), handle, jpegBuf, jpegSize, dstBuf, flags)
end

function tjGetErrorStr()
    ccall((:tjGetErrorStr, libturbojpeg), Cstring, ())
end
