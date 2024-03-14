import winim

{.passL: "d3d11.lib".}
{.pragma: d3d11_header, header: "d3d11.h".}

const 
    DXGI_USAGE_RENDER_TARGET_OUTPUT = 32
    D3D11_SDK_VERSION = 7

type 
    D3D_DRIVER_TYPE* {.importcpp: "enum D3D_DRIVER_TYPE", d3d11_header, pure.} = enum
        D3D_DRIVER_TYPE_UNKNOWN = 0,
        D3D_DRIVER_TYPE_HARDWARE = 1,
        D3D_DRIVER_TYPE_REFERENCE = 2,
        D3D_DRIVER_TYPE_NULL = 3,
        D3D_DRIVER_TYPE_SOFTWARE = 4,
        D3D_DRIVER_TYPE_WARP = 5

    D3D_FEATURE_LEVEL* {.importcpp: "enum D3D_FEATURE_LEVEL", d3d11_header, pure.} = enum
        D3D_FEATURE_LEVEL_9_1 = 0x9100,
        D3D_FEATURE_LEVEL_9_2 = 0x9200,
        D3D_FEATURE_LEVEL_9_3 = 0x9300,
        D3D_FEATURE_LEVEL_10_0 = 0xa000,
        D3D_FEATURE_LEVEL_10_1 = 0xa100,
        D3D_FEATURE_LEVEL_11_0 = 0xb000,
        D3D_FEATURE_LEVEL_11_1 = 0xb100,
        D3D_FEATURE_LEVEL_12_0 = 0xc000,
        D3D_FEATURE_LEVEL_12_1 = 0xc100

    D3D11_TEXTURE2D_DESC* {.importcpp: "struct D3D11_TEXTURE2D_DESC", d3d11_header, pure.} = object
        Width*: UINT
        Height*: UINT
        MipLevels*: UINT
        ArraySize*: UINT
        # Format*: DXGI_FORMAT
        # SampleDesc*: DXGI_SAMPLE_DESC
        # Usage: D3D11_USAGE
        BindFlags*: UINT
        CPUAccessFlags*: UINT
        MiscFlags*: UINT

    D3D11_RENDER_TARGET_VIEW_DESC* {.importcpp: "struct D3D11_RENDER_TARGET_VIEW_DESC", d3d11_header, pure.} = object
        # Format*: DXGI_FORMAT
    # D3D11_RTV_DIMENSION ViewDimension;
    # union 
    #     {
    #     D3D11_BUFFER_RTV Buffer;
    #     D3D11_TEX1D_RTV Texture1D;
    #     D3D11_TEX1D_ARRAY_RTV Texture1DArray;
    #     D3D11_TEX2D_RTV Texture2D;
    #     D3D11_TEX2D_ARRAY_RTV Texture2DArray;
    #     D3D11_TEX2DMS_RTV Texture2DMS;
    #     D3D11_TEX2DMS_ARRAY_RTV Texture2DMSArray;
    #     D3D11_TEX3D_RTV Texture3D;
    #     } 	;
    # } 	D3D11_RENDER_TARGET_VIEW_DESC;

type
    DXGI_FORMAT* {.importcpp: "enum DXGI_FORMAT", d3d11_header, pure.} = enum
        DXGI_FORMAT_UNKNOWN                     = 0,
        DXGI_FORMAT_R32G32B32A32_TYPELESS       = 1,
        DXGI_FORMAT_R32G32B32A32_FLOAT          = 2,
        DXGI_FORMAT_R32G32B32A32_UINT           = 3,
        DXGI_FORMAT_R32G32B32A32_SINT           = 4,
        DXGI_FORMAT_R32G32B32_TYPELESS          = 5,
        DXGI_FORMAT_R32G32B32_FLOAT             = 6,
        DXGI_FORMAT_R32G32B32_UINT              = 7,
        DXGI_FORMAT_R32G32B32_SINT              = 8,
        DXGI_FORMAT_R16G16B16A16_TYPELESS       = 9,
        DXGI_FORMAT_R16G16B16A16_FLOAT          = 10,
        DXGI_FORMAT_R16G16B16A16_UNORM          = 11,
        DXGI_FORMAT_R16G16B16A16_UINT           = 12,
        DXGI_FORMAT_R16G16B16A16_SNORM          = 13,
        DXGI_FORMAT_R16G16B16A16_SINT           = 14,
        DXGI_FORMAT_R32G32_TYPELESS             = 15,
        DXGI_FORMAT_R32G32_FLOAT                = 16,
        DXGI_FORMAT_R32G32_UINT                 = 17,
        DXGI_FORMAT_R32G32_SINT                 = 18,
        DXGI_FORMAT_R32G8X24_TYPELESS           = 19,
        DXGI_FORMAT_D32_FLOAT_S8X24_UINT        = 20,
        DXGI_FORMAT_R32_FLOAT_X8X24_TYPELESS    = 21,
        DXGI_FORMAT_X32_TYPELESS_G8X24_UINT     = 22,
        DXGI_FORMAT_R10G10B10A2_TYPELESS        = 23,
        DXGI_FORMAT_R10G10B10A2_UNORM           = 24,
        DXGI_FORMAT_R10G10B10A2_UINT            = 25,
        DXGI_FORMAT_R11G11B10_FLOAT             = 26,
        DXGI_FORMAT_R8G8B8A8_TYPELESS           = 27,
        DXGI_FORMAT_R8G8B8A8_UNORM              = 28,
        DXGI_FORMAT_R8G8B8A8_UNORM_SRGB         = 29,
        DXGI_FORMAT_R8G8B8A8_UINT               = 30,
        DXGI_FORMAT_R8G8B8A8_SNORM              = 31,
        DXGI_FORMAT_R8G8B8A8_SINT               = 32,
        DXGI_FORMAT_R16G16_TYPELESS             = 33,
        DXGI_FORMAT_R16G16_FLOAT                = 34,
        DXGI_FORMAT_R16G16_UNORM                = 35,
        DXGI_FORMAT_R16G16_UINT                 = 36,
        DXGI_FORMAT_R16G16_SNORM                = 37,
        DXGI_FORMAT_R16G16_SINT                 = 38,
        DXGI_FORMAT_R32_TYPELESS                = 39,
        DXGI_FORMAT_D32_FLOAT                   = 40,
        DXGI_FORMAT_R32_FLOAT                   = 41,
        DXGI_FORMAT_R32_UINT                    = 42,
        DXGI_FORMAT_R32_SINT                    = 43,
        DXGI_FORMAT_R24G8_TYPELESS              = 44,
        DXGI_FORMAT_D24_UNORM_S8_UINT           = 45,
        DXGI_FORMAT_R24_UNORM_X8_TYPELESS       = 46,
        DXGI_FORMAT_X24_TYPELESS_G8_UINT        = 47,
        DXGI_FORMAT_R8G8_TYPELESS               = 48,
        DXGI_FORMAT_R8G8_UNORM                  = 49,
        DXGI_FORMAT_R8G8_UINT                   = 50,
        DXGI_FORMAT_R8G8_SNORM                  = 51,
        DXGI_FORMAT_R8G8_SINT                   = 52,
        DXGI_FORMAT_R16_TYPELESS                = 53,
        DXGI_FORMAT_R16_FLOAT                   = 54,
        DXGI_FORMAT_D16_UNORM                   = 55,
        DXGI_FORMAT_R16_UNORM                   = 56,
        DXGI_FORMAT_R16_UINT                    = 57,
        DXGI_FORMAT_R16_SNORM                   = 58,
        DXGI_FORMAT_R16_SINT                    = 59,
        DXGI_FORMAT_R8_TYPELESS                 = 60,
        DXGI_FORMAT_R8_UNORM                    = 61,
        DXGI_FORMAT_R8_UINT                     = 62,
        DXGI_FORMAT_R8_SNORM                    = 63,
        DXGI_FORMAT_R8_SINT                     = 64,
        DXGI_FORMAT_A8_UNORM                    = 65,
        DXGI_FORMAT_R1_UNORM                    = 66,
        DXGI_FORMAT_R9G9B9E5_SHAREDEXP          = 67,
        DXGI_FORMAT_R8G8_B8G8_UNORM             = 68,
        DXGI_FORMAT_G8R8_G8B8_UNORM             = 69,
        DXGI_FORMAT_BC1_TYPELESS                = 70,
        DXGI_FORMAT_BC1_UNORM                   = 71,
        DXGI_FORMAT_BC1_UNORM_SRGB              = 72,
        DXGI_FORMAT_BC2_TYPELESS                = 73,
        DXGI_FORMAT_BC2_UNORM                   = 74,
        DXGI_FORMAT_BC2_UNORM_SRGB              = 75,
        DXGI_FORMAT_BC3_TYPELESS                = 76,
        DXGI_FORMAT_BC3_UNORM                   = 77,
        DXGI_FORMAT_BC3_UNORM_SRGB              = 78,
        DXGI_FORMAT_BC4_TYPELESS                = 79,
        DXGI_FORMAT_BC4_UNORM                   = 80,
        DXGI_FORMAT_BC4_SNORM                   = 81,
        DXGI_FORMAT_BC5_TYPELESS                = 82,
        DXGI_FORMAT_BC5_UNORM                   = 83,
        DXGI_FORMAT_BC5_SNORM                   = 84,
        DXGI_FORMAT_B5G6R5_UNORM                = 85,
        DXGI_FORMAT_B5G5R5A1_UNORM              = 86,
        DXGI_FORMAT_B8G8R8A8_UNORM              = 87,
        DXGI_FORMAT_B8G8R8X8_UNORM              = 88,
        DXGI_FORMAT_R10G10B10_XR_BIAS_A2_UNORM  = 89,
        DXGI_FORMAT_B8G8R8A8_TYPELESS           = 90,
        DXGI_FORMAT_B8G8R8A8_UNORM_SRGB         = 91,
        DXGI_FORMAT_B8G8R8X8_TYPELESS           = 92,
        DXGI_FORMAT_B8G8R8X8_UNORM_SRGB         = 93,
        DXGI_FORMAT_BC6H_TYPELESS               = 94,
        DXGI_FORMAT_BC6H_UF16                   = 95,
        DXGI_FORMAT_BC6H_SF16                   = 96,
        DXGI_FORMAT_BC7_TYPELESS                = 97,
        DXGI_FORMAT_BC7_UNORM                   = 98,
        DXGI_FORMAT_BC7_UNORM_SRGB              = 99,
        DXGI_FORMAT_FORCE_UINT                  = 0xffffffff

    DXGI_RATIONAL* {.importcpp: "struct DXGI_RATIONAL", d3d11_header, pure.} = object
        Numerator*: UINT
        Denominator*: UINT

    DXGI_MODE_SCANLINE_ORDER* {.importcpp: "enum DXGI_MODE_SCANLINE_ORDER", d3d11_header, pure.} = enum
        DXGI_MODE_SCANLINE_ORDER_UNSPECIFIED        = 0,
        DXGI_MODE_SCANLINE_ORDER_PROGRESSIVE        = 1,
        DXGI_MODE_SCANLINE_ORDER_UPPER_FIELD_FIRST  = 2,
        DXGI_MODE_SCANLINE_ORDER_LOWER_FIELD_FIRST  = 3

    DXGI_MODE_SCALING* {.importcpp: "enum DXGI_MODE_SCALING", d3d11_header, pure.} = enum
        DXGI_MODE_SCALING_UNSPECIFIED   = 0,
        DXGI_MODE_SCALING_CENTERED      = 1,
        DXGI_MODE_SCALING_STRETCHED     = 2

    DXGI_MODE_ROTATION* {.importcpp: "enum DXGI_MODE_ROTATION", d3d11_header, pure.} = enum
        DXGI_MODE_ROTATION_UNSPECIFIED  = 0,
        DXGI_MODE_ROTATION_IDENTITY     = 1,
        DXGI_MODE_ROTATION_ROTATE90     = 2,
        DXGI_MODE_ROTATION_ROTATE180    = 3,
        DXGI_MODE_ROTATION_ROTATE270    = 4

    DXGI_MODE_DESC* {.importcpp: "struct DXGI_MODE_DESC", d3d11_header, pure.} = object
        Width*: UINT
        Height*: UINT
        RefreshRate*: DXGI_RATIONAL
        Format*: DXGI_FORMAT
        ScanlineOrdering*: DXGI_MODE_SCANLINE_ORDER
        Scaling*: DXGI_MODE_SCALING

    DXGI_SAMPLE_DESC* {.importcpp: "struct DXGI_SAMPLE_DESC", d3d11_header, pure.} = object
        Count*: UINT
        Quality*: UINT

    DXGI_SWAP_EFFECT* {.importcpp: "enum DXGI_SWAP_EFFECT", d3d11_header, pure.} = enum
        DXGI_SWAP_EFFECT_DISCARD = 0,
        DXGI_SWAP_EFFECT_SEQUENTIAL = 1

    DXGI_SWAP_CHAIN_FLAG* {.importcpp: "enum DXGI_SWAP_CHAIN_FLAG", d3d11_header, pure.} = enum
        DXGI_SWAP_CHAIN_FLAG_NONPREROTATED = 1,
        DXGI_SWAP_CHAIN_FLAG_ALLOW_MODE_SWITCH = 2,
        DXGI_SWAP_CHAIN_FLAG_GDI_COMPATIBLE = 4

    DXGI_SWAP_CHAIN_DESC* {.importcpp: "struct DXGI_SWAP_CHAIN_DESC", d3d11_header, pure.} = object
        BufferDesc*: DXGI_MODE_DESC
        SampleDesc*: DXGI_SAMPLE_DESC
        BufferUsage*: UINT
        BufferCount*: UINT
        OutputWindow*: HWND
        Windowed*: bool
        SwapEffect*: DXGI_SWAP_EFFECT
        Flags*: UINT

type 
  #---------------------------------------------------------------------
    ID3D11DeviceChild* {.importcpp: "ID3D11DeviceChild",  d3d11_header, inheritable, pure.} = object of IUnknownVtbl
    ID3D11View* {.importcpp: "ID3D11View",  d3d11_header, inheritable, pure.} = object of ID3D11DeviceChild
    ID3D11RenderTargetView* {.importcpp: "ID3D11RenderTargetView",  d3d11_header, inheritable, pure.} = object of ID3D11View
    ID3D11Resource* {.importcpp: "ID3D11Resource",  d3d11_header, inheritable, pure.} = object of ID3D11DeviceChild
        # GetType*: proc(pResourceDimension: ptr D3D11_RESOURCE_DIMENSION): void {.stdcall.}
        SetEvictionPriority*: proc(EvictionPriority: UINT): void {.stdcall.}
        GetEvictionPriority*: proc(): UINT {.stdcall.}
    ID3D11Texture2D* {.importcpp: "ID3D11Texture2D",  d3d11_header, inheritable, pure.} = object of ID3D11Resource
        GetDesc*: proc(pDesc: ptr D3D11_TEXTURE2D_DESC): void {.stdcall.}
    ID3D11DeviceContext* {.importcpp: "ID3D11DeviceContext",  d3d11_header, inheritable, pure.} = object of ID3D11DeviceChild
    ID3D11Device* {.importcpp: "ID3D11Device",  d3d11_header, inheritable, pure.} = object of IUnknownVtbl
        CreateRenderTargetView*: proc(pResource: ptr ID3D11Resource, pDesc: ptr D3D11_RENDER_TARGET_VIEW_DESC, ppRTView: ptr ptr ID3D11RenderTargetView): HRESULT {.stdcall.}

type
    #--------------------------------------------------------------------- IDXGI
    IDXGIObject* {.importcpp: "IDXGIObject",  d3d11_header, inheritable, pure.} = object of IUnknownVtbl
    IDXGIDeviceSubObject* {.importcpp: "IDXGIDeviceSubObject",  d3d11_header, inheritable, pure.} = object of IDXGIObject
    IDXGISwapChain* {.importcpp: "IDXGISwapChain",  d3d11_header, inheritable, pure.} = object of IDXGIDeviceSubObject
        GetBuffer*: proc(Buffer: UINT, riid: REFIID, ppSurface: ptr pointer): HRESULT {.stdcall.}

type 
    #--------------------------------------------------------------------- DXGIType
    DXGI_RGB* {.importcpp: "DXGI_RGB",  d3d11_header, inheritable, pure.} = object
        Red*: float
        Green*: float
        Blue*: float

    DXGI_GAMMA_CONTROL* {.importcpp: "DXGI_GAMMA_CONTROL",  d3d11_header, inheritable, pure.} = object
        Scale: DXGI_RGB
        Offset: DXGI_RGB
        # GammaCurve: DXGI_RGB[ 1025 ]

    DXGI_GAMMA_CONTROL_CAPABILITIES* {.importcpp: "DXGI_GAMMA_CONTROL_CAPABILITIES",  d3d11_header, inheritable, pure.} = object
        ScaleAndOffsetSupported: bool
        MaxConvertedValue: float
        MinConvertedValue: float
        NumGammaControlPoints: UINT
        # float ControlPointPositions[1025];

    #--------------------------------------------------------------------- DXGI
    DXGI_OUTPUT_DESC* {.importcpp: "DXGI_OUTPUT_DESC",  d3d11_header, inheritable, pure.} = object
        # WCHAR DeviceName[ 32 ]
        DesktopCoordinates*: RECT
        AttachedToDesktop*: bool
        Rotation: DXGI_MODE_ROTATION
        Monitor: HMONITOR

    DXGI_FRAME_STATISTICS* {.importcpp: "DXGI_FRAME_STATISTICS",  d3d11_header, inheritable, pure.} = object
        PresentCount*: UINT
        PresentRefreshCount*: UINT
        SyncRefreshCount*: UINT
        SyncQPCTime*: LARGE_INTEGER
        SyncGPUTime*: LARGE_INTEGER

    DXGI_MAPPED_RECT* {.importcpp: "DXGI_MAPPED_RECT",  d3d11_header, inheritable, pure.} = object
        Pitch*: INT
        pBits*: ptr BYTE

    DXGI_ADAPTER_DESC* {.importcpp: "DXGI_ADAPTER_DESC",  d3d11_header, inheritable, pure.} = object
        # WCHAR Description[ 128 ];
        VendorId*: UINT
        DeviceId*: UINT
        SubSysId*: UINT
        Revision*: UINT
        DedicatedVideoMemory*: SIZE_T
        DedicatedSystemMemory*: SIZE_T
        SharedSystemMemory*: SIZE_T
        AdapterLuid*: LUID

    DXGI_SURFACE_DESC* {.importcpp: "DXGI_SURFACE_DESC",  d3d11_header, inheritable, pure.} = object
        Width*: UINT
        Height*: UINT
        Format*: DXGI_FORMAT
        SampleDesc*: DXGI_SAMPLE_DESC

    IDXGISurface* {.importcpp: "IDXGISurface",  d3d11_header, inheritable, pure.} = object
        GetDesc*: proc(pDesc: ptr DXGI_SURFACE_DESC): HRESULT {.stdcall.}
        Map*: proc(pLockedRect: ptr DXGI_MAPPED_RECT, MapFlags: UINT): HRESULT {.stdcall.}
        Unmap*: proc(): HRESULT {.stdcall.}

    IDXGIOutput* {.importcpp: "IDXGIOutput",  d3d11_header, inheritable, pure.} = object
        GetDesc*: proc(pDesc: ptr DXGI_OUTPUT_DESC): HRESULT {.stdcall.}
        GetDisplayModeList*: proc(EnumFormat: DXGI_FORMAT, Flags: UINT, pNumModes: ptr UINT, pDesc: ptr DXGI_MODE_DESC): HRESULT {.stdcall.}
        FindClosestMatchingMode*: proc(pModeToMatch: ptr DXGI_MODE_DESC, pClosestMatch: ptr DXGI_MODE_DESC, pConcernedDevice: ptr IUnknown): HRESULT {.stdcall.}
        WaitForVBlank*: proc(): HRESULT {.stdcall.}
        TakeOwnership*: proc(pDevice: ptr IUnknown, Exclusive: bool): HRESULT {.stdcall.}
        ReleaseOwnership*: proc(): void {.stdcall.}
        GetGammaControlCapabilities*: proc(pGammaCaps: ptr DXGI_GAMMA_CONTROL_CAPABILITIES): HRESULT {.stdcall.}
        SetGammaControl*: proc(pArray: ptr DXGI_GAMMA_CONTROL): HRESULT {.stdcall.}
        GetGammaControl*: proc(pArray: ptr DXGI_GAMMA_CONTROL): HRESULT {.stdcall.}
        SetDisplaySurface*: proc(pScanoutSurface: ptr IDXGISurface): HRESULT {.stdcall.}
        GetDisplaySurfaceData*: proc(pDestination: ptr IDXGISurface): HRESULT {.stdcall.}
        GetFrameStatistics*: proc(pStats: ptr DXGI_FRAME_STATISTICS): HRESULT {.stdcall.}

    IDXGIAdapter* {.importcpp: "IDXGIAdapter",  d3d11_header, inheritable, pure.} = object
        EnumOutputs*: proc(Output: UINT, ppOutput: ptr IDXGIOutput): HRESULT {.stdcall.}
        GetDesc*: proc(pDesc: ptr DXGI_ADAPTER_DESC): HRESULT {.stdcall.}
        CheckInterfaceSupport*: proc(InterfaceName: REFGUID, pUMDVersion: ptr LARGE_INTEGER): HRESULT {.stdcall.}

proc D3D11CreateDeviceAndSwapChain*(pAdapter: ptr IDXGIAdapter, DriverType: D3D_DRIVER_TYPE, Software: HMODULE, Flags: UINT, pFeatureLevels: ptr D3D_FEATURE_LEVEL, FeatureLevels: UINT, SDKVersion: UINT, pSwapChainDesc: ptr DXGI_SWAP_CHAIN_DESC, ppSwapChain: ptr ptr IDXGISwapChain, ppDevice: ptr ptr ID3D11Device, pFeatureLevel: ptr D3D_FEATURE_LEVEL, ppImmediateContext: ptr ptr ID3D11DeviceContext ): HRESULT {.importcpp: "D3D11CreateDeviceAndSwapChain(@)", d3d11_header, stdcall, discardable.}
