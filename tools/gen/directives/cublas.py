[
    # Setting
    ('CudaVersions', ['11.2', '11.1', '11.0', '10.2', '10.0', '9.2']),
    ('Headers', ['cublas_v2.h']),
    ('Patterns', {
        'func': r'cublas([A-Z][^_]*)(:?_v2|)',
        'type': r'cublas([A-Z].*)_t',
    }),
    # cuBLAS Helper Function
    ('Comment', 'cuBLAS Helper Function'),
    ('cublasCreate_v2', {
        'out': 'handle',
        'except?': 0,
        'use_stream': False,
    }),
    ('cublasDestroy_v2', {
        'out': None,
        'use_stream': False,
    }),
    ('cublasGetVersion_v2', {
        'out': 'version',
        'except?': -1,
        'use_stream': False,
    }),
    ('cublasGetPointerMode_v2', {
        'out': 'mode',
        'except?': 0,
        'use_stream': False,
    }),
    ('cublasSetPointerMode_v2', {
        'out': None,
        'use_stream': False,
    }),
    ('cublasSetStream_v2', {
        'out': None,
        'use_stream': False,
    }),
    ('cublasGetStream_v2', {
        'out': 'streamId',
        'except?': 0,
        'use_stream': False,
    }),
    ('cublasSetMathMode', {
        'out': None,
        'use_stream': False,
    }),
    ('cublasGetMathMode', {
        'out': 'mode',
        'except?': -1,
        'use_stream': False,
    }),
    # cuBLAS Level-1 Function
    ('Comment', 'cuBLAS Level-1 Function'),
    ('cublasI<t>amax_v2', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublasI<t>amin_v2', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>{c,z}asum_v2', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>axpy_v2', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>dot{u,c}_v2', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>{c,z}nrm2_v2', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>{s,d}scal_v2', {
        'out': None,
        'use_stream': 'set',
    }),
    # cuBLAS Level-2 Function
    ('Comment', 'cuBLAS Level-2 Function'),
    ('cublas<t>gemv_v2', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>ger{u,c}_v2', {
        'out': None,
        'use_stream': 'set',
    }),
    # cuBLAS Level-3 Function
    ('Comment', 'cuBLAS Level-3 Function'),
    ('cublas<t>gemm_v2', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>gemmBatched', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>gemmStridedBatched', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>trsm_v2', {
        'out': None,
        'use_stream': 'set',
    }),
    # cuBLAS BLAS-like Extension
    ('Comment', 'cuBLAS BLAS-like Extension'),
    ('cublas<t>geam', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>dgmm', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>gemmEx', {
        'out': None,
        'use_stream': 'set',
    }),

    # cublasGemmEx is defined by hands in templates/cublas.pyx.template.

    ('cublas<t>getrfBatched', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>getrsBatched', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>getriBatched', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>tpttr', {
        'out': None,
        'use_stream': 'set',
    }),
    ('cublas<t>trttp', {
        'out': None,
        'use_stream': 'set',
    }),
]