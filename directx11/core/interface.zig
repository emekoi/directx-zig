//
//  Copyright (c) 2019 emekoi
//
//  This library is free software; you can redistribute it and/or modify it
//  under the terms of the MIT license. See LICENSE for details.
//

usingnamespace @import("enum.zig");
usingnamespace @import("struct.zig");
usingnamespace @import("../../types.zig");

pub const IAsynchronous = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        GetDevice: extern fn (*Interface, **IDevice) void,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetDataSize: extern fn (*Interface) UINT,
    };

    lpVtbl: *VTable,
};

pub const IBlendState = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        GetDevice: extern fn (*Interface, **IDevice) void,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetDesc: extern fn (*Interface, *BlenDesc) void,
    };

    lpVtbl: *VTable,
};

pub const IBlendState1 = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        GetDevice: extern fn (*Interface, **IDevice) void,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetDesc: extern fn (*Interface, *BlenDesc) void,
        GetDesc1: extern fn (*Interface, *BlenDesc1) void,
    };

    lpVtbl: *VTable,
};

pub const IDeviceChild = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        GetDevice: extern fn (*Interface, **IDevice) void,
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
