FC=gfortran
#FC = xlf_r

FFLAGS=

ifeq ($(FC),xlf_r)
	FFLAGS=-qxlf2003=polymorphic -qfree -qpreprocess
endif

all: externalPublic.o absMod.o

externalPublic.o: externalPublic.f90 absMod.o
	$(FC) ${FFLAGS} -c  externalPublic.f90

absMod.o: absMod.f90
	$(FC) ${FFLAGS} -c absMod.f90

clean:
	rm -f ./*.o ./*.mod
