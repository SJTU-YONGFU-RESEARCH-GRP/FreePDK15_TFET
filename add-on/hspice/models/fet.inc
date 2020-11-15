* 15nm FreePDK(TM) HSPICE Makefile
*
* Copyright (c) 2013-2016 North Carolina State University. All Rights
* Reserved.
* 
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are
* met:
* 
* 1. Redistributions of source code must retain the above copyright
* notice, this list of conditions and the following disclaimer.
* 
* 2. Redistributions in binary form must reproduce the above copyright
* notice, this list of conditions and the following disclaimer in the
* documentation and/or other materials provided with the distribution.
* 
* 3. Neither the name of the copyright holder nor the names of its
* contributors may be used to endorse or promote products derived from
* this software without specific prior written permission.
* 
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
* LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
* A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
* HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
* DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
* THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

* These models were taken from the ASU 14nm PTM-MG HP model (2012-06-01)
* (http://ptm.asu.edu) with minor changes for compatibility with HSPICE


.LIB CMG


.model pfet pmos level = 72
+ VSAT = 105000        LINT = 1.5e-009        TSILI = 8e-009
+ RGEOMOD = 1          AIGS = 0.0136          EOT = 7.5e-010
+ RDSMOD = 1           XTID = 3               AGISL = 5.729e-012
+ DSUB = 0.9           RDSW = 100             EGIDL = 0.1
+ KSATIV = 0.8         XRCRG1 = 12            MJD = 0.5
+ BETA0 = 30           L = 1.8e-008           BIGBACC = 0.000949
+ BVD = 10             CIGD = 0.075           IGCMOD = 1
+ CGEOMOD = 2          DLCIGD = 0             TGATE = 8.5e-009
+ U0 = 0.0336          TOXP = 1.3e-009        TMASK = 0
+ LDG = 2.5e-009       CFS = 2.56e-011        PCLM = 0.2
+ JSD = 0.0001         CJD = 0.0005           XJBVD = 1
+ BULKMOD = 1          RHOC = 9e-013          NIGBACC = 3
+ AIGBACC = 0.0149     PBD = 1                EGISL = 0.1
+ FPITCH = 3.2e-008    ETA0 = 0.767           EU = 1.8
+ CDSC = 0.0226        PHIG = 4.7518          NJD = 1
+ IJTHDREV = 0.1       TFIN = 1e-008          RDW = 0
+ TGIDL = -0.0003      NSDE = 6e+025          AIGD = 0.0136
+ IGBMOD = 1           NIGBINV = 1.2          IJTHDFWD = 0.1
+ BIGD = 0.00171       TNOM = 300.15          CIT = 1.3e-005
+ UCS = 0              AGIDL = 5.729e-012     NSD = 3e+026
+ MEXP = 3             HFIN = 2.3e-008        COVD = 2.5e-011
+ QM0 = 0.001143       UCSTE = -0.00478       AT = -0.00156
+ HEPI = 9e-009        BIGBINV = 0.03         RSW = 0
+ CFD = 2.65e-011      BGISL = 3e+008         DVT0 = 0.01
+ DVT1 = 0.69          NBODY = 5e+022


.model nfet nmos level = 72
+ VSAT = 110000        LINT = 1.5e-009        TSILI = 8e-009
+ RGEOMOD = 1          AIGS = 0.0136          EOT = 7.5e-010
+ RDSMOD = 1           XTID = 3               AGISL = 5.729e-012
+ DSUB = 0.9           RDSW = 100             EGIDL = 0.1
+ KSATIV = 0.8         XRCRG1 = 12            MJD = 0.5
+ BETA0 = 30           L = 1.8e-008           BIGBACC = 0.000949
+ BVD = 10             CIGD = 0.075           IGCMOD = 1
+ CGEOMOD = 2          DLCIGD = 0             TGATE = 8.5e-009
+ U0 = 0.052           TOXP = 1.3e-009        TMASK = 0
+ LDG = 2.5e-009       CFS = 2.56e-011        PCLM = 0.2
+ JSD = 0.0001         CJD = 0.0005           XJBVD = 1
+ BULKMOD = 1          RHOC = 8e-013          NIGBACC = 3
+ AIGBACC = 0.0149     PBD = 1                EGISL = 0.1
+ FPITCH = 3.2e-008    ETA0 = 0.1063          EU = 1.8
+ CDSC = 0.0226        PHIG = 4.4187          NJD = 1
+ IJTHDREV = 0.1       TFIN = 1e-008          RDW = 0
+ TGIDL = -0.0003      NSDE = 6e+025          AIGD = 0.0136
+ IGBMOD = 1           NIGBINV = 1.2          IJTHDFWD = 0.1
+ BIGD = 0.00171       TNOM = 300.15          CIT = 1.3e-005
+ UCS = 0              AGIDL = 5.729e-012     NSD = 3e+026
+ MEXP = 3             HFIN = 2.3e-008        COVD = 2.5e-011
+ QM0 = 0.001143       UCSTE = -0.00478       AT = -0.00156
+ HEPI = 9e-009        BIGBINV = 0.03         RSW = 0
+ CFD = 2.65e-011      BGISL = 3e+008         DVT0 = 0.01
+ DVT1 = 0.69          NBODY = 5e+022


.ENDL CMG
