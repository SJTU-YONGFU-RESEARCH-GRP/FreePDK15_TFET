
SHELL = /bin/tcsh
CKT = $(wildcard *.sp)
LIS = $(addsuffix .lis, $(basename $(CKT)))

all: $(LIS)

%.lis : %.sp
	$(SHELL) -c "\
	setenv PDK_DIR ../.. ; \
	hspice $< | tee $@"

clean:
	-rm -f *.ic* *.st* *.tr* *.ms* *.pa* *.lis
