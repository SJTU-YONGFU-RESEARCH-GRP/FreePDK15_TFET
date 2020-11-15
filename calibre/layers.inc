////////////////////////////////////////////////////////////////////////////////////
//    15nm Free PDK  Rules SVRF
//
// Copyright (c) 2013-2016 North Carolina State University 
// and Mentor Graphics.  All Rights Reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
// 1. Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
// 
// 2. Redistributions in binary form must reproduce the above copyright
// notice, this list of conditions and the following disclaimer in the
// documentation and/or other materials provided with the distribution.
// 
// 3. Neither the name of the copyright holder nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// 4. SVRF Technology in this kit is licensed under the the agreement
// found in the SVRF TECHNOLOGY LICENSE AGREEMENT below.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
////////////////////////////////////////////////////////////////////////////////////
//              SVRF(TM) TECHNOLOGY LICENSE AGREEMENT
//                       February 6, 2009
// 
// This license is a legal "Agreement" concerning the use of SVRF
// Technology between you, the end user, either individually or as an
// authorized representative of the school or company acquiring the
// license ("You"), and Mentor Graphics Corporation and Mentor Graphics
// (Ireland) Limited acting directly or through their subsidiaries or
// authorized distributors (collectively "Mentor Graphics"). "SVRF
// Technology" shall mean Mentor Graphics' syntax for expressing process
// rules and controlling physical verification, principally the syntax
// expressed in Mentor Graphics. SVRF User Manual. USE OF SVRF TECHNOLOGY
// INDICATES YOUR COMPLETE AND UNCONDITIONAL ACCEPTANCE OF THE TERMS AND
// CONDITIONS SET FORTH IN THIS AGREEMENT. If you do not agree to these
// terms and conditions, promptly certify destruction of the SVRF
// Technology and all accompanying items within five days after receipt
// of SVRF Technology.
// 
// 1. GRANT OF LICENSE. This file includes SVRF Technology under license
//    by Mentor Graphics Corporation. Mentor Graphics grants to You a
//    nontransferable, nonexclusive license to use SVRF Technology solely
//    for use with Mentor Graphics' Calibre(R) tools and either: (a) in an
//    educational classroom or laboratory environment; or (b) for your
//    internal business purpose as allowed by an existing license
//    agreement between You and Mentor Graphics.
// 
// 2. RESTRICTIONS ON USE. All SVRF Technology constitutes or contains
//    trade secrets and confidential information of Mentor Graphics or
//    its licensors. You shall not make SVRF Technology available in any
//    form to any person other those persons whose performance requires
//    such access and who are under obligations of confidentiality. You
//    shall take appropriate action to protect the confidentiality of
//    SVRF Technology and ensure that persons permitted access to SVRF
//    Technology do not disclose it or use it except as permitted by this
//    Agreement. The provisions of this Section 2 shall survive the
//    termination or expiration of this Agreement.
// 
// 3. NO WARRANTY. Mentor Graphics expressly disclaims any warranty for
//    SVRF Technology. TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW,
//    SVRF TECHNOLOGY AND ANY RELATED DOCUMENTATION ARE PROVIDED "AS IS"
//    AND WITH ALL FAULTS AND WITHOUT WARRANTIES OR CONDITIONS OF ANY
//    KIND, EITHER EXPRESS OR IMPLIED, INCLUDING, WITHOUT LIMITATION, THE
//    IMPLIED WARRANTIES OR CONDITIONS OF MERCHANTABILITY, FITNESS FOR A
//    PARTICULAR PURPOSE, OR NONINFRINGEMENT. THE ENTIRE RISK ARISING OUT
//    OF USE OR PERFORMANCE OF SVRF TECHNOLOGY REMAINS WITH YOU.
// 
// 4. LIMITATION OF LIABILITY. EXCEPT WHERE THIS EXCLUSION OR RESTRICTION
//    OF LIABILITY WOULD BE VOID OR INEFFECTIVE UNDER APPLICABLE LAW, IN
//    NO EVENT WILL MENTOR GRAPHICS OR ITS LICENSORS BE LIABLE FOR
//    INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES (INCLUDING
//    LOST PROFITS OR SAVINGS) WHETHER BASED ON CONTRACT, TORT OR ANY
//    OTHER LEGAL THEORY, EVEN IF MENTOR GRAPHICS OR ITS LICENSORS HAVE
//    BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
// 
// 5. TERM. This Agreement remains effective until termination. This
//    Agreement will immediately terminate upon notice if you exceed the
//    scope of license granted or otherwise fail to comply with the
//    provisions of Sections 1 or 2. For any other material breach under
//    this Agreement, Mentor Graphics may terminate this Agreement upon
//    30 days written notice if you are in material breach and fail to
//    cure such breach within the 30-day notice period. Upon any
//    termination, you agree to cease all use of SVRF Technology and
//    certify destruction of SVRF Technology, including all copies, to
//    Mentor Graphics. reasonable satisfaction.
// 
// 6. GOVERNING LAW. This License shall be governed by and construed
//    under the laws of the State of Oregon, USA, if You are located in
//    North or South America, and the laws of Ireland if You are located
//    outside of North or South America.
// 
// 7. SEVERABILITY. If any provision of this Agreement is held by a court
//    of competent jurisdiction to be void, invalid, unenforceable or
//    illegal, such provision shall be severed from this Agreement and
//    the remaining provisions will remain in full force and effect.
// 
// 8. MISCELLANEOUS. This Agreement contains the parties' entire
//    understanding relating to its subject matter and supersedes all
//    prior or contemporaneous agreements, except valid license
//    agreements related to the subject matter of this Agreement (which
//    are physically signed by you and an authorized agent of Mentor
//    Graphics). This Agreement may only be modified in writing by
//    authorized representatives of the parties. Waiver of terms or
//    excuse of breach must be in writing and shall not constitute
//    subsequent consent, waiver or excuse.
////////////////////////////////////////////////////////////////////////////////////

// my_layer.inc file, to be imported in LVS rul file

layer NW 0
layer ACT 1
layer VTH 2
layer VTL 3
layer THKOX 4
layer NIM 5
layer PIM 6
layer GATEA 7
layer GATEB 8
layer GATEC 9
layer GATEAB 10
layer AIL1 11
layer AIL2 12
layer GIL 13
layer V0 14
layer M1A 15
layer M1B 16
layer V1 17
layer MINT1A 18
layer MINT2A 19
layer MINT3A 20
layer MINT4A 21
layer MINT5A 22
layer MINT1B 23
layer MINT2B 24
layer MINT3B 25
layer MINT4B 26
layer MINT5B 27
layer VINT1 28
layer VINT2 29
layer VINT3 30
layer VINT4 31
layer MSMG1 32
layer MSMG2 33
layer MSMG3 34
layer MSMG4 35
layer MSMG5 36
layer VSMG1 37
layer VSMG2 38
layer VSMG3 39
layer VSMG4 40
layer VSMG5 41
layer MG1 42
layer MG2 43
layer VG1 44
layer VINT5 48
layer M1 49
layer MINT1 50
layer MINT2 51
layer MINT3 52
layer MINT4 53
layer MINT5 54
