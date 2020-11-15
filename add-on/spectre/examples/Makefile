# Description : Makefile to run HSPICE on every circuit in current directory.
#               Use "make [circuit].lis" to run on an individual input file.
#               Use "make clean" to remove output files
#

SHELL = /bin/tcsh
CKT = $(wildcard *.sp)
LIS = $(addsuffix .lis, $(basename $(CKT)))

all: $(LIS)

%.lis : %.sp
	$(SHELL) -c " \
	setenv PDK_DIR ../.. ; \
	spectre $< | tee $@"

clean:
	-rm -rf *.ic* *.st* *.tr* *.ms* *.pa* *.lis *.log *.ahdlSimDB *.raw
