# zuo,Nov 15, 2016
# Makefile
FFLAGS=-ffixed-line-length-none -Wall
all:CalLCC.exe


CalLCC.exe:CalLCC.o
	gfortran $(FFLAGS) -o $@ $<

.F.o:
	gfortran $(FFLAGS) -c $<
#.f.o:
#	$(FC) -c $(FFLAGS) $*.f

.PHONY:clean

clean:
	rm -f *.o *.exe
