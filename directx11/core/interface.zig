pub const ID3D11Asynchronous = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        GetDevice: extern fn (*Interface, **ID3D11Device) void,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetDataSize: extern fn (*Interface) UINT,
    };

    lpVtbl: *VTable,
};

pub const ID3D11BlendState = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        GetDevice: extern fn (*Interface, **ID3D11Device) void,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetDesc: extern fn (*Interface, *BlenDesc) void,
    };

    lpVtbl: *VTable,
};

pub const ID3D11BlendState1 = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        GetDevice: extern fn (*Interface, **ID3D11Device) void,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetDesc: extern fn (*Interface, *BlenDesc) void,
        GetDesc1: extern fn (*Interface, *BlenDesc1) void,
    };

    lpVtbl: *VTable,
};

pub const ID3D11DeviceChild = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        GetDevice: extern fn (*Interface, **ID3D11Device) void,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
    };

    lpVtbl: *VTable,
};

pub const IUnknown = extern struct {
    const Interface = @This();

    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
    };

    lpVtbl: *VTable,
};
