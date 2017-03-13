all:
	rm -rf build
	mkdir build
	mpicc -std=c99 lab2_1.c -o build/lab2_1
	mpicc -std=c99 lab2_2.c -o build/lab2_2

clean:
	rm -rf build

run1:
	mpiexec -np 16 ./build/lab2_1

run2:
	mpiexec -np 16 ./build/lab2_2
