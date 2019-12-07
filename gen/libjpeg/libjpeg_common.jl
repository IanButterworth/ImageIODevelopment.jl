# Automatically generated using Clang.jl


const JPEG_LIB_VERSION = 62
const LIBJPEG_TURBO_VERSION = ".0."
const LIBJPEG_TURBO_VERSION_NUMBER = 2000001
const C_ARITH_CODING_SUPPORTED = 1
const D_ARITH_CODING_SUPPORTED = 1
const MEM_SRCDST_SUPPORTED = 1
const WITH_SIMD = 1
const BITS_IN_JSAMPLE = 8
const HAVE_LOCALE_H = 1
const HAVE_STDDEF_H = 1
const HAVE_STDLIB_H = 1
const NEED_SYS_TYPES_H = 1
const HAVE_UNSIGNED_CHAR = 1
const HAVE_UNSIGNED_SHORT = 1
const MAX_COMPONENTS = 10

# Skipping MacroDefinition: GETJSAMPLE ( value ) ( ( int ) ( value ) & 0xFF )

const MAXJSAMPLE = 255
const CENTERJSAMPLE = 128

# Skipping MacroDefinition: GETJOCTET ( value ) ( ( value ) & 0xFF )

const JPEG_MAX_DIMENSION = Int32(65500)

# Skipping MacroDefinition: METHODDEF ( type ) static type
# Skipping MacroDefinition: LOCAL ( type ) static type
# Skipping MacroDefinition: GLOBAL ( type ) type
# Skipping MacroDefinition: EXTERN ( type ) extern type
# Skipping MacroDefinition: JMETHOD ( type , methodname , arglist ) type ( * methodname ) arglist

const FALSE = 0
const TRUE = 1
const RGB_RED = 0
const RGB_GREEN = 1
const RGB_BLUE = 2
const RGB_PIXELSIZE = 3
const JPEG_NUMCS = 17
const EXT_RGB_RED = 0
const EXT_RGB_GREEN = 1
const EXT_RGB_BLUE = 2
const EXT_RGB_PIXELSIZE = 3
const EXT_RGBX_RED = 0
const EXT_RGBX_GREEN = 1
const EXT_RGBX_BLUE = 2
const EXT_RGBX_PIXELSIZE = 4
const EXT_BGR_RED = 2
const EXT_BGR_GREEN = 1
const EXT_BGR_BLUE = 0
const EXT_BGR_PIXELSIZE = 3
const EXT_BGRX_RED = 2
const EXT_BGRX_GREEN = 1
const EXT_BGRX_BLUE = 0
const EXT_BGRX_PIXELSIZE = 4
const EXT_XBGR_RED = 3
const EXT_XBGR_GREEN = 2
const EXT_XBGR_BLUE = 1
const EXT_XBGR_PIXELSIZE = 4
const EXT_XRGB_RED = 1
const EXT_XRGB_GREEN = 2
const EXT_XRGB_BLUE = 3
const EXT_XRGB_PIXELSIZE = 4
const JSAMPLE = UInt8
const JCOEF = Int16
const JOCTET = UInt8
const UINT8 = Int16
const UINT16 = UInt32
const INT16 = Int16
const INT32 = Clong
const JDIMENSION = UInt32
const boolean = Cint
const DCTSIZE = 8
const DCTSIZE2 = 64
const NUM_QUANT_TBLS = 4
const NUM_HUFF_TBLS = 4
const NUM_ARITH_TBLS = 16
const MAX_COMPS_IN_SCAN = 4
const MAX_SAMP_FACTOR = 4
const C_MAX_BLOCKS_IN_MCU = 10
const D_MAX_BLOCKS_IN_MCU = 10
const JCS_EXTENSIONS = 1
const JCS_ALPHA_EXTENSIONS = 1

@cenum J_DCT_METHOD::UInt32 begin
    JDCT_ISLOW = 0
    JDCT_IFAST = 1
    JDCT_FLOAT = 2
end


const JDCT_DEFAULT = JDCT_ISLOW
const JDCT_FASTEST = JDCT_IFAST

# Skipping MacroDefinition: jpeg_common_fields struct jpeg_error_mgr * err ; /* Error handler module */ struct jpeg_memory_mgr * mem ; /* Memory manager module */ struct jpeg_progress_mgr * progress ; /* Progress monitor, or NULL if none */ void * client_data ; /* Available for use by application */ boolean is_decompressor ; /* So common code can tell which is which */ int global_state

const JMSG_LENGTH_MAX = 200
const JMSG_STR_PARM_MAX = 80
const JPOOL_PERMANENT = 0
const JPOOL_IMAGE = 1
const JPOOL_NUMPOOLS = 2

# Skipping MacroDefinition: JPP ( arglist ) arglist
# Skipping MacroDefinition: jpeg_create_compress ( cinfo ) jpeg_CreateCompress ( ( cinfo ) , JPEG_LIB_VERSION , ( size_t ) sizeof ( struct jpeg_compress_struct ) )
# Skipping MacroDefinition: jpeg_create_decompress ( cinfo ) jpeg_CreateDecompress ( ( cinfo ) , JPEG_LIB_VERSION , ( size_t ) sizeof ( struct jpeg_decompress_struct ) )

const JPEG_SUSPENDED = 0
const JPEG_HEADER_OK = 1
const JPEG_HEADER_TABLES_ONLY = 2
const JPEG_REACHED_SOS = 1
const JPEG_REACHED_EOI = 2
const JPEG_ROW_COMPLETED = 3
const JPEG_SCAN_COMPLETED = 4
const JPEG_RST0 = 0xd0
const JPEG_EOI = 0xd9
const JPEG_APP0 = 0xe0
const JPEG_COM = 0xfe
const JSAMPROW = Ptr{JSAMPLE}
const JSAMPARRAY = Ptr{JSAMPROW}
const JSAMPIMAGE = Ptr{JSAMPARRAY}
const JBLOCK = NTuple{64, JCOEF}
const JBLOCKROW = Ptr{JBLOCK}
const JBLOCKARRAY = Ptr{JBLOCKROW}
const JBLOCKIMAGE = Ptr{JBLOCKARRAY}
const JCOEFPTR = Ptr{JCOEF}

struct JQUANT_TBL
    quantval::NTuple{64, UINT16}
    sent_table::boolean
end

struct JHUFF_TBL
    bits::NTuple{17, UINT8}
    huffval::NTuple{256, UINT8}
    sent_table::boolean
end

struct jpeg_component_info
    component_id::Cint
    component_index::Cint
    h_samp_factor::Cint
    v_samp_factor::Cint
    quant_tbl_no::Cint
    dc_tbl_no::Cint
    ac_tbl_no::Cint
    width_in_blocks::JDIMENSION
    height_in_blocks::JDIMENSION
    DCT_scaled_size::Cint
    downsampled_width::JDIMENSION
    downsampled_height::JDIMENSION
    component_needed::boolean
    MCU_width::Cint
    MCU_height::Cint
    MCU_blocks::Cint
    MCU_sample_width::Cint
    last_col_width::Cint
    last_row_height::Cint
    quant_table::Ptr{JQUANT_TBL}
    dct_table::Ptr{Cvoid}
end

struct jpeg_scan_info
    comps_in_scan::Cint
    component_index::NTuple{4, Cint}
    Ss::Cint
    Se::Cint
    Ah::Cint
    Al::Cint
end

const jpeg_saved_marker_ptr = Ptr{jpeg_marker_struct}

struct jpeg_marker_struct
    next::jpeg_saved_marker_ptr
    marker::UINT8
    original_length::UInt32
    data_length::UInt32
    data::Ptr{JOCTET}
end

@cenum J_COLOR_SPACE::UInt32 begin
    JCS_UNKNOWN = 0
    JCS_GRAYSCALE = 1
    JCS_RGB = 2
    JCS_YCbCr = 3
    JCS_CMYK = 4
    JCS_YCCK = 5
    JCS_EXT_RGB = 6
    JCS_EXT_RGBX = 7
    JCS_EXT_BGR = 8
    JCS_EXT_BGRX = 9
    JCS_EXT_XBGR = 10
    JCS_EXT_XRGB = 11
    JCS_EXT_RGBA = 12
    JCS_EXT_BGRA = 13
    JCS_EXT_ABGR = 14
    JCS_EXT_ARGB = 15
    JCS_RGB565 = 16
end

@cenum J_DITHER_MODE::UInt32 begin
    JDITHER_NONE = 0
    JDITHER_ORDERED = 1
    JDITHER_FS = 2
end


struct ANONYMOUS1_msg_parm
    s::NTuple{80, UInt8}
end

struct jpeg_error_mgr
    error_exit::Ptr{Cvoid}
    emit_message::Ptr{Cvoid}
    output_message::Ptr{Cvoid}
    format_message::Ptr{Cvoid}
    reset_error_mgr::Ptr{Cvoid}
    msg_code::Cint
    msg_parm::ANONYMOUS1_msg_parm
    trace_level::Cint
    num_warnings::Clong
    jpeg_message_table::Ptr{Cstring}
    last_jpeg_message::Cint
    addon_message_table::Ptr{Cstring}
    first_addon_message::Cint
    last_addon_message::Cint
end

struct jpeg_memory_mgr
    alloc_small::Ptr{Cvoid}
    alloc_large::Ptr{Cvoid}
    alloc_sarray::Ptr{Cvoid}
    alloc_barray::Ptr{Cvoid}
    request_virt_sarray::Ptr{Cvoid}
    request_virt_barray::Ptr{Cvoid}
    realize_virt_arrays::Ptr{Cvoid}
    access_virt_sarray::Ptr{Cvoid}
    access_virt_barray::Ptr{Cvoid}
    free_pool::Ptr{Cvoid}
    self_destruct::Ptr{Cvoid}
    max_memory_to_use::Clong
    max_alloc_chunk::Clong
end

struct jpeg_progress_mgr
    progress_monitor::Ptr{Cvoid}
    pass_counter::Clong
    pass_limit::Clong
    completed_passes::Cint
    total_passes::Cint
end

struct jpeg_common_struct
    err::Ptr{jpeg_error_mgr}
    mem::Ptr{jpeg_memory_mgr}
    progress::Ptr{jpeg_progress_mgr}
    client_data::Ptr{Cvoid}
    is_decompressor::boolean
    global_state::Cint
end

const j_common_ptr = Ptr{jpeg_common_struct}

struct jpeg_destination_mgr
    next_output_byte::Ptr{JOCTET}
    free_in_buffer::Cint
    init_destination::Ptr{Cvoid}
    empty_output_buffer::Ptr{Cvoid}
    term_destination::Ptr{Cvoid}
end

struct jpeg_compress_struct
    err::Ptr{jpeg_error_mgr}
    mem::Ptr{jpeg_memory_mgr}
    progress::Ptr{jpeg_progress_mgr}
    client_data::Ptr{Cvoid}
    is_decompressor::boolean
    global_state::Cint
    dest::Ptr{jpeg_destination_mgr}
    image_width::JDIMENSION
    image_height::JDIMENSION
    input_components::Cint
    in_color_space::J_COLOR_SPACE
    input_gamma::Cdouble
    data_precision::Cint
    num_components::Cint
    jpeg_color_space::J_COLOR_SPACE
    comp_info::Ptr{jpeg_component_info}
    quant_tbl_ptrs::NTuple{4, Ptr{JQUANT_TBL}}
    dc_huff_tbl_ptrs::NTuple{4, Ptr{JHUFF_TBL}}
    ac_huff_tbl_ptrs::NTuple{4, Ptr{JHUFF_TBL}}
    arith_dc_L::NTuple{16, UINT8}
    arith_dc_U::NTuple{16, UINT8}
    arith_ac_K::NTuple{16, UINT8}
    num_scans::Cint
    scan_info::Ptr{jpeg_scan_info}
    raw_data_in::boolean
    arith_code::boolean
    optimize_coding::boolean
    CCIR601_sampling::boolean
    smoothing_factor::Cint
    dct_method::J_DCT_METHOD
    restart_interval::UInt32
    restart_in_rows::Cint
    write_JFIF_header::boolean
    JFIF_major_version::UINT8
    JFIF_minor_version::UINT8
    density_unit::UINT8
    X_density::UINT16
    Y_density::UINT16
    write_Adobe_marker::boolean
    next_scanline::JDIMENSION
    progressive_mode::boolean
    max_h_samp_factor::Cint
    max_v_samp_factor::Cint
    total_iMCU_rows::JDIMENSION
    comps_in_scan::Cint
    cur_comp_info::NTuple{4, Ptr{jpeg_component_info}}
    MCUs_per_row::JDIMENSION
    MCU_rows_in_scan::JDIMENSION
    blocks_in_MCU::Cint
    MCU_membership::NTuple{10, Cint}
    Ss::Cint
    Se::Cint
    Ah::Cint
    Al::Cint
    master::Ptr{jpeg_comp_master}
    main::Ptr{jpeg_c_main_controller}
    prep::Ptr{jpeg_c_prep_controller}
    coef::Ptr{jpeg_c_coef_controller}
    marker::Ptr{jpeg_marker_writer}
    cconvert::Ptr{jpeg_color_converter}
    downsample::Ptr{jpeg_downsampler}
    fdct::Ptr{jpeg_forward_dct}
    entropy::Ptr{jpeg_entropy_encoder}
    script_space::Ptr{jpeg_scan_info}
    script_space_size::Cint
end

const j_compress_ptr = Ptr{jpeg_compress_struct}

struct jpeg_source_mgr
    next_input_byte::Ptr{JOCTET}
    bytes_in_buffer::Cint
    init_source::Ptr{Cvoid}
    fill_input_buffer::Ptr{Cvoid}
    skip_input_data::Ptr{Cvoid}
    resync_to_restart::Ptr{Cvoid}
    term_source::Ptr{Cvoid}
end

struct jpeg_decompress_struct
    err::Ptr{jpeg_error_mgr}
    mem::Ptr{jpeg_memory_mgr}
    progress::Ptr{jpeg_progress_mgr}
    client_data::Ptr{Cvoid}
    is_decompressor::boolean
    global_state::Cint
    src::Ptr{jpeg_source_mgr}
    image_width::JDIMENSION
    image_height::JDIMENSION
    num_components::Cint
    jpeg_color_space::J_COLOR_SPACE
    out_color_space::J_COLOR_SPACE
    scale_num::UInt32
    scale_denom::UInt32
    output_gamma::Cdouble
    buffered_image::boolean
    raw_data_out::boolean
    dct_method::J_DCT_METHOD
    do_fancy_upsampling::boolean
    do_block_smoothing::boolean
    quantize_colors::boolean
    dither_mode::J_DITHER_MODE
    two_pass_quantize::boolean
    desired_number_of_colors::Cint
    enable_1pass_quant::boolean
    enable_external_quant::boolean
    enable_2pass_quant::boolean
    output_width::JDIMENSION
    output_height::JDIMENSION
    out_color_components::Cint
    output_components::Cint
    rec_outbuf_height::Cint
    actual_number_of_colors::Cint
    colormap::JSAMPARRAY
    output_scanline::JDIMENSION
    input_scan_number::Cint
    input_iMCU_row::JDIMENSION
    output_scan_number::Cint
    output_iMCU_row::JDIMENSION
    coef_bits::Ptr{Cvoid}
    quant_tbl_ptrs::NTuple{4, Ptr{JQUANT_TBL}}
    dc_huff_tbl_ptrs::NTuple{4, Ptr{JHUFF_TBL}}
    ac_huff_tbl_ptrs::NTuple{4, Ptr{JHUFF_TBL}}
    data_precision::Cint
    comp_info::Ptr{jpeg_component_info}
    progressive_mode::boolean
    arith_code::boolean
    arith_dc_L::NTuple{16, UINT8}
    arith_dc_U::NTuple{16, UINT8}
    arith_ac_K::NTuple{16, UINT8}
    restart_interval::UInt32
    saw_JFIF_marker::boolean
    JFIF_major_version::UINT8
    JFIF_minor_version::UINT8
    density_unit::UINT8
    X_density::UINT16
    Y_density::UINT16
    saw_Adobe_marker::boolean
    Adobe_transform::UINT8
    CCIR601_sampling::boolean
    marker_list::jpeg_saved_marker_ptr
    max_h_samp_factor::Cint
    max_v_samp_factor::Cint
    min_DCT_scaled_size::Cint
    total_iMCU_rows::JDIMENSION
    sample_range_limit::Ptr{JSAMPLE}
    comps_in_scan::Cint
    cur_comp_info::NTuple{4, Ptr{jpeg_component_info}}
    MCUs_per_row::JDIMENSION
    MCU_rows_in_scan::JDIMENSION
    blocks_in_MCU::Cint
    MCU_membership::NTuple{10, Cint}
    Ss::Cint
    Se::Cint
    Ah::Cint
    Al::Cint
    unread_marker::Cint
    master::Ptr{jpeg_decomp_master}
    main::Ptr{jpeg_d_main_controller}
    coef::Ptr{jpeg_d_coef_controller}
    post::Ptr{jpeg_d_post_controller}
    inputctl::Ptr{jpeg_input_controller}
    marker::Ptr{jpeg_marker_reader}
    entropy::Ptr{jpeg_entropy_decoder}
    idct::Ptr{jpeg_inverse_dct}
    upsample::Ptr{jpeg_upsampler}
    cconvert::Ptr{jpeg_color_deconverter}
    cquantize::Ptr{jpeg_color_quantizer}
end

const j_decompress_ptr = Ptr{jpeg_decompress_struct}
const jvirt_sarray_control = Cvoid
const jvirt_sarray_ptr = Ptr{jvirt_sarray_control}
const jvirt_barray_control = Cvoid
const jvirt_barray_ptr = Ptr{jvirt_barray_control}
const jpeg_marker_parser_method = Ptr{Cvoid}
const TJ_NUMSAMP = 6
const TJ_NUMPF = 12
const TJ_NUMCS = 5
const TJFLAG_BOTTOMUP = 2
const TJFLAG_FASTUPSAMPLE = 256
const TJFLAG_NOREALLOC = 1024
const TJFLAG_FASTDCT = 2048
const TJFLAG_ACCURATEDCT = 4096
const TJFLAG_STOPONWARNING = 8192
const TJFLAG_PROGRESSIVE = 16384
const TJ_NUMERR = 2
const TJ_NUMXOP = 8
const TJXOPT_PERFECT = 1
const TJXOPT_TRIM = 2
const TJXOPT_CROP = 4
const TJXOPT_GRAY = 8
const TJXOPT_NOOUTPUT = 16
const TJXOPT_PROGRESSIVE = 32
const TJXOPT_COPYNONE = 64

# Skipping MacroDefinition: TJPAD ( width ) ( ( ( width ) + 3 ) & ( ~ 3 ) )
# Skipping MacroDefinition: TJSCALED ( dimension , scalingFactor ) ( ( dimension * scalingFactor . num + scalingFactor . denom - 1 ) / scalingFactor . denom )

const TJFLAG_FORCEMMX = 8
const TJFLAG_FORCESSE = 16
const TJFLAG_FORCESSE2 = 32
const TJFLAG_FORCESSE3 = 128
const NUMSUBOPT = TJ_NUMSAMP

@cenum TJSAMP::UInt32 begin
    TJSAMP_444 = 0
    TJSAMP_422 = 1
    TJSAMP_420 = 2
    TJSAMP_GRAY = 3
    TJSAMP_440 = 4
    TJSAMP_411 = 5
end


const TJ_444 = TJSAMP_444
const TJ_422 = TJSAMP_422
const TJ_420 = TJSAMP_420
const TJ_411 = TJSAMP_420
const TJ_GRAYSCALE = TJSAMP_GRAY
const TJ_BGR = 1
const TJ_BOTTOMUP = TJFLAG_BOTTOMUP
const TJ_FORCEMMX = TJFLAG_FORCEMMX
const TJ_FORCESSE = TJFLAG_FORCESSE
const TJ_FORCESSE2 = TJFLAG_FORCESSE2
const TJ_ALPHAFIRST = 64
const TJ_FORCESSE3 = TJFLAG_FORCESSE3
const TJ_FASTUPSAMPLE = TJFLAG_FASTUPSAMPLE
const TJ_YUV = 512

@cenum TJPF::Int32 begin
    TJPF_RGB = 0
    TJPF_BGR = 1
    TJPF_RGBX = 2
    TJPF_BGRX = 3
    TJPF_XBGR = 4
    TJPF_XRGB = 5
    TJPF_GRAY = 6
    TJPF_RGBA = 7
    TJPF_BGRA = 8
    TJPF_ABGR = 9
    TJPF_ARGB = 10
    TJPF_CMYK = 11
    TJPF_UNKNOWN = -1
end

@cenum TJCS::UInt32 begin
    TJCS_RGB = 0
    TJCS_YCbCr = 1
    TJCS_GRAY = 2
    TJCS_CMYK = 3
    TJCS_YCCK = 4
end

@cenum TJERR::UInt32 begin
    TJERR_WARNING = 0
    TJERR_FATAL = 1
end

@cenum TJXOP::UInt32 begin
    TJXOP_NONE = 0
    TJXOP_HFLIP = 1
    TJXOP_VFLIP = 2
    TJXOP_TRANSPOSE = 3
    TJXOP_TRANSVERSE = 4
    TJXOP_ROT90 = 5
    TJXOP_ROT180 = 6
    TJXOP_ROT270 = 7
end


struct tjscalingfactor
    num::Cint
    denom::Cint
end

struct tjregion
    x::Cint
    y::Cint
    w::Cint
    h::Cint
end

struct tjtransform
    r::tjregion
    op::Cint
    options::Cint
    data::Ptr{Cvoid}
    customFilter::Ptr{Cvoid}
end

const tjhandle = Ptr{Cvoid}

# Skipping MacroDefinition: JMESSAGE ( code , string ) code ,
# Skipping MacroDefinition: ERREXIT ( cinfo , code ) ( ( cinfo ) -> err -> msg_code = ( code ) , ( * ( cinfo ) -> err -> error_exit ) ( ( j_common_ptr ) ( cinfo ) ) )
# Skipping MacroDefinition: ERREXIT1 ( cinfo , code , p1 ) ( ( cinfo ) -> err -> msg_code = ( code ) , ( cinfo ) -> err -> msg_parm . i [ 0 ] = ( p1 ) , ( * ( cinfo ) -> err -> error_exit ) ( ( j_common_ptr ) ( cinfo ) ) )
# Skipping MacroDefinition: ERREXIT2 ( cinfo , code , p1 , p2 ) ( ( cinfo ) -> err -> msg_code = ( code ) , ( cinfo ) -> err -> msg_parm . i [ 0 ] = ( p1 ) , ( cinfo ) -> err -> msg_parm . i [ 1 ] = ( p2 ) , ( * ( cinfo ) -> err -> error_exit ) ( ( j_common_ptr ) ( cinfo ) ) )
# Skipping MacroDefinition: ERREXIT3 ( cinfo , code , p1 , p2 , p3 ) ( ( cinfo ) -> err -> msg_code = ( code ) , ( cinfo ) -> err -> msg_parm . i [ 0 ] = ( p1 ) , ( cinfo ) -> err -> msg_parm . i [ 1 ] = ( p2 ) , ( cinfo ) -> err -> msg_parm . i [ 2 ] = ( p3 ) , ( * ( cinfo ) -> err -> error_exit ) ( ( j_common_ptr ) ( cinfo ) ) )
# Skipping MacroDefinition: ERREXIT4 ( cinfo , code , p1 , p2 , p3 , p4 ) ( ( cinfo ) -> err -> msg_code = ( code ) , ( cinfo ) -> err -> msg_parm . i [ 0 ] = ( p1 ) , ( cinfo ) -> err -> msg_parm . i [ 1 ] = ( p2 ) , ( cinfo ) -> err -> msg_parm . i [ 2 ] = ( p3 ) , ( cinfo ) -> err -> msg_parm . i [ 3 ] = ( p4 ) , ( * ( cinfo ) -> err -> error_exit ) ( ( j_common_ptr ) ( cinfo ) ) )
# Skipping MacroDefinition: ERREXITS ( cinfo , code , str ) ( ( cinfo ) -> err -> msg_code = ( code ) , strncpy ( ( cinfo ) -> err -> msg_parm . s , ( str ) , JMSG_STR_PARM_MAX ) , ( * ( cinfo ) -> err -> error_exit ) ( ( j_common_ptr ) ( cinfo ) ) )
# Skipping MacroDefinition: MAKESTMT ( stuff ) do { stuff } while ( 0 )
# Skipping MacroDefinition: WARNMS ( cinfo , code ) ( ( cinfo ) -> err -> msg_code = ( code ) , ( * ( cinfo ) -> err -> emit_message ) ( ( j_common_ptr ) ( cinfo ) , - 1 ) )
# Skipping MacroDefinition: WARNMS1 ( cinfo , code , p1 ) ( ( cinfo ) -> err -> msg_code = ( code ) , ( cinfo ) -> err -> msg_parm . i [ 0 ] = ( p1 ) , ( * ( cinfo ) -> err -> emit_message ) ( ( j_common_ptr ) ( cinfo ) , - 1 ) )
# Skipping MacroDefinition: WARNMS2 ( cinfo , code , p1 , p2 ) ( ( cinfo ) -> err -> msg_code = ( code ) , ( cinfo ) -> err -> msg_parm . i [ 0 ] = ( p1 ) , ( cinfo ) -> err -> msg_parm . i [ 1 ] = ( p2 ) , ( * ( cinfo ) -> err -> emit_message ) ( ( j_common_ptr ) ( cinfo ) , - 1 ) )
# Skipping MacroDefinition: TRACEMS ( cinfo , lvl , code ) ( ( cinfo ) -> err -> msg_code = ( code ) , ( * ( cinfo ) -> err -> emit_message ) ( ( j_common_ptr ) ( cinfo ) , ( lvl ) ) )
# Skipping MacroDefinition: TRACEMS1 ( cinfo , lvl , code , p1 ) ( ( cinfo ) -> err -> msg_code = ( code ) , ( cinfo ) -> err -> msg_parm . i [ 0 ] = ( p1 ) , ( * ( cinfo ) -> err -> emit_message ) ( ( j_common_ptr ) ( cinfo ) , ( lvl ) ) )
# Skipping MacroDefinition: TRACEMS2 ( cinfo , lvl , code , p1 , p2 ) ( ( cinfo ) -> err -> msg_code = ( code ) , ( cinfo ) -> err -> msg_parm . i [ 0 ] = ( p1 ) , ( cinfo ) -> err -> msg_parm . i [ 1 ] = ( p2 ) , ( * ( cinfo ) -> err -> emit_message ) ( ( j_common_ptr ) ( cinfo ) , ( lvl ) ) )
# Skipping MacroDefinition: TRACEMS3 ( cinfo , lvl , code , p1 , p2 , p3 ) MAKESTMT ( int * _mp = ( cinfo ) -> err -> msg_parm . i ; _mp [ 0 ] = ( p1 ) ; _mp [ 1 ] = ( p2 ) ; _mp [ 2 ] = ( p3 ) ; ( cinfo ) -> err -> msg_code = ( code ) ; ( * ( cinfo ) -> err -> emit_message ) ( ( j_common_ptr ) ( cinfo ) , ( lvl ) ) ; )
# Skipping MacroDefinition: TRACEMS4 ( cinfo , lvl , code , p1 , p2 , p3 , p4 ) MAKESTMT ( int * _mp = ( cinfo ) -> err -> msg_parm . i ; _mp [ 0 ] = ( p1 ) ; _mp [ 1 ] = ( p2 ) ; _mp [ 2 ] = ( p3 ) ; _mp [ 3 ] = ( p4 ) ; ( cinfo ) -> err -> msg_code = ( code ) ; ( * ( cinfo ) -> err -> emit_message ) ( ( j_common_ptr ) ( cinfo ) , ( lvl ) ) ; )
# Skipping MacroDefinition: TRACEMS5 ( cinfo , lvl , code , p1 , p2 , p3 , p4 , p5 ) MAKESTMT ( int * _mp = ( cinfo ) -> err -> msg_parm . i ; _mp [ 0 ] = ( p1 ) ; _mp [ 1 ] = ( p2 ) ; _mp [ 2 ] = ( p3 ) ; _mp [ 3 ] = ( p4 ) ; _mp [ 4 ] = ( p5 ) ; ( cinfo ) -> err -> msg_code = ( code ) ; ( * ( cinfo ) -> err -> emit_message ) ( ( j_common_ptr ) ( cinfo ) , ( lvl ) ) ; )
# Skipping MacroDefinition: TRACEMS8 ( cinfo , lvl , code , p1 , p2 , p3 , p4 , p5 , p6 , p7 , p8 ) MAKESTMT ( int * _mp = ( cinfo ) -> err -> msg_parm . i ; _mp [ 0 ] = ( p1 ) ; _mp [ 1 ] = ( p2 ) ; _mp [ 2 ] = ( p3 ) ; _mp [ 3 ] = ( p4 ) ; _mp [ 4 ] = ( p5 ) ; _mp [ 5 ] = ( p6 ) ; _mp [ 6 ] = ( p7 ) ; _mp [ 7 ] = ( p8 ) ; ( cinfo ) -> err -> msg_code = ( code ) ; ( * ( cinfo ) -> err -> emit_message ) ( ( j_common_ptr ) ( cinfo ) , ( lvl ) ) ; )
# Skipping MacroDefinition: TRACEMSS ( cinfo , lvl , code , str ) ( ( cinfo ) -> err -> msg_code = ( code ) , strncpy ( ( cinfo ) -> err -> msg_parm . s , ( str ) , JMSG_STR_PARM_MAX ) , ( * ( cinfo ) -> err -> emit_message ) ( ( j_common_ptr ) ( cinfo ) , ( lvl ) ) )

@cenum J_MESSAGE_CODE::UInt32 begin
    JMSG_NOMESSAGE = 0
    JERR_ARITH_NOTIMPL = 1
    JERR_BAD_ALIGN_TYPE = 2
    JERR_BAD_ALLOC_CHUNK = 3
    JERR_BAD_BUFFER_MODE = 4
    JERR_BAD_COMPONENT_ID = 5
    JERR_BAD_DCT_COEF = 6
    JERR_BAD_DCTSIZE = 7
    JERR_BAD_HUFF_TABLE = 8
    JERR_BAD_IN_COLORSPACE = 9
    JERR_BAD_J_COLORSPACE = 10
    JERR_BAD_LENGTH = 11
    JERR_BAD_LIB_VERSION = 12
    JERR_BAD_MCU_SIZE = 13
    JERR_BAD_POOL_ID = 14
    JERR_BAD_PRECISION = 15
    JERR_BAD_PROGRESSION = 16
    JERR_BAD_PROG_SCRIPT = 17
    JERR_BAD_SAMPLING = 18
    JERR_BAD_SCAN_SCRIPT = 19
    JERR_BAD_STATE = 20
    JERR_BAD_STRUCT_SIZE = 21
    JERR_BAD_VIRTUAL_ACCESS = 22
    JERR_BUFFER_SIZE = 23
    JERR_CANT_SUSPEND = 24
    JERR_CCIR601_NOTIMPL = 25
    JERR_COMPONENT_COUNT = 26
    JERR_CONVERSION_NOTIMPL = 27
    JERR_DAC_INDEX = 28
    JERR_DAC_VALUE = 29
    JERR_DHT_INDEX = 30
    JERR_DQT_INDEX = 31
    JERR_EMPTY_IMAGE = 32
    JERR_EMS_READ = 33
    JERR_EMS_WRITE = 34
    JERR_EOI_EXPECTED = 35
    JERR_FILE_READ = 36
    JERR_FILE_WRITE = 37
    JERR_FRACT_SAMPLE_NOTIMPL = 38
    JERR_HUFF_CLEN_OVERFLOW = 39
    JERR_HUFF_MISSING_CODE = 40
    JERR_IMAGE_TOO_BIG = 41
    JERR_INPUT_EMPTY = 42
    JERR_INPUT_EOF = 43
    JERR_MISMATCHED_QUANT_TABLE = 44
    JERR_MISSING_DATA = 45
    JERR_MODE_CHANGE = 46
    JERR_NOTIMPL = 47
    JERR_NOT_COMPILED = 48
    JERR_NO_BACKING_STORE = 49
    JERR_NO_HUFF_TABLE = 50
    JERR_NO_IMAGE = 51
    JERR_NO_QUANT_TABLE = 52
    JERR_NO_SOI = 53
    JERR_OUT_OF_MEMORY = 54
    JERR_QUANT_COMPONENTS = 55
    JERR_QUANT_FEW_COLORS = 56
    JERR_QUANT_MANY_COLORS = 57
    JERR_SOF_DUPLICATE = 58
    JERR_SOF_NO_SOS = 59
    JERR_SOF_UNSUPPORTED = 60
    JERR_SOI_DUPLICATE = 61
    JERR_SOS_NO_SOF = 62
    JERR_TFILE_CREATE = 63
    JERR_TFILE_READ = 64
    JERR_TFILE_SEEK = 65
    JERR_TFILE_WRITE = 66
    JERR_TOO_LITTLE_DATA = 67
    JERR_UNKNOWN_MARKER = 68
    JERR_VIRTUAL_BUG = 69
    JERR_WIDTH_OVERFLOW = 70
    JERR_XMS_READ = 71
    JERR_XMS_WRITE = 72
    JMSG_COPYRIGHT = 73
    JMSG_VERSION = 74
    JTRC_16BIT_TABLES = 75
    JTRC_ADOBE = 76
    JTRC_APP0 = 77
    JTRC_APP14 = 78
    JTRC_DAC = 79
    JTRC_DHT = 80
    JTRC_DQT = 81
    JTRC_DRI = 82
    JTRC_EMS_CLOSE = 83
    JTRC_EMS_OPEN = 84
    JTRC_EOI = 85
    JTRC_HUFFBITS = 86
    JTRC_JFIF = 87
    JTRC_JFIF_BADTHUMBNAILSIZE = 88
    JTRC_JFIF_EXTENSION = 89
    JTRC_JFIF_THUMBNAIL = 90
    JTRC_MISC_MARKER = 91
    JTRC_PARMLESS_MARKER = 92
    JTRC_QUANTVALS = 93
    JTRC_QUANT_3_NCOLORS = 94
    JTRC_QUANT_NCOLORS = 95
    JTRC_QUANT_SELECTED = 96
    JTRC_RECOVERY_ACTION = 97
    JTRC_RST = 98
    JTRC_SMOOTH_NOTIMPL = 99
    JTRC_SOF = 100
    JTRC_SOF_COMPONENT = 101
    JTRC_SOI = 102
    JTRC_SOS = 103
    JTRC_SOS_COMPONENT = 104
    JTRC_SOS_PARAMS = 105
    JTRC_TFILE_CLOSE = 106
    JTRC_TFILE_OPEN = 107
    JTRC_THUMB_JPEG = 108
    JTRC_THUMB_PALETTE = 109
    JTRC_THUMB_RGB = 110
    JTRC_UNKNOWN_IDS = 111
    JTRC_XMS_CLOSE = 112
    JTRC_XMS_OPEN = 113
    JWRN_ADOBE_XFORM = 114
    JWRN_BOGUS_PROGRESSION = 115
    JWRN_EXTRANEOUS_DATA = 116
    JWRN_HIT_MARKER = 117
    JWRN_HUFF_BAD_CODE = 118
    JWRN_JFIF_MAJOR = 119
    JWRN_JPEG_EOF = 120
    JWRN_MUST_RESYNC = 121
    JWRN_NOT_SEQUENTIAL = 122
    JWRN_TOO_MUCH_DATA = 123
    JERR_BAD_CROP_SPEC = 124
    JWRN_BOGUS_ICC = 125
    JMSG_LASTMSGCODE = 126
end

