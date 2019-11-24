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

pub const ICommandList = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        GetDevice: extern fn (*Interface, **IDevice) void,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetContextFlags: extern fn (*Interface) UINT,
    };

    lpVtbl: *VTable,
};

pub const ICounter = extern struct {
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
        GetDesc: extern fn (*Interface, *CounterDesc) void,
    };

    lpVtbl: *VTable,
};

pub const IDepthStencilState = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        GetDevice: extern fn (*Interface, **IDevice) void,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, ?[*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetDesc: extern fn (*Interface, *DepthStencilDesc) void,
    };

    lpVtbl: *VTable,
};

pub const IDevice = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        CreateBuffer: extern fn (*Interface, *const BufferDesc, ?*const SubresourceData, ?**IBuffer) HRESULT,
        CreateTexture1D: extern fn (*Interface, *const Texture1DDesc, ?*const SubresourceData, ?**ITexture1D) HRESULT,
        CreateTexture2D: extern fn (*Interface, *const Texture2DDesc, ?*const SubresourceData, ?**ITexture2D) HRESULT,
        CreateTexture3D: extern fn (*Interface, *const Texture3DDesc, ?*const SubresourceData, ?**ITexture3D) HRESULT,
        CreateShaderResourceView: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IShaderResourceView) HRESULT,
        CreateUnorderedAccessView: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IUnorderedAccessView) HRESULT,
        CreateRenderTargetView: extern fn (*Interface, *IResource, ?*const RenderTargetViewDesc, ?**IRenderTargetView) HRESULT,
        CreateDepthStencilView: extern fn (*Interface, *IResource, ?*const DepthStencilDesc, ?**IDepthStencilView) HRESULT,
        CreateInputLayout: extern fn (*Interface, *const InputElementDesc, UINT, [*]const BYTE, SIZE_T, ?**IInputLayout) HRESULT,
        CreateVertexShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IVertexShader) HRESULT,
        CreateGeometryShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
        CreateGeometryShaderWithStreamOutput: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*const SODeclarationEntry, UINT, *const UINT, UINT, UINT, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
        CreatePixelShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IPixelShader) HRESULT,
        CreateHullShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, **IHullShader) HRESULT,
        CreateDomainShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IDomainShader) HRESULT,
        CreateComputeShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IComputeShader) HRESULT,
        CreateClassLinkage: extern fn (*Interface, **IClassLinkage) HRESULT,
        CreateBlendState: extern fn (*Interface, *const BlendDesc, **IBlendState) HRESULT,
        CreateDepthStencilState: extern fn (*Interface, *const DepthStencilDesc, **IDepthStencilState) HRESULT,
        CreateRasterizerState: extern fn (*Interface, *const RasterizerDesc, **IRasterizerState) HRESULT,
        CreateSamplerState: extern fn (*Interface, *const SamplerDesc, **ISamplerState) HRESULT,
        CreateQuery: extern fn (*Interface, *const QueryDesc, **IQuery) HRESULT,
        CreatePredicate: extern fn (*Interface, *const QueryDesc, **IPredicate) HRESULT,
        CreateCounter: extern fn (*Interface, *const CounterDesc, **ICounter) HRESULT,
        CreateDeferredContext: extern fn (*Interface, UINT, **InterfaceContext) HRESULT,
        OpenSharedResource: extern fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
        CheckFormatSupport: extern fn (*Interface, DXGIFormat, *UINT) HRESULT,
        CheckMultisampleQualityLevels: extern fn (*Interface, DXGIFormat, UINT, *UINT) HRESULT,
        CheckCounterInfo: extern fn (*Interface, *CounterInfo) void,
        CheckCounter: extern fn (*Interface, *const CounterDesc, *CounterType, *UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT) HRESULT,
        CheckFeatureSupport: extern fn (*Interface, Feature, [*]BYTE, UINT) HRESULT,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, [*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetFeatureLevel: extern fn (*Interface) FeatureLevel,
        GetCreationFlags: extern fn (*Interface) UINT,
        GetDeviceRemovedReason: extern fn (*Interface) HRESULT,
        GetImmediateContext: extern fn (*Interface, **InterfaceContext) void,
        SetExceptionMode: extern fn (*Interface, UINT) HRESULT,
        GetExceptionMode: extern fn (*Interface) UINT,
    };

    lpVtbl: *VTable,
};

pub const IDevice1 = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        CreateBuffer: extern fn (*Interface, *const BufferDesc, ?*const SubresourceData, ?**IBuffer) HRESULT,
        CreateTexture1D: extern fn (*Interface, *const Texture1DDesc, ?*const SubresourceData, ?**ITexture1D) HRESULT,
        CreateTexture2D: extern fn (*Interface, *const Texture2DDesc, ?*const SubresourceData, ?**ITexture2D) HRESULT,
        CreateTexture3D: extern fn (*Interface, *const Texture3DDesc, ?*const SubresourceData, ?**ITexture3D) HRESULT,
        CreateShaderResourceView: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IShaderResourceView) HRESULT,
        CreateUnorderedAccessView: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IUnorderedAccessView) HRESULT,
        CreateRenderTargetView: extern fn (*Interface, *IResource, ?*const RenderTargetViewDesc, ?**IRenderTargetView) HRESULT,
        CreateDepthStencilView: extern fn (*Interface, *IResource, ?*const DepthStencilDesc, ?**IDepthStencilView) HRESULT,
        CreateInputLayout: extern fn (*Interface, *const InputElementDesc, UINT, [*]const BYTE, SIZE_T, ?**IInputLayout) HRESULT,
        CreateVertexShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IVertexShader) HRESULT,
        CreateGeometryShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
        CreateGeometryShaderWithStreamOutput: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*const SODeclarationEntry, UINT, *const UINT, UINT, UINT, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
        CreatePixelShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IPixelShader) HRESULT,
        CreateHullShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, **IHullShader) HRESULT,
        CreateDomainShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IDomainShader) HRESULT,
        CreateComputeShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IComputeShader) HRESULT,
        CreateClassLinkage: extern fn (*Interface, **IClassLinkage) HRESULT,
        CreateBlendState: extern fn (*Interface, *const BlendDesc, **IBlendState) HRESULT,
        CreateDepthStencilState: extern fn (*Interface, *const DepthStencilDesc, **IDepthStencilState) HRESULT,
        CreateRasterizerState: extern fn (*Interface, *const RasterizerDesc, **IRasterizerState) HRESULT,
        CreateSamplerState: extern fn (*Interface, *const SamplerDesc, **ISamplerState) HRESULT,
        CreateQuery: extern fn (*Interface, *const QueryDesc, **IQuery) HRESULT,
        CreatePredicate: extern fn (*Interface, *const QueryDesc, **IPredicate) HRESULT,
        CreateCounter: extern fn (*Interface, *const CounterDesc, **ICounter) HRESULT,
        CreateDeferredContext: extern fn (*Interface, UINT, **InterfaceContext) HRESULT,
        OpenSharedResource: extern fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
        CheckFormatSupport: extern fn (*Interface, DXGIFormat, *UINT) HRESULT,
        CheckMultisampleQualityLevels: extern fn (*Interface, DXGIFormat, UINT, *UINT) HRESULT,
        CheckCounterInfo: extern fn (*Interface, *CounterInfo) void,
        CheckCounter: extern fn (*Interface, *const CounterDesc, *CounterType, *UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT) HRESULT,
        CheckFeatureSupport: extern fn (*Interface, Feature, [*]BYTE, UINT) HRESULT,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, [*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetFeatureLevel: extern fn (*Interface) FeatureLevel,
        GetCreationFlags: extern fn (*Interface) UINT,
        GetDeviceRemovedReason: extern fn (*Interface) HRESULT,
        GetImmediateContext: extern fn (*Interface, **InterfaceContext) void,
        SetExceptionMode: extern fn (*Interface, UINT) HRESULT,
        GetExceptionMode: extern fn (*Interface) UINT,
        CreateBlendState1: extern fn (*Interface, *const BlendDesc1, **IBlendState1) HRESULT,
        CreateDeferredContext1: extern fn (*Interface, UINT, **IDeviceContext1) HRESULT,
        CreateDeviceContextState: extern fn (*Interface, UINT, [*]const FeatureLevel, UINT, UINT, *const GUID, *FeatureLevel, **IDeviceContextState) HRESULT,
        CreateRasterizerState1: extern fn (*Interface, *const RasterizerDesc1, **IRasterizerState1) HRESULT,
        GetImmediateContext1: extern fn (*Interface, **IDeviceContext1) void,
        OpenSharedResource1: extern fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
        OpenSharedResourceByName: extern fn (*Interface, LPCWSTR, DWORD, *const GUID, **IResource) HRESULT,
    };

    lpVtbl: *VTable,
};

pub const IDevice2 = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        CreateBuffer: extern fn (*Interface, *const BufferDesc, ?*const SubresourceData, ?**IBuffer) HRESULT,
        CreateTexture1D: extern fn (*Interface, *const Texture1DDesc, ?*const SubresourceData, ?**ITexture1D) HRESULT,
        CreateTexture2D: extern fn (*Interface, *const Texture2DDesc, ?*const SubresourceData, ?**ITexture2D) HRESULT,
        CreateTexture3D: extern fn (*Interface, *const Texture3DDesc, ?*const SubresourceData, ?**ITexture3D) HRESULT,
        CreateShaderResourceView: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IShaderResourceView) HRESULT,
        CreateUnorderedAccessView: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IUnorderedAccessView) HRESULT,
        CreateRenderTargetView: extern fn (*Interface, *IResource, ?*const RenderTargetViewDesc, ?**IRenderTargetView) HRESULT,
        CreateDepthStencilView: extern fn (*Interface, *IResource, ?*const DepthStencilDesc, ?**IDepthStencilView) HRESULT,
        CreateInputLayout: extern fn (*Interface, *const InputElementDesc, UINT, [*]const BYTE, SIZE_T, ?**IInputLayout) HRESULT,
        CreateVertexShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IVertexShader) HRESULT,
        CreateGeometryShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
        CreateGeometryShaderWithStreamOutput: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*const SODeclarationEntry, UINT, *const UINT, UINT, UINT, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
        CreatePixelShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IPixelShader) HRESULT,
        CreateHullShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, **IHullShader) HRESULT,
        CreateDomainShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IDomainShader) HRESULT,
        CreateComputeShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IComputeShader) HRESULT,
        CreateClassLinkage: extern fn (*Interface, **IClassLinkage) HRESULT,
        CreateBlendState: extern fn (*Interface, *const BlendDesc, **IBlendState) HRESULT,
        CreateDepthStencilState: extern fn (*Interface, *const DepthStencilDesc, **IDepthStencilState) HRESULT,
        CreateRasterizerState: extern fn (*Interface, *const RasterizerDesc, **IRasterizerState) HRESULT,
        CreateSamplerState: extern fn (*Interface, *const SamplerDesc, **ISamplerState) HRESULT,
        CreateQuery: extern fn (*Interface, *const QueryDesc, **IQuery) HRESULT,
        CreatePredicate: extern fn (*Interface, *const QueryDesc, **IPredicate) HRESULT,
        CreateCounter: extern fn (*Interface, *const CounterDesc, **ICounter) HRESULT,
        CreateDeferredContext: extern fn (*Interface, UINT, **InterfaceContext) HRESULT,
        OpenSharedResource: extern fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
        CheckFormatSupport: extern fn (*Interface, DXGIFormat, *UINT) HRESULT,
        CheckMultisampleQualityLevels: extern fn (*Interface, DXGIFormat, UINT, *UINT) HRESULT,
        CheckCounterInfo: extern fn (*Interface, *CounterInfo) void,
        CheckCounter: extern fn (*Interface, *const CounterDesc, *CounterType, *UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT) HRESULT,
        CheckFeatureSupport: extern fn (*Interface, Feature, [*]BYTE, UINT) HRESULT,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, [*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetFeatureLevel: extern fn (*Interface) FeatureLevel,
        GetCreationFlags: extern fn (*Interface) UINT,
        GetDeviceRemovedReason: extern fn (*Interface) HRESULT,
        GetImmediateContext: extern fn (*Interface, **InterfaceContext) void,
        SetExceptionMode: extern fn (*Interface, UINT) HRESULT,
        GetExceptionMode: extern fn (*Interface) UINT,
        CreateBlendState1: extern fn (*Interface, *const BlendDesc1, **IBlendState1) HRESULT,
        CreateDeferredContext1: extern fn (*Interface, UINT, **IDeviceContext1) HRESULT,
        CreateDeviceContextState: extern fn (*Interface, UINT, [*]const FeatureLevel, UINT, UINT, *const GUID, *FeatureLevel, **IDeviceContextState) HRESULT,
        CreateRasterizerState1: extern fn (*Interface, *const RasterizerDesc1, **IRasterizerState1) HRESULT,
        GetImmediateContext1: extern fn (*Interface, **IDeviceContext1) void,
        OpenSharedResource1: extern fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
        OpenSharedResourceByName: extern fn (*Interface, LPCWSTR, DWORD, *const GUID, **IResource) HRESULT,
        CheckMultisampleQualityLevels1: extern fn (*Interface, DXGIFormat, UINT, UINT, *UINT) HRESULT,
        CreateDeferredContext2: extern fn (*Interface, UINT, **IDeviceContext2) HRESULT,
        GetImmediateContext2: extern fn (*Interface, **IDeviceContext2) HRESULT,
        GetResourceTiling: extern fn (*Interface, *IResource, *UINT, *PackedMipDesc, *TileShape, *UINT, UINT, *SubresourceTiling) void,
    };

    lpVtbl: *VTable,
};

pub const IDevice3 = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        CreateBuffer: extern fn (*Interface, *const BufferDesc, ?*const SubresourceData, ?**IBuffer) HRESULT,
        CreateTexture1D: extern fn (*Interface, *const Texture1DDesc, ?*const SubresourceData, ?**ITexture1D) HRESULT,
        CreateTexture2D: extern fn (*Interface, *const Texture2DDesc, ?*const SubresourceData, ?**ITexture2D) HRESULT,
        CreateTexture3D: extern fn (*Interface, *const Texture3DDesc, ?*const SubresourceData, ?**ITexture3D) HRESULT,
        CreateShaderResourceView: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IShaderResourceView) HRESULT,
        CreateUnorderedAccessView: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IUnorderedAccessView) HRESULT,
        CreateRenderTargetView: extern fn (*Interface, *IResource, ?*const RenderTargetViewDesc, ?**IRenderTargetView) HRESULT,
        CreateDepthStencilView: extern fn (*Interface, *IResource, ?*const DepthStencilDesc, ?**IDepthStencilView) HRESULT,
        CreateInputLayout: extern fn (*Interface, *const InputElementDesc, UINT, [*]const BYTE, SIZE_T, ?**IInputLayout) HRESULT,
        CreateVertexShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IVertexShader) HRESULT,
        CreateGeometryShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
        CreateGeometryShaderWithStreamOutput: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*const SODeclarationEntry, UINT, *const UINT, UINT, UINT, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
        CreatePixelShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IPixelShader) HRESULT,
        CreateHullShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, **IHullShader) HRESULT,
        CreateDomainShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IDomainShader) HRESULT,
        CreateComputeShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IComputeShader) HRESULT,
        CreateClassLinkage: extern fn (*Interface, **IClassLinkage) HRESULT,
        CreateBlendState: extern fn (*Interface, *const BlendDesc, **IBlendState) HRESULT,
        CreateDepthStencilState: extern fn (*Interface, *const DepthStencilDesc, **IDepthStencilState) HRESULT,
        CreateRasterizerState: extern fn (*Interface, *const RasterizerDesc, **IRasterizerState) HRESULT,
        CreateSamplerState: extern fn (*Interface, *const SamplerDesc, **ISamplerState) HRESULT,
        CreateQuery: extern fn (*Interface, *const QueryDesc, **IQuery) HRESULT,
        CreatePredicate: extern fn (*Interface, *const QueryDesc, **IPredicate) HRESULT,
        CreateCounter: extern fn (*Interface, *const CounterDesc, **ICounter) HRESULT,
        CreateDeferredContext: extern fn (*Interface, UINT, **InterfaceContext) HRESULT,
        OpenSharedResource: extern fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
        CheckFormatSupport: extern fn (*Interface, DXGIFormat, *UINT) HRESULT,
        CheckMultisampleQualityLevels: extern fn (*Interface, DXGIFormat, UINT, *UINT) HRESULT,
        CheckCounterInfo: extern fn (*Interface, *CounterInfo) void,
        CheckCounter: extern fn (*Interface, *const CounterDesc, *CounterType, *UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT) HRESULT,
        CheckFeatureSupport: extern fn (*Interface, Feature, [*]BYTE, UINT) HRESULT,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, [*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetFeatureLevel: extern fn (*Interface) FeatureLevel,
        GetCreationFlags: extern fn (*Interface) UINT,
        GetDeviceRemovedReason: extern fn (*Interface) HRESULT,
        GetImmediateContext: extern fn (*Interface, **InterfaceContext) void,
        SetExceptionMode: extern fn (*Interface, UINT) HRESULT,
        GetExceptionMode: extern fn (*Interface) UINT,
        CreateBlendState1: extern fn (*Interface, *const BlendDesc1, **IBlendState1) HRESULT,
        CreateDeferredContext1: extern fn (*Interface, UINT, **IDeviceContext1) HRESULT,
        CreateDeviceContextState: extern fn (*Interface, UINT, [*]const FeatureLevel, UINT, UINT, *const GUID, *FeatureLevel, **IDeviceContextState) HRESULT,
        CreateRasterizerState1: extern fn (*Interface, *const RasterizerDesc1, **IRasterizerState1) HRESULT,
        GetImmediateContext1: extern fn (*Interface, **IDeviceContext1) void,
        OpenSharedResource1: extern fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
        OpenSharedResourceByName: extern fn (*Interface, LPCWSTR, DWORD, *const GUID, **IResource) HRESULT,
        CheckMultisampleQualityLevels1: extern fn (*Interface, DXGIFormat, UINT, UINT, *UINT) HRESULT,
        CreateDeferredContext2: extern fn (*Interface, UINT, **IDeviceContext2) HRESULT,
        GetImmediateContext2: extern fn (*Interface, **IDeviceContext2) HRESULT,
        GetResourceTiling: extern fn (*Interface, *IResource, *UINT, *PackedMipDesc, *TileShape, *UINT, UINT, *SubresourceTiling) void,
        CreateDeferredContext3: extern fn (*Interface, UINT, **IDeviceContext3) HRESULT,
        CreateQuery1: extern fn (*Interface, *const QueryDesc1, ?**IQuery) HRESULT,
        CreateRasterizerState2: extern fn (*Interface, *RasterizerDesc2, ?**IRasterizerState2) HRESULT,
        CreateRenderTargetView1: extern fn (*Interface, ?*const RenderTargetViewDesc1, ?**IRenderTargetView1) HRESULT,
        CreateShaderResourceView1: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc1, ?**IShaderResourceView1) HRESULT,
        CreateTexture2D1: extern fn (*Interface, *const Texture2DDesc1, ?*const SubresourceData, ?**ITexture2D1) HRESULT,
        CreateTexture3D1: extern fn (*Interface, *const Texture3DDesc1, ?*const SubresourceData, ?**ITexture3D1) HRESULT,
        CreateUnorderedAccessView1: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc1, ?**IUnorderedAccessView1) HRESULT,
        GetImmediateContext3: extern fn (*Interface, **IDeviceContext3) HRESULT,
        ReadFromSubresource: extern fn (*Interface, [*]BYTE, UINT, UINT, *IResource, UINT, *const Box) void,
        WriteToSubresource: extern fn (*Interface, *IResource, UINT, *const Box, [*]const BYTE, UINT, UINT) void,
    };

    lpVtbl: *VTable,
};

pub const IDevice4 = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        CreateBuffer: extern fn (*Interface, *const BufferDesc, ?*const SubresourceData, ?**IBuffer) HRESULT,
        CreateTexture1D: extern fn (*Interface, *const Texture1DDesc, ?*const SubresourceData, ?**ITexture1D) HRESULT,
        CreateTexture2D: extern fn (*Interface, *const Texture2DDesc, ?*const SubresourceData, ?**ITexture2D) HRESULT,
        CreateTexture3D: extern fn (*Interface, *const Texture3DDesc, ?*const SubresourceData, ?**ITexture3D) HRESULT,
        CreateShaderResourceView: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IShaderResourceView) HRESULT,
        CreateUnorderedAccessView: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IUnorderedAccessView) HRESULT,
        CreateRenderTargetView: extern fn (*Interface, *IResource, ?*const RenderTargetViewDesc, ?**IRenderTargetView) HRESULT,
        CreateDepthStencilView: extern fn (*Interface, *IResource, ?*const DepthStencilDesc, ?**IDepthStencilView) HRESULT,
        CreateInputLayout: extern fn (*Interface, *const InputElementDesc, UINT, [*]const BYTE, SIZE_T, ?**IInputLayout) HRESULT,
        CreateVertexShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IVertexShader) HRESULT,
        CreateGeometryShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
        CreateGeometryShaderWithStreamOutput: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*const SODeclarationEntry, UINT, *const UINT, UINT, UINT, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
        CreatePixelShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IPixelShader) HRESULT,
        CreateHullShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, **IHullShader) HRESULT,
        CreateDomainShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IDomainShader) HRESULT,
        CreateComputeShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IComputeShader) HRESULT,
        CreateClassLinkage: extern fn (*Interface, **IClassLinkage) HRESULT,
        CreateBlendState: extern fn (*Interface, *const BlendDesc, **IBlendState) HRESULT,
        CreateDepthStencilState: extern fn (*Interface, *const DepthStencilDesc, **IDepthStencilState) HRESULT,
        CreateRasterizerState: extern fn (*Interface, *const RasterizerDesc, **IRasterizerState) HRESULT,
        CreateSamplerState: extern fn (*Interface, *const SamplerDesc, **ISamplerState) HRESULT,
        CreateQuery: extern fn (*Interface, *const QueryDesc, **IQuery) HRESULT,
        CreatePredicate: extern fn (*Interface, *const QueryDesc, **IPredicate) HRESULT,
        CreateCounter: extern fn (*Interface, *const CounterDesc, **ICounter) HRESULT,
        CreateDeferredContext: extern fn (*Interface, UINT, **InterfaceContext) HRESULT,
        OpenSharedResource: extern fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
        CheckFormatSupport: extern fn (*Interface, DXGIFormat, *UINT) HRESULT,
        CheckMultisampleQualityLevels: extern fn (*Interface, DXGIFormat, UINT, *UINT) HRESULT,
        CheckCounterInfo: extern fn (*Interface, *CounterInfo) void,
        CheckCounter: extern fn (*Interface, *const CounterDesc, *CounterType, *UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT) HRESULT,
        CheckFeatureSupport: extern fn (*Interface, Feature, [*]BYTE, UINT) HRESULT,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, [*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetFeatureLevel: extern fn (*Interface) FeatureLevel,
        GetCreationFlags: extern fn (*Interface) UINT,
        GetDeviceRemovedReason: extern fn (*Interface) HRESULT,
        GetImmediateContext: extern fn (*Interface, **InterfaceContext) void,
        SetExceptionMode: extern fn (*Interface, UINT) HRESULT,
        GetExceptionMode: extern fn (*Interface) UINT,
        CreateBlendState1: extern fn (*Interface, *const BlendDesc1, **IBlendState1) HRESULT,
        CreateDeferredContext1: extern fn (*Interface, UINT, **IDeviceContext1) HRESULT,
        CreateDeviceContextState: extern fn (*Interface, UINT, [*]const FeatureLevel, UINT, UINT, *const GUID, *FeatureLevel, **IDeviceContextState) HRESULT,
        CreateRasterizerState1: extern fn (*Interface, *const RasterizerDesc1, **IRasterizerState1) HRESULT,
        GetImmediateContext1: extern fn (*Interface, **IDeviceContext1) void,
        OpenSharedResource1: extern fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
        OpenSharedResourceByName: extern fn (*Interface, LPCWSTR, DWORD, *const GUID, **IResource) HRESULT,
        CheckMultisampleQualityLevels1: extern fn (*Interface, DXGIFormat, UINT, UINT, *UINT) HRESULT,
        CreateDeferredContext2: extern fn (*Interface, UINT, **IDeviceContext2) HRESULT,
        GetImmediateContext2: extern fn (*Interface, **IDeviceContext2) HRESULT,
        GetResourceTiling: extern fn (*Interface, *IResource, *UINT, *PackedMipDesc, *TileShape, *UINT, UINT, *SubresourceTiling) void,
        CreateDeferredContext3: extern fn (*Interface, UINT, **IDeviceContext3) HRESULT,
        CreateQuery1: extern fn (*Interface, *const QueryDesc1, ?**IQuery) HRESULT,
        CreateRasterizerState2: extern fn (*Interface, *RasterizerDesc2, ?**IRasterizerState2) HRESULT,
        CreateRenderTargetView1: extern fn (*Interface, ?*const RenderTargetViewDesc1, ?**IRenderTargetView1) HRESULT,
        CreateShaderResourceView1: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc1, ?**IShaderResourceView1) HRESULT,
        CreateTexture2D1: extern fn (*Interface, *const Texture2DDesc1, ?*const SubresourceData, ?**ITexture2D1) HRESULT,
        CreateTexture3D1: extern fn (*Interface, *const Texture3DDesc1, ?*const SubresourceData, ?**ITexture3D1) HRESULT,
        CreateUnorderedAccessView1: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc1, ?**IUnorderedAccessView1) HRESULT,
        GetImmediateContext3: extern fn (*Interface, **IDeviceContext3) HRESULT,
        ReadFromSubresource: extern fn (*Interface, [*]BYTE, UINT, UINT, *IResource, UINT, *const Box) void,
        WriteToSubresource: extern fn (*Interface, *IResource, UINT, *const Box, [*]const BYTE, UINT, UINT) void,
        RegisterDeviceRemovedEvent: extern fn (*Interface, HANDLE, *DWORD) HRESULT,
        UnregisterDeviceRemoved: extern fn (*Interface, DWORD) void,
    };

    lpVtbl: *VTable,
};

pub const IDevice5 = extern struct {
    const Interface = @This();
    
    pub const VTable = extern struct {
        QueryInterface: extern fn (*Interface, *const GUID, *?*c_void) HRESULT,
        AddRef: extern fn (*Interface) ULONG,
        Release: extern fn (*Interface) ULONG,
        CreateBuffer: extern fn (*Interface, *const BufferDesc, ?*const SubresourceData, ?**IBuffer) HRESULT,
        CreateTexture1D: extern fn (*Interface, *const Texture1DDesc, ?*const SubresourceData, ?**ITexture1D) HRESULT,
        CreateTexture2D: extern fn (*Interface, *const Texture2DDesc, ?*const SubresourceData, ?**ITexture2D) HRESULT,
        CreateTexture3D: extern fn (*Interface, *const Texture3DDesc, ?*const SubresourceData, ?**ITexture3D) HRESULT,
        CreateShaderResourceView: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IShaderResourceView) HRESULT,
        CreateUnorderedAccessView: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc, ?**IUnorderedAccessView) HRESULT,
        CreateRenderTargetView: extern fn (*Interface, *IResource, ?*const RenderTargetViewDesc, ?**IRenderTargetView) HRESULT,
        CreateDepthStencilView: extern fn (*Interface, *IResource, ?*const DepthStencilDesc, ?**IDepthStencilView) HRESULT,
        CreateInputLayout: extern fn (*Interface, *const InputElementDesc, UINT, [*]const BYTE, SIZE_T, ?**IInputLayout) HRESULT,
        CreateVertexShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IVertexShader) HRESULT,
        CreateGeometryShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
        CreateGeometryShaderWithStreamOutput: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*const SODeclarationEntry, UINT, *const UINT, UINT, UINT, ?*IClassLinkage, ?**IGeometryShader) HRESULT,
        CreatePixelShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IPixelShader) HRESULT,
        CreateHullShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, **IHullShader) HRESULT,
        CreateDomainShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IDomainShader) HRESULT,
        CreateComputeShader: extern fn (*Interface, [*]const BYTE, SIZE_T, ?*IClassLinkage, ?**IComputeShader) HRESULT,
        CreateClassLinkage: extern fn (*Interface, **IClassLinkage) HRESULT,
        CreateBlendState: extern fn (*Interface, *const BlendDesc, **IBlendState) HRESULT,
        CreateDepthStencilState: extern fn (*Interface, *const DepthStencilDesc, **IDepthStencilState) HRESULT,
        CreateRasterizerState: extern fn (*Interface, *const RasterizerDesc, **IRasterizerState) HRESULT,
        CreateSamplerState: extern fn (*Interface, *const SamplerDesc, **ISamplerState) HRESULT,
        CreateQuery: extern fn (*Interface, *const QueryDesc, **IQuery) HRESULT,
        CreatePredicate: extern fn (*Interface, *const QueryDesc, **IPredicate) HRESULT,
        CreateCounter: extern fn (*Interface, *const CounterDesc, **ICounter) HRESULT,
        CreateDeferredContext: extern fn (*Interface, UINT, **InterfaceContext) HRESULT,
        OpenSharedResource: extern fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
        CheckFormatSupport: extern fn (*Interface, DXGIFormat, *UINT) HRESULT,
        CheckMultisampleQualityLevels: extern fn (*Interface, DXGIFormat, UINT, *UINT) HRESULT,
        CheckCounterInfo: extern fn (*Interface, *CounterInfo) void,
        CheckCounter: extern fn (*Interface, *const CounterDesc, *CounterType, *UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT, ?LPSTR, ?*UINT) HRESULT,
        CheckFeatureSupport: extern fn (*Interface, Feature, [*]BYTE, UINT) HRESULT,
        GetPrivateData: extern fn (*Interface, *const GUID, *UINT, [*]BYTE) HRESULT,
        SetPrivateData: extern fn (*Interface, *const GUID, UINT, [*]const BYTE) HRESULT,
        SetPrivateDataInterface: extern fn (*Interface, *const GUID, *const IUnknown) HRESULT,
        GetFeatureLevel: extern fn (*Interface) FeatureLevel,
        GetCreationFlags: extern fn (*Interface) UINT,
        GetDeviceRemovedReason: extern fn (*Interface) HRESULT,
        GetImmediateContext: extern fn (*Interface, **InterfaceContext) void,
        SetExceptionMode: extern fn (*Interface, UINT) HRESULT,
        GetExceptionMode: extern fn (*Interface) UINT,
        CreateBlendState1: extern fn (*Interface, *const BlendDesc1, **IBlendState1) HRESULT,
        CreateDeferredContext1: extern fn (*Interface, UINT, **IDeviceContext1) HRESULT,
        CreateDeviceContextState: extern fn (*Interface, UINT, [*]const FeatureLevel, UINT, UINT, *const GUID, *FeatureLevel, **IDeviceContextState) HRESULT,
        CreateRasterizerState1: extern fn (*Interface, *const RasterizerDesc1, **IRasterizerState1) HRESULT,
        GetImmediateContext1: extern fn (*Interface, **IDeviceContext1) void,
        OpenSharedResource1: extern fn (*Interface, HANDLE, *const GUID, **IResource) HRESULT,
        OpenSharedResourceByName: extern fn (*Interface, LPCWSTR, DWORD, *const GUID, **IResource) HRESULT,
        CheckMultisampleQualityLevels1: extern fn (*Interface, DXGIFormat, UINT, UINT, *UINT) HRESULT,
        CreateDeferredContext2: extern fn (*Interface, UINT, **IDeviceContext2) HRESULT,
        GetImmediateContext2: extern fn (*Interface, **IDeviceContext2) HRESULT,
        GetResourceTiling: extern fn (*Interface, *IResource, *UINT, *PackedMipDesc, *TileShape, *UINT, UINT, *SubresourceTiling) void,
        CreateDeferredContext3: extern fn (*Interface, UINT, **IDeviceContext3) HRESULT,
        CreateQuery1: extern fn (*Interface, *const QueryDesc1, ?**IQuery) HRESULT,
        CreateRasterizerState2: extern fn (*Interface, *RasterizerDesc2, ?**IRasterizerState2) HRESULT,
        CreateRenderTargetView1: extern fn (*Interface, ?*const RenderTargetViewDesc1, ?**IRenderTargetView1) HRESULT,
        CreateShaderResourceView1: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc1, ?**IShaderResourceView1) HRESULT,
        CreateTexture2D1: extern fn (*Interface, *const Texture2DDesc1, ?*const SubresourceData, ?**ITexture2D1) HRESULT,
        CreateTexture3D1: extern fn (*Interface, *const Texture3DDesc1, ?*const SubresourceData, ?**ITexture3D1) HRESULT,
        CreateUnorderedAccessView1: extern fn (*Interface, *IResource, ?*const ShaderResourceViewDesc1, ?**IUnorderedAccessView1) HRESULT,
        GetImmediateContext3: extern fn (*Interface, **IDeviceContext3) HRESULT,
        ReadFromSubresource: extern fn (*Interface, [*]BYTE, UINT, UINT, *IResource, UINT, *const Box) void,
        WriteToSubresource: extern fn (*Interface, *IResource, UINT, *const Box, [*]const BYTE, UINT, UINT) void,
        RegisterDeviceRemovedEvent: extern fn (*Interface, HANDLE, *DWORD) HRESULT,
        UnregisterDeviceRemoved: extern fn (*Interface, DWORD) void,
        CreateFence: extern fn (*Interface, UINT64, FenceFlag, *const GUID, **IFence) HRESULT,
        OpenSharedFence: extern fn (*Interface, HANDLE, *const GUID, **IFence) HRESULT,
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
