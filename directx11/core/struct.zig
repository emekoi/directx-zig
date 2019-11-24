//
//  Copyright (c) 2019 emekoi
//
//  This library is free software; you can redistribute it and/or modify it
//  under the terms of the MIT license. See LICENSE for details.
//

usingnamespace @import("enum.zig");
usingnamespace @import("../../types.zig");

pub const BlendDesc = extern struct {
    AlphaToCoverageEnable: BOOL,
    IndependentBlendEnable: BOOL,
    RenderTarget: [8]RenderTargetBlendDesc,
};

pub const BlendDesc1 = extern struct {
    AlphaToCoverageEnable: BOOL,
    IndependentBlendEnable: BOOL,
    RenderTarget: [8]RenderTargetBlendDesc1,
};

pub const Box = extern struct {
    left: UINT,
    top: UINT,
    front: UINT,
    right: UINT,
    bottom: UINT,
    back: UINT,
};

pub const CounterDesc = extern struct {
    Counter: Counter,
    MiscFlags: UINT,
};

pub const CounterInfo = extern struct {
    LastDeviceDependentCounter: Counter,
    NumSimultaneousCounters: UINT,
    NumDetectableParallelUnits: UINT8,
};

pub const DepthStencilDesc = extern struct {
    DepthEnable: BOOL,
    DepthWriteMask: DepthWriteMask,
    DepthFunc: ComparisonFunc,
    StencilEnable: BOOL,
    StencilReadMask: UINT8,
    StencilWriteMask: UINT8,
    FrontFace: DepthStencilOpDesc,
    BackFace: DepthStencilOpDesc,
};

pub const DepthStencilOpDesc = extern struct {
    StencilFailOp: StencilOp,
    StencilDepthFailOp: StencilOp,
    StencilPassOp: StencilOp,
    StencilFunc: ComparisonFunc,
};

pub const DrawIndexedInstancedIndirectArgs = extern struct {
    IndexCountPerInstance: UINT,
    InstanceCount: UINT,
    StartIndexLocation: UINT,
    BaseVertexLocation: INT,
    StartInstanceLocation: UINT,
};

pub const DrawInstancedIndirectArgs = extern struct {
    VertexCountPerInstance: UINT,
    InstanceCount: UINT,
    StartVertexLocation: UINT,
    StartInstanceLocation: UINT,
};

pub const FeatureDataArchitectureInfo = extern struct {
    TileBasedDeferredRenderer: BOOL,
};

pub const FeatureDataD3D9Options = extern struct {
    FullNonPow2TextureSupport: BOOL,
};

pub const FeatureDataD3D9Options1 = extern struct {
    FullNonPow2TextureSupported: BOOL,
    DepthAsTextureWithLessEqualComparisonFilterSupported: BOOL,
    SimpleInstancingSupported: BOOL,
    TextureCubeFaceRenderTargetWithNonCubeDepthStencilSupported: BOOL,
};

pub const FeatureDataD3D9ShadowSupport = extern struct {
    SupportsDepthAsTextureWithLessEqualComparisonFilter: BOOL,
};

pub const FeatureDataD3D9SimpleInstancingSupport = extern struct {
    SimpleInstancingSupported: BOOL,
};

pub const FeatureDataD3D10XHardwareOptions = extern struct {
    ComputeShadersPlusRawAndStructuredBuffersViaShader4X: BOOL,
};

pub const FeatureDataD3D11Options = extern struct {
    OutputMergerLogicOp: BOOL,
    UAVOnlyRenderingForcedSampleCount: BOOL,
    DiscardAPIsSeenByDriver: BOOL,
    FlagsForUpdateAndCopySeenByDriver: BOOL,
    ClearView: BOOL,
    CopyWithOverlap: BOOL,
    ConstantBufferPartialUpdate: BOOL,
    ConstantBufferOffsetting: BOOL,
    MapNoOverwriteOnDynamicConstantBuffer: BOOL,
    MapNoOverwriteOnDynamicBufferSRV: BOOL,
    MultisampleRTVWithForcedSampleCountOne: BOOL,
    SAD4ShaderInstructions: BOOL,
    ExtendedDoublesShaderInstructions: BOOL,
    ExtendedResourceSharing: BOOL,
};

pub const FeatureDataD3D11Options1 = extern struct {
    TiledResourcesTier: TiledResourcesTier,
    MinMaxFiltering: BOOL,
    ClearViewAlsoSupportsDepthOnlyFormats: BOOL,
    MapOnDefaultBuffers: BOOL,
};

pub const FeatureDataD3D11Options2 = extern struct {
    PSSpecifiedStencilRefSupported: BOOL,
    TypedUAVLoadAdditionalFormats: BOOL,
    ROVsSupported: BOOL,
    ConservativeRasterizationTier: ConservativeRasterizationTier,
    TiledResourcesTier: TiledResourcesTier,
    MapOnDefaultTextures: BOOL,
    StandardSwizzle: BOOL,
    UnifiedMemoryArchitecture: BOOL,
};

pub const FeatureDataD3D11Options3 = extern struct {
    VPAndRTArrayIndexFromAnyShaderFeedingRasterizer: BOOL,
};

pub const FeatureDataD3D11Options4 = extern struct {
    ExtendedNV12SharedTextureSupported: BOOL,
};

pub const FeatureDataDoubles = extern struct {
    DoublePrecisionFloatShaderOps: BOOL,
};

pub const FeatureDataFormatSupport = extern enum {
    InFormat: DXGIFormat,
    OutFormatSupport: UINT,
};

pub const FeatureDataFormatSupport2 = extern enum {
    InFormat: DXGIFormat,
    OutFormatSupport2: UINT,
};

pub const FeatureDataGPUVirtualAddressSupport = extern struct {
    MaxGPUVirtualAddressBitsPerProcess: UINT,
    MaxGPUVirtualAddressBitsPerResource: UINT,
};

pub const FeatureDataMarketSupport = extern struct {
    Profile: BOOL,
};

pub const FeatureDataShaderCache = extern struct {
    SupportFlags: UINT,
};

pub const FeatureDataShaderMinPrecisionSupport = extern struct {
    PixelShaderMinPrecision: UINT,
    AllOtherShaderStagesMinPrecision: UINT,
};

pub const FeatureDataThreading = extern struct {
    DriverConcurrentCreates: BOOL,
    DriverCommandLists: BOOL,
};

pub const InputeElementDesc = extern struct {
    SemanticName: LPCSTR,
    SemanticIndex: UINT,
    Format: DXGIFormat,
    InputSlot: UINT,
    AlignedByteOffset: UINT,
    InputSlotClass: InputClassification,
    InstanceDataStepRate: UINT,
};

pub const QueryPipelineStatistics = extern struct {
    IAVertices: UINT64,
    IAPrimitives: UINT64,
    VSInvocations: UINT64,
    GSInvocations: UINT64,
    GSPrimitives: UINT64,
    CInvocations: UINT64,
    CPrimitives: UINT64,
    PSInvocations: UINT64,
    HSInvocations: UINT64,
    DSInvocations: UINT64,
    CSInvocations: UINT64,
};

pub const QueryDataSOStatistics = extern struct {
    NumPrimitivesWritten: UINT64,
    PrimitivesStorageNeeded: UINT64,
};

pub const QueryDataTimestampDisjoint = extern struct {
    Frequency: UINT64,
    Disjoint: BOOL,
};

pub const QueryDesc = extern struct {
    Query: Query,
    MiscFlags: UINT,
};

pub const RasterizerDesc = extern struct {
    FillMode: FillMode,
    CullMode: CullMode,
    FrontCounterClockwise: BOOL,
    DepthBias: INT,
    DepthBiasClamp: FLOAT,
    SlopeScaledDepthBias: FLOAT,
    DepthClipEnable: BOOL,
    ScissorEnable: BOOL,
    MultisampleEnable: BOOL,
    AntialiasedLineEnable: BOOL,
};

pub const Rect = extern struct {
    left: LONG,
    top: LONG,
    right: LONG,
    bottom: LONG,
};

pub const RenderTargetBlendDesc = extern struct {
    BlendEnable: BOOL,
    SrcBlend: Blend,
    DestBlend: Blend,
    BlendOp: BlendOp,
    SrcBlendAlpha: Blend,
    DestBlendAlpha: Blend,
    BlendOpAlpha: BlendOp,
    RenderTargetWriteMask: UINT8,
};

pub const RenderTargetBlendDesc1 = extern struct {
    BlendEnable: BOOL,
    LogicOpEnable: BOOL,
    SrcBlend: Blend,
    DestBlend: Blend,
    BlendOp: BlendOp,
    SrcBlendAlpha: Blend,
    DestBlendAlpha: Blend,
    BlendOpAlpha: BlendOp,
    LogicOp: LogicOp,
    RenderTargetWriteMask: UINT8,
};

pub const SamplerDesc = extern struct {
    Filter: Filter,
    AddressU: TextureAddressMode,
    AddressV: TextureAddressMode,
    AddressW: TextureAddressMode,
    MipLODBias: FLOAT,
    MaxAnisotropy: UINT,
    ComparisonFunc: ComparisonFunc,
    BorderColor: [4]FLOAT,
    MinLOD: FLOAT,
    MaxLOD: FLOAT,
};

pub const SODeclarationEntry = extern struct {
    Stream: UINT,
    SemanticName: LPCSTR,
    SemanticIndex: UINT,
    StartComponent: BYTE,
    ComponentCount: BYTE,
    OutputSlot: BYTE,
};

pub const Viewport = extern struct {
    TopLeftX: FLOAT,
    TopLeftY: FLOAT,
    Width: FLOAT,
    Height: FLOAT,
    MinDepth: FLOAT,
    MaxDepth: FLOAT,
};
