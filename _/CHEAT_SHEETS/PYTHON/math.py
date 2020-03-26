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

_a[:,2]=[1,2]
print _a

_b = np.array([[[1,2],[3,4]], [[5,6],[7,8]]])

print _b
print _b[0,1,1]
print _b

print np.zeros((2,3))
print np.ones((4,2,2), dtype='int32')
print np.full((2,2),99)
print np.full_like(_a, 4)
print np.random.rand(4,2)
print np.random.randint(-4,8,size=(3,3))
print np.identity(5)

_arr=np.array([[1,2,3]])
_r1=np.repeat(_arr,3,axis=0)
print _r1

_output=np.ones((5,5))
print _output 

_z = np.zeros((3,3))
_z[1,1]=0
print _z

_output[1:-1,1:-1] = _z
print _output

_a = np.array([1,2,3])
_b = _a.copy()
_b[0] = 100

print _a

_a = np.array([1,2,3,4])
print _a

_a = _a+2
print _a

_a = _a-2
print _a

_a = _a*2
print _a

_a = _a/2
print _a

_b = np.array([1,0,1,0])
print _a+_b

_a=_a**2
print _a

print np.cos(_a)

_a = np.ones((2,3))
print _a

_b = np.full((3,2),2)
print _b

print np.matmul(_a,_b)

_c = np.identity(3)
print np.linalg.det(_c)

_stats = np.array([[1,2,3],[4,5,6]])
print _stats

print np.min(_stats)
print np.max(_stats,axis=1)
print np.sum(_stats,axis=0)

_before = np.array([[1,2,3,4],[5,6,7,8]])
print _before

_v1 = np.array([1,2,3,4])
_v2 = np.array([5,6,7,8])

print np.vstack([_v1,_v2,_v1,_v2])

_h1 = np.ones((2,4))
_h2 = np.zeros((2,2))

print np.hstack((_h1,_h2))

_filedata = np.genfromtxt('data.txt', delimiter=',')
_filedata = _filedata.astype('int32')
print _filedata

print (~((_filedata>50)&(_filedata<100)))