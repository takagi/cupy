// This code was automatically generated. Do not modify it directly.

#ifndef INCLUDE_GUARD_CUDA_CUPY_CUBLAS_H
#define INCLUDE_GUARD_CUDA_CUPY_CUBLAS_H

#include <cuda.h>
#include <cublas_v2.h>

extern "C" {

#if CUDA_VERSION < 11000
// Added in 11.0

typedef enum {} cublasComputeType_t;

#endif  // #if CUDA_VERSION < 11000

// Define `cublasGemmEx_v11` by hands for a backward compatibility reason.
#if CUDA_VERSION >= 11000

#define cublasGemmEx_v11 cublasGemmEx

#else

cublasStatus_t cublasGemmEx_v11(...) {
    return CUBLAS_STATUS_NOT_SUPPORTED;
}

#endif // if CUDA_VERSION >= 11000

} // extern "C"

#endif // #ifndef INCLUDE_GUARD_CUDA_CUPY_CUBLAS_H