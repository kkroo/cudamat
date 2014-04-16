cudamat:
	nvcc -O -arch sm_20 --ptxas-options=-v --compiler-options '-fPIC' -o libcudamat.so --shared cudamat.cu cudamat_kernels.cu -lcublas
	nvcc -O -arch sm_20 --ptxas-options=-v --compiler-options '-fPIC' -o libcudalearn.so --shared learn.cu learn_kernels.cu -lcublas

clean:
	rm *.linkinfo *.pyc *.so
