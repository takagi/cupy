# This code was automatically generated. Do not modify it directly.

cimport cython  # NOQA
from libcpp cimport vector

from cupy_backends.cuda.api cimport driver
from cupy_backends.cuda cimport stream as stream_module


cdef extern from '../cupy_cudnn.h' nogil:

    # cudnn_ops_infer.so Library
    Status cudnnCreate(Handle* handle)
    Status cudnnDestroy(Handle handle)
    Status cudnnSetStream(Handle handle, driver.Stream streamId)
    Status cudnnGetStream(Handle handle, driver.Stream* streamId)
    Status cudnnCreateTensorDescriptor(TensorDescriptor* tensorDesc)
    Status cudnnSetTensor4dDescriptor(TensorDescriptor tensorDesc, TensorFormat format, DataType dataType, int n, int c, int h, int w)
    Status cudnnSetTensor4dDescriptorEx(TensorDescriptor tensorDesc, DataType dataType, int n, int c, int h, int w, int nStride, int cStride, int hStride, int wStride)
    Status cudnnGetTensor4dDescriptor(const TensorDescriptor tensorDesc, DataType* dataType, int* n, int* c, int* h, int* w, int* nStride, int* cStride, int* hStride, int* wStride)
    Status cudnnSetTensorNdDescriptor(TensorDescriptor tensorDesc, DataType dataType, int nbDims, const int* dimA, const int* strideA)
    Status cudnnDestroyTensorDescriptor(TensorDescriptor tensorDesc)
    Status cudnnCreateOpTensorDescriptor(OpTensorDescriptor* opTensorDesc)
    Status cudnnSetOpTensorDescriptor(OpTensorDescriptor opTensorDesc, OpTensorOp opTensorOp, DataType opTensorCompType, NanPropagation opTensorNanOpt)
    Status cudnnGetOpTensorDescriptor(const OpTensorDescriptor opTensorDesc, OpTensorOp* opTensorOp, DataType* opTensorCompType, NanPropagation* opTensorNanOpt)
    Status cudnnDestroyOpTensorDescriptor(OpTensorDescriptor opTensorDesc)
    Status cudnnOpTensor(Handle handle, const OpTensorDescriptor opTensorDesc, const void* alpha1, const TensorDescriptor aDesc, const void* A, const void* alpha2, const TensorDescriptor bDesc, const void* B, const void* beta, const TensorDescriptor cDesc, void* C)
    Status cudnnGetReduceTensorDescriptor(const ReduceTensorDescriptor reduceTensorDesc, ReduceTensorOp* reduceTensorOp, DataType* reduceTensorCompType, NanPropagation* reduceTensorNanOpt, ReduceTensorIndices* reduceTensorIndices, IndicesType* reduceTensorIndicesType)
    Status cudnnScaleTensor(Handle handle, const TensorDescriptor yDesc, void* y, const void* alpha)


###############################################################################
# Error handling
###############################################################################

class CuDNNError(RuntimeError):

    def __init__(self, int status):
        self.status = status
        msg = cudnnGetErrorString(<Status>status)
        super(CuDNNError, self).__init__(
            'cuDNN Error: {}'.format(msg.decode()))
        self._infos = []

    def add_info(self, info):
        assert isinstance(info, str)
        self._infos.append(info)

    def add_infos(self, infos):
        assert isinstance(infos, list)
        self._infos.extend(infos)

    def __str__(self):
        base = super(CuDNNError, self).__str__()
        return base + ''.join(
            '\n  ' + info for info in self._infos)

    def __reduce__(self):
        return (type(self), (self.status,))


@cython.profile(False)
cpdef inline check_status(int status):
    if status != 0:
        raise CuDNNError(status)


########################################
# Auxiliary structures




########################################
# cudnn_ops_infer.so Library

cpdef intptr_t create() except? 0:
    cdef Handle handle
    status = cudnnCreate(&handle)
    check_status(status)
    return <intptr_t>handle

cpdef destroy(intptr_t handle):
    status = cudnnDestroy(<Handle>handle)
    check_status(status)

cpdef setStream(intptr_t handle, size_t streamId):
    status = cudnnSetStream(<Handle>handle, <driver.Stream>streamId)
    check_status(status)

cpdef size_t getStream(intptr_t handle) except? 0:
    cdef driver.Stream streamId
    status = cudnnGetStream(<Handle>handle, &streamId)
    check_status(status)
    return <size_t>streamId

cpdef size_t createTensorDescriptor() except? 0:
    cdef TensorDescriptor tensorDesc
    status = cudnnCreateTensorDescriptor(&tensorDesc)
    check_status(status)
    return <size_t>tensorDesc

cpdef setTensor4dDescriptor(size_t tensorDesc, int format, int dataType, int n, int c, int h, int w):
    status = cudnnSetTensor4dDescriptor(<TensorDescriptor>tensorDesc, <TensorFormat>format, <DataType>dataType, n, c, h, w)
    check_status(status)

cpdef setTensor4dDescriptorEx(size_t tensorDesc, int dataType, int n, int c, int h, int w, int nStride, int cStride, int hStride, int wStride):
    status = cudnnSetTensor4dDescriptorEx(<TensorDescriptor>tensorDesc, <DataType>dataType, n, c, h, w, nStride, cStride, hStride, wStride)
    check_status(status)

cpdef getTensor4dDescriptor(size_t tensorDesc):
    cdef DataType dataType
    cdef int n
    cdef int c
    cdef int h
    cdef int w
    cdef int nStride
    cdef int cStride
    cdef int hStride
    cdef int wStride
    status = cudnnGetTensor4dDescriptor(<const TensorDescriptor>tensorDesc, &dataType, &n, &c, &h, &w, &nStride, &cStride, &hStride, &wStride)
    check_status(status)
    return dataType, n, c, h, w, nStride, cStride, hStride, wStride

cpdef setTensorNdDescriptor(size_t tensorDesc, int dataType, int nbDims, intptr_t dimA, intptr_t strideA):
    status = cudnnSetTensorNdDescriptor(<TensorDescriptor>tensorDesc, <DataType>dataType, nbDims, <const int*>dimA, <const int*>strideA)
    check_status(status)

cpdef destroyTensorDescriptor(size_t tensorDesc):
    status = cudnnDestroyTensorDescriptor(<TensorDescriptor>tensorDesc)
    check_status(status)

cpdef size_t createOpTensorDescriptor() except? 0:
    cdef OpTensorDescriptor opTensorDesc
    status = cudnnCreateOpTensorDescriptor(&opTensorDesc)
    check_status(status)
    return <size_t>opTensorDesc

cpdef setOpTensorDescriptor(size_t opTensorDesc, int opTensorOp, int opTensorCompType, int opTensorNanOpt):
    status = cudnnSetOpTensorDescriptor(<OpTensorDescriptor>opTensorDesc, <OpTensorOp>opTensorOp, <DataType>opTensorCompType, <NanPropagation>opTensorNanOpt)
    check_status(status)

cpdef getOpTensorDescriptor(size_t opTensorDesc):
    cdef OpTensorOp opTensorOp
    cdef DataType opTensorCompType
    cdef NanPropagation opTensorNanOpt
    status = cudnnGetOpTensorDescriptor(<const OpTensorDescriptor>opTensorDesc, &opTensorOp, &opTensorCompType, &opTensorNanOpt)
    check_status(status)
    return opTensorOp, opTensorCompType, opTensorNanOpt

cpdef destroyOpTensorDescriptor(size_t opTensorDesc):
    status = cudnnDestroyOpTensorDescriptor(<OpTensorDescriptor>opTensorDesc)
    check_status(status)

cpdef opTensor(intptr_t handle, size_t opTensorDesc, intptr_t alpha1, size_t aDesc, intptr_t A, intptr_t alpha2, size_t bDesc, intptr_t B, intptr_t beta, size_t cDesc, intptr_t C):
    if stream_module.enable_current_stream:
        setStream(handle, stream_module.get_current_stream_ptr())
    status = cudnnOpTensor(<Handle>handle, <const OpTensorDescriptor>opTensorDesc, <const void*>alpha1, <const TensorDescriptor>aDesc, <const void*>A, <const void*>alpha2, <const TensorDescriptor>bDesc, <const void*>B, <const void*>beta, <const TensorDescriptor>cDesc, <void*>C)
    check_status(status)

cpdef getReduceTensorDescriptor(size_t reduceTensorDesc):
    cdef ReduceTensorOp reduceTensorOp
    cdef DataType reduceTensorCompType
    cdef NanPropagation reduceTensorNanOpt
    cdef ReduceTensorIndices reduceTensorIndices
    cdef IndicesType reduceTensorIndicesType
    status = cudnnGetReduceTensorDescriptor(<const ReduceTensorDescriptor>reduceTensorDesc, &reduceTensorOp, &reduceTensorCompType, &reduceTensorNanOpt, &reduceTensorIndices, &reduceTensorIndicesType)
    check_status(status)
    return reduceTensorOp, reduceTensorCompType, reduceTensorNanOpt, reduceTensorIndices, reduceTensorIndicesType

cpdef scaleTensor(intptr_t handle, size_t yDesc, intptr_t y, intptr_t alpha):
    if stream_module.enable_current_stream:
        setStream(handle, stream_module.get_current_stream_ptr())
    status = cudnnScaleTensor(<Handle>handle, <const TensorDescriptor>yDesc, <void*>y, <const void*>alpha)
    check_status(status)
