import numpy as np

_a = np.array([1,2,3], dtype='int16')
print(_a)

_b = np.array([[9.0,8.0,7.0],[6.0,5.0,4.0]], dtype='int16')
print(_b)

print _a.ndim
print _b.ndim

print _a.shape
print _b.shape

print _a.dtype
print _b.dtype

print _a.itemsize
print _b.itemsize

print _a.nbytes
print _b.nbytes

_a = np.array([[1, 2, 3, 4, 5, 6, 7], [8, 9, 10, 11, 12, 13, 14]])
print _a

print _a[1, 5]
print _a[0, 2]
print _a[0, :]
print _a[:, 2]
print _a[0, 1:-1:2]

_a[1,5]=20

print _a