; 15nm FreePDK(TM) PMOS Pcell
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

pcDefinePCell(list(ddGetObj("NCSU_TechLib_FreePDK15") "pmos_pcell" "layout") 
		(
		 (nFins "int" 2) 
		 (Gate "A"); end of parameter list
		)
    let((pcMember pcStretchGroup stretchOffsetX stretchOffsetY pcLib
	    pcMaster pcInst pcTerm pcPin pcPinName
	    pcNet pcTermNet pcNetName pcTermNetName pcMosaicInst
	    pcParameters pcParamProp pcStep pcStepX pcStepY
	    pcRepeat pcRepeatX pcRepeatY pcIndexX pcIndexY
	    pcLayer pcPurpose pcLabelText pcLabelHeight pcPropText
	    pcParamText pcCoords pcPathWidth pcPolygonMargin pcHeight pcGateLayerOut pcGateLayerIn pcTechFile pcGATEAWidth
	)
	    pcTechFile = techGetTechFile(pcCellView)
	    pcGATEAWidth = techGetSpacingRule(pcTechFile "minWidth" "GATEA")
	    	    if( Gate == "A" then 
		    (pcGateLayerIn = 12)
		    (pcGateLayerOut = 13)
		    )
	    if( Gate == "B" then
		    (pcGateLayerOut = 12)
		    (pcGateLayerIn = 13)
		    )
	(pcHeight = (nFins - 2)*0.02)
	(pcLib = (pcCellView~>lib)) 
	(pcParameters = ((pcCellView~>parameters)~>value)) 
	(pcLayer = pcGateLayerOut) ; GATEB 
	(pcPurpose = "drawing")
	(pcInst = dbCreateRect(pcCellView 
		list(pcLayer pcPurpose) 
		list((0.054:(-0.1 - pcHeight)) 
		    (0.074:(0.1 + pcHeight) )
		)
	    ))
	(pcLayer = 2) ; NW 
	(pcPurpose = "drawing")
	(pcInst = dbCreateRect(pcCellView 
		list(pcLayer pcPurpose) 
		list((-0.08:(-0.08 - pcHeight)) 
		    (0.08:(0.08 + pcHeight) )
		)
	    ))
	(pcLayer = 4) ; PIM 
	(pcPurpose = "drawing")
	(pcInst = dbCreateRect(pcCellView 
		list(pcLayer pcPurpose) 
		list((-0.078:(-0.064 - pcHeight)) 
		    (0.078:(0.064 + pcHeight) )
		)
	    ))	
	(pcLayer = pcGateLayerOut) ; GATEB 
	(pcPurpose = "drawing") 
	(pcInst = dbCreateRect(pcCellView 
		list(pcLayer pcPurpose) 
		list((-0.074:(-0.1 - pcHeight)) 
		    (-0.054:(0.1 + pcHeight))
		)
	    )) 
	(pcLayer = pcGateLayerIn) ; GATEA
	(pcPurpose = "drawing") 
	(pcInst = dbCreateRect(pcCellView 
		list(pcLayer pcPurpose) 
		list((-0.01:(-0.1 - pcHeight)) 
		    (0.01:(0.1 + pcHeight))
		)
	    )) 
	(pcLayer = 1) ; ACT 
	(pcPurpose = "drawing") 
	(pcInst = dbCreateRect(pcCellView 
		list(pcLayer pcPurpose) 
		list((-0.048:(-0.024 - pcHeight)) 
		    (0.048:(0.024 + pcHeight))
		)
	    ))
	(pcLayer = 8) ; AIL1 
	(pcPurpose = "drawing")
	(pcInst = dbCreateRect(pcCellView 
		list(pcLayer pcPurpose) 
		list((-0.046:(-0.029 - pcHeight)) 
		    (-0.018:(0.029 + pcHeight))
		)
	    )) 
	(pcLayer = 8) ; AIL1
	(pcPurpose = "drawing") 
	(pcInst = dbCreateRect(pcCellView 
		list(pcLayer pcPurpose) 
		list((0.018:(-0.029 - pcHeight)) 
		    (0.046:(0.029 + pcHeight))
		)
	    )) t
    )
)
