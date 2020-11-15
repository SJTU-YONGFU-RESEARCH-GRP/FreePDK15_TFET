# 15nm FreePDK(TM) Makefile
#
# Copyright (c) 2013-2017 North Carolina State University. All Rights
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


SHELL = /bin/tcsh
TECHDB = ../NCSU_TechLib_FreePDK15/tech.db
#PYCELLSETUP = /local/opt/synopsys/pycell2013.12/quickstart/tcshrc
#CDSSETUP = /afs/eos/lockers/research/ece/wdavis/setup/ic615py425_setup.csh

.PHONY: tech
tech: $(TECHDB)

$(TECHDB): cds/FreePDK.tf
	/bin/bash -c 'pushd run ; \
	source /usr/bin/addlocker.sh cadence2016 ; \
	source ../../setup/setup.sh ; \
	echo \(pdkCompileTechfile\) >| exe.il ; \
	echo \(loadi \(strcat \(getShellEnvVar \"PDK_DIR\"\) \"/cdslib/skill/nmos_pcell.il\"\)\) >> exe.il ; \
	echo \(loadi \(strcat \(getShellEnvVar \"PDK_DIR\"\) \"/cdslib/skill/pmos_pcell.il\"\)\) >> exe.il ; \
	echo \(loadi \(strcat \(getShellEnvVar \"PDK_DIR\"\) \"/cdslib/skill/nmos_pcell_fingers.il\"\)\) >> exe.il ; \
	echo \(loadi \(strcat \(getShellEnvVar \"PDK_DIR\"\) \"/cdslib/skill/pmos_pcell_fingers.il\"\)\) >> exe.il ; \
	echo \(exit\) >> exe.il ; \
	virtuoso -log CDS.log -nograph -replay exe.il |& tee virtuoso.log ; \
	cp ../cds/FreePDK.layermap ../../NCSU_TechLib_FreePDK15/NCSU_TechLib_FreePDK15.layermap ; \
	cp -r ../cds/devices/nmos ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/pmos ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/M1A_AIL2 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/M1B_AIL2 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/M1_AIL2 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/M1A_GIL ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/M1B_GIL ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/M1_GIL ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/AIL1_N ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/AIL1_P ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/MINT1_M1 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/MINT2_MINT1 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/MINT3_MINT2 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/MINT4_MINT3 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/MINT5_MINT4 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/MSMG1_MINT5 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/MSMG2_MSMG1 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/MSMG3_MSMG2 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/MSMG4_MSMG3 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/MSMG5_MSMG4 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/MG1_MSMG5 ../../NCSU_TechLib_FreePDK15 ; \
	cp -r ../cds/devices/MG2_MG1 ../../NCSU_TechLib_FreePDK15 ; \
	popd'

clean:
	-rm -rf run/*
	-rm -rf run/.cadence
	-rm -f run/.cdsinit
	-rm -rf ../NCSU_TechLib_FreePDK15

