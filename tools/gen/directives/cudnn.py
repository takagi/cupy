[
    # Setting
    ('CudaVersions', ['11.0']),
    ('Headers', ['cudnn.h']),
    ('Regexes', {
        'func': r'cudnn([A-Z].*)',
        'type': r'cudnn([A-Z].*)_t',
    }),
    ('SpecialTypes', {
    }),
    # cudnn_ops_infer.so Library
    ('Comment', 'cudnn_ops_infer.so Library'),
    ('cudnnCreate', {
        'out': 'handle',
        'except?': 0,
        'use_stream': False,
    }),
    ('cudnnDestroy', {
        'out': None,
        'use_stream': False,
    }),
    ('cudnnSetStream', {
        'out': None,
        'use_stream': False,
    }),
    ('cudnnGetStream', {
        'out': 'streamId',
        'except?': 0,
        'use_stream': False,
    }),
    ('cudnnCreateTensorDescriptor', {
        'out': 'tensorDesc',
        'except?': 0,
        'use_stream': False,
    }),
    ('cudnnSetTensor4dDescriptor', {
        'out': None,
        'use_stream': False,
    }),
    ('cudnnSetTensor4dDescriptorEx', {
        'out': None,
        'use_stream': False,
    }),
    ('cudnnGetTensor4dDescriptor', {
        'out': ('dataType', 'n', 'c', 'h', 'w',
                'nStride', 'cStride', 'hStride', 'wStride'),
        'use_stream': False,
    }),
    ('cudnnSetTensorNdDescriptor', {
        'out': None,
        'use_stream': False,
    }),
    ('cudnnDestroyTensorDescriptor', {
        'out': None,
        'use_stream': False,
    }),
    ('cudnnCreateOpTensorDescriptor', {
        'out': 'opTensorDesc',
        'except?': 0,
        'use_stream': False,
    }),
    ('cudnnSetOpTensorDescriptor', {
        'out': None,
        'use_stream': False,
    }),
    ('cudnnGetOpTensorDescriptor', {
        'out': ('opTensorOp', 'opTensorCompType', 'opTensorNanOpt'),
        'use_stream': False,
    }),
    ('cudnnDestroyOpTensorDescriptor', {
        'out': None,
        'use_stream': False,
    }),
    ('cudnnOpTensor', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cudnnGetReduceTensorDescriptor', {
        'out': ('reduceTensorOp', 'reduceTensorCompType', 'reduceTensorNanOpt',
                'reduceTensorIndices', 'reduceTensorIndicesType'),
        'use_stream': False,
    }),
    ('cudnnScaleTensor', {
        'out': None,
        'use_stream': 'set',
    }),
]
