FC=gfortran
#FC = xlf_r

FFLAGS=

ifeq ($(FC),xlf_r)
	FFLAGS=-qxlf2003=polymorphic -qfree -qpreprocess
endif

all: isoCTest.o

isoCTest.o: isoCTest.F90
	$(FC) ${FFLAGS} -c  isoCTest.F90

clean:
	rm -f ./*.o ./*.mod
