; 15nm FreePDK(TM) NMOS Pcell with Fingers
;
; Copyright (c) 2013-2016 North Carolina State University. All Rights
; Reserved.
; 
; Redistribution and use in source and binary forms, with or without
; modification, are permitted provided that the following conditions are
; met:
; 
; 1. Redistributions of source code must retain the above copyright
; notice, this list of conditions and the following disclaimer.
; 
; 2. Redistributions in binary form must reproduce the above copyright
; notice, this list of conditions and the following disclaimer in the
; documentation and/or other materials provided with the distribution.
; 
; 3. Neither the name of the copyright holder nor the names of its
; contributors may be used to endorse or promote products derived from
; this software without specific prior written permission.
; 
; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
; A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
; HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
; LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
; OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

; FreePDK15 Pcells
; Vikash Sharma (NCSU) - 12/2/16

pcDefinePCell(list(ddGetObj("NCSU_TechLib_FreePDK15") "nmos_fingers" "layout") 
	(
		 (noFins "int" 2) 
		 (StartGate "A")
		 (nFingers "int" 2); end of parameter list
	)
    let((pcMember pcStretchGroup stretchOffsetX stretchOffsetY pcLib
	    pcMaster pcInst pcTerm pcPin pcPinName
	    pcNet pcTermNet pcNetName pcTermNetName pcMosaicInst
	    pcParameters pcParamProp pcStep pcStepX pcStepY
	    pcRepeat pcRepeatX pcRepeatY pcIndexX pcIndexY
	    pcLayer pcPurpose pcLabelText pcLabelHeight pcPropText
	    pcParamText pcCoords pcPathWidth pcPolygonMargin pcHeight pcGateLayerOut pcGateLayerIn pcTechFile pcGATEAWidth pcInstOffset pcGateName
	)
	(pcInstOffset = 0.078)    
	(pcLib = (pcCellView~>lib)) 
	(pcParameters = ((pcCellView~>parameters)~>value)) 
	(pcGateName = StartGate)
	for( i 1 nFingers
			(pcMaster = dbOpenCellViewByType("NCSU_TechLib_FreePDK15" "nmos_pcell" "layout" "maskLayout")) 
			(pcInst = dbCreateParamInst(pcCellView pcMaster nil 
			(pcInstOffset:0.1) "R0"
			1 
			list(	
				list("Gate" "string" pcGateName)
				list("nFins" "int" noFins)
				)
	    		))
			(pcInstOffset = (pcInstOffset - 0.064))
			if(pcGateName == "A" then 
				(pcGateName = "B") else 
				(pcGateName = "A") )
	)	
	t
    )
)
