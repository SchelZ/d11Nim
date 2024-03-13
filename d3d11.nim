import winim/lean

{.passL: "d3d11.lib".}
{.pragma: d3d11_header, header: "d3d11.h".}
# {.pragma: d3d9_header, header: "Include/D3D11.h".}

const 
    DXGI_USAGE_RENDER_TARGET_OUTPUT = 32

type 
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
        Numerator*: uint
        Denominator*: uint

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
        Width*: uint
        Height*: uint
        RefreshRate*: DXGI_RATIONAL
        Format*: DXGI_FORMAT
        ScanlineOrdering*: DXGI_MODE_SCANLINE_ORDER
        Scaling*: DXGI_MODE_SCALING

    DXGI_SAMPLE_DESC* {.importcpp: "struct DXGI_SAMPLE_DESC", d3d11_header, pure.} = object
        Count*: uint
        Quality*: uint

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
        BufferUsage*: uint
        BufferCount*: uint
        OutputWindow*: HWND
        Windowed*: bool
        SwapEffect*: DXGI_SWAP_EFFECT
        Flags*: uint

type 
  #---------------------------------------------------------------------
    ID3D11DeviceContext* {.importcpp: "ID3D11DeviceContext",  d3d11_header, inheritable, pure.} = object
    ID3D11Device* {.importcpp: "ID3D11Device",  d3d11_header, inheritable, pure.} = object
    IDXGISwapChain* {.importcpp: "IDXGISwapChain",  d3d11_header, inheritable, pure.} = object
    ID3D11RenderTargetView* {.importcpp: "ID3D11RenderTargetView",  d3d11_header, inheritable, pure.} = object


var 
    g_pd3dDevice: ptr ID3D11Device = nil
    g_pd3dDeviceContext: ptr ID3D11DeviceContext = nil
    g_pSwapChain: ptr IDXGISwapChain = nil
    g_ResizeWidth: uint = 0
    g_ResizeHeight: uint = 0
    g_mainRenderTargetView: ptr ID3D11RenderTargetView = nil
 

proc CreateDeviceD3D(hWnd: HWND): bool = 
    var 
        sd: DXGI_SWAP_CHAIN_DESC
        createDeviceFlags: uint = 0
        featureLevel: D3D_FEATURE_LEVEL

    ZeroMemory(sd.addr, sizeof(sd))
    sd.BufferCount = 2
    sd.BufferDesc.Width = 0
    sd.BufferDesc.Height = 0
    sd.BufferDesc.Format = DXGI_FORMAT_R8G8B8A8_UNORM
    sd.BufferDesc.RefreshRate.Numerator = 60
    sd.BufferDesc.RefreshRate.Denominator = 1
    sd.Flags = DXGI_SWAP_CHAIN_FLAG_ALLOW_MODE_SWITCH.uint
    sd.BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT
    sd.OutputWindow = hWnd
    sd.SampleDesc.Count = 1
    sd.SampleDesc.Quality = 0
    sd.Windowed = true
    sd.SwapEffect = DXGI_SWAP_EFFECT_DISCARD

    # const D3D_FEATURE_LEVEL featureLevelArray[2] = { D3D_FEATURE_LEVEL_11_0, D3D_FEATURE_LEVEL_10_0, }
    # var res: HRESULT = D3D11CreateDeviceAndSwapChain(nil, D3D_DRIVER_TYPE_HARDWARE, nil, createDeviceFlags, featureLevelArray, 2, D3D11_SDK_VERSION, sd.addr, g_pSwapChain.addr, g_pd3dDevice.addr, featureLevel.addr, g_pd3dDeviceContext.addr)
    # if (res == DXGI_ERROR_UNSUPPORTED)
        # res = D3D11CreateDeviceAndSwapChain(nil, D3D_DRIVER_TYPE_WARP, nil, createDeviceFlags, featureLevelArray, 2, D3D11_SDK_VERSION, sd.addr, g_pSwapChain.addr, g_pd3dDevice.addr, featureLevel.addr, g_pd3dDeviceContext.addr)
    # if (res != S_OK)
        # return false

    # CreateRenderTarget()
    # return true


proc WindowProc(hwnd: HWND, message: UINT, wParam: WPARAM, lParam: LPARAM): LRESULT {.stdcall.} =
  case message
  of WM_PAINT:
    var ps: PAINTSTRUCT
    var hdc = BeginPaint(hwnd, ps)
    defer: EndPaint(hwnd, ps)

    var rect: RECT
    GetClientRect(hwnd, rect)
    DrawText(hdc, "Hello, Windows!", -1, rect, DT_SINGLELINE or DT_CENTER or DT_VCENTER)
    return 0

  of WM_DESTROY:
    PostQuitMessage(0)
    return 0

  else:
    return DefWindowProc(hwnd, message, wParam, lParam)

proc main() =
    var
        hInstance = GetModuleHandle(nil)
        hwnd: HWND
        msg: MSG
        wndclass: WNDCLASS

    wndclass.style = CS_HREDRAW or CS_VREDRAW
    wndclass.lpfnWndProc = WindowProc
    wndclass.cbClsExtra = 0
    wndclass.cbWndExtra = 0
    wndclass.hInstance = hInstance
    wndclass.hIcon = LoadIcon(0, IDI_APPLICATION)
    wndclass.hCursor = LoadCursor(0, IDC_ARROW)
    wndclass.hbrBackground = GetStockObject(WHITE_BRUSH)
    wndclass.lpszMenuName = nil
    wndclass.lpszClassName = "HelloWin"

    if RegisterClass(wndclass) == 0:
        MessageBox(0, "This program requires Windows NT!", "HelloWin", MB_ICONERROR)
        return

    hwnd = CreateWindow("HelloWin", "The Hello Program", WS_OVERLAPPEDWINDOW,
        CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
        0, 0, hInstance, nil)

    ShowWindow(hwnd, SW_SHOW)
    UpdateWindow(hwnd)
    while GetMessage(msg, 0, 0, 0) != 0:
        TranslateMessage(msg)
        DispatchMessage(msg)

main()