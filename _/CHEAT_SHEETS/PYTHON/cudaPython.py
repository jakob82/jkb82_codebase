import numpy as np
from timeit import default_timer as default_timer
from numbapro import vectorize

@vectorize(["float32(float32, float32)"], target="gpu")
def vectorAdd(a, b):
    return a+b

def main():
    N = 320000000

    A = np.ones(N, dtype=np.float32)
    B = np.ones(N, dtype=np.float32)    
    C = np.ones(N, dtype=np.float32)

    start = timer()
    vectorAdd(A, B)
    vectoradd_time = timer()-start

    print "C[:5] = " + str(C[:5])
    print "C[:-5] = " + str(C[-5:])

    print "vector add took %f seconds" % vectoradd_time

if __name__ == "__main__":
    main()