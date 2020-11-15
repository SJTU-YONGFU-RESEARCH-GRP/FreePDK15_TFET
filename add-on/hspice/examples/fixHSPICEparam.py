# 15nm FreePDK(TM) HSPICE Parameter Fix
#
# Copyright (c) 2013-2016 North Carolina State University. All Rights
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

import re, sys

for line in sys.stdin:
  m=re.search(r"^(.*)\s+AS\s*=(.*)$",line)
  if m:
    line=m.group(1)+' ASEJ='+m.group(2)
  m=re.search(r"^(.*)\s+AD\s*=(.*)$",line)
  if m:
    line=m.group(1)+' ADEJ='+m.group(2)
  m=re.search(r"^(.*)\s+PS\s*=(.*)$",line)
  if m:
    line=m.group(1)+' PSEJ='+m.group(2)
  m=re.search(r"^(.*)\s+PD\s*=(.*)$",line)
  if m:
    line=m.group(1)+' PDEJ='+m.group(2)
  m=re.search(r"^(.*)\s+M\s*=(.*)$",line)
  if m:
    line=m.group(1)+' NFIN='+m.group(2)
  m=re.search(r"^(.*)\s+nmos\s+(.*)$",line)
  if m:
    line=m.group(1)+' nfet '+m.group(2)
  m=re.search(r"^(.*)\s+pmos\s+(.*)$",line)
  if m:
    line=m.group(1)+' pfet '+m.group(2)
  print line.strip()
