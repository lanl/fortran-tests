COMPILER=/usr/projects/eap/users/gshipman/flang/build/bin/flang-new

all: test.x

test.x: moo_int.o my_types.o module_data.o  my_types.o repro.o
	${COMPILER} moo_int.o my_types.o repro.o module_data.o -o test.x
repro.o: repro.f90
	${COMPILER} -c repro.f90 -o repro.o
moo_int.o: moo_int.f90
	${COMPILER} -c moo_int.f90 -o moo_int.o
my_types.o: my_types.f90
	${COMPILER} -c my_types.f90 -o my_types.o
module_data.o: module_data.f90
	${COMPILER} -c module_data.f90 -o module_data.o
clean:
	rm *.o *.mod test.x

