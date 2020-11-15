# 15nm FreePDK(TM) Calibre Makefile
#
# Copyright (c) 2013-2015 North Carolina State University. All Rights
# Reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
# 
# 1. Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution.
# 
# 3. Neither the name of the copyright holder nor the names of its
# contributors may be used to endorse or promote products derived from
# this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

MODNAME = Inverter
SHELL = /bin/tcsh

.PHONY: pex lvs

LVS = $(MODNAME).lvs.report
lvs: $(LVS)
$(LVS): $(MODNAME).calibre.db $(MODNAME).src.net
	$(SHELL) -c "add calibre2013.4 ; \
        setenv PDK_DIR ../../../.. ; \
	calibre -spice $(MODNAME).sp -lvs -hier -nowait _calibreLVS.rul_ |& tee lvs.log"

PEX = $(MODNAME).pex.netlist
pex: $(PEX)
$(PEX): $(MODNAME).calibre.db $(MODNAME).src.net
	$(SHELL) -c "add calibre2013.4 ; \
        setenv PDK_DIR ../../../.. ; \
	calibre -lvs -hier -spice svdb/$(MODNAME).sp -nowait _calibrePEX.rul_ |& tee pex.log ; \
	calibre -xrc -pdb -rcc -turbo 1 -nowait _calibrePEX.rul_ |& tee -a pex.log ; \
	calibre -xrc -fmt -all -nowait _calibrePEX.rul_ |& tee -a pex.log"

clean:
	-rm -f $(MODNAME).lvs*
	-rm -f $(MODNAME).pex*
	-rm -f $(MODNAME).sp
	-rm -rf svdb
	-rm -f *.log



