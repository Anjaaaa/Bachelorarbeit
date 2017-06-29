(* ::Package:: *)

BeginPackage["DirectDM`"];


Begin["`Private`"]


(* By default, the DM is an isospin singlet *)
\[ScriptCapitalJ]\[Chi] = 0;


n/:n["u"]=0; n/:n["d"]=1; n/:n["s"]=2;

(*
flavors = {"u","d","s","c","b","t"};
*)


quarks = {"u","d","s","c","b","t"};


flavors[nf_] := Switch[nf,\
	6, {"u","d","s","c","b","t","e","\[Mu]","\[Tau]"},
	5, {"u","d","s","c","b",    "e","\[Mu]","\[Tau]"},
	4, {"u","d","s","c",        "e","\[Mu]","\[Tau]"},
	3, {"u","d","s",            "e","\[Mu]","\[Tau]"}]


Module[{idx},
	(* Assign the quark indices from 0..5 *)
  idx=0;
  Do[fnum/:fnum[NF_,f] = idx; idx++, {f,flavors[6][[;;6]]}];
	(* Assign the leptons indices from NF..(NF+3) *)
	idx=0;
  Do[fnum/:fnum[NF_,f] = NF + idx; idx++, {f,flavors[6][[7;;]]}];
]


SetCoeff[basis_,coeff_,value_]:=Module[{tmp1, tmp2},
	tmp1 = CoeffsList[basis];
  If[NumericQ[coeff],
    tmp2 = coeff,
    tmp2 = (Head[#][basis]@(#/.Head[#]->Sequence)) &@ coeff];
	tmp1[[tmp2]] = value;
	CoeffsList[basis] = tmp1;
]


GetCoeff[basis_,coeff_]:= Module[{tmp},
	If[basis === "NR_p" || basis === "NR_n",
	Return[CoeffsList[basis][[coeff]]],
	tmp = (Head[#][basis]@(#/.Head[#]->Sequence)) &@ coeff;
	Return[CoeffsList[basis][[tmp]]]]
]


ResetBasis[basis_] := Module[{},
  CoeffsList[basis] = ConstantArray[0,BasisDim[basis]];
]


(* ------------------------------------------------------------------ *
 *  Matching correction due to EW gauge interactions
 * ------------------------------------------------------------------ *)
f[mx_, mw_: 80.385] := 
 Module[{xi}, xi = mw^2/mx^2; 
  Sqrt[xi]/2 (4 + (2 (-4 + xi^2) ArcTanh[Sqrt[(-4 + xi)/xi]])/ \
     Sqrt[(-4 + xi) xi] - 2 xi Log[xi] +  \
     Sqrt[(-4 + xi) xi] Log[1/2 (-2 + xi + Sqrt[(-4 + xi) xi])])]

\[Delta]C75 = (Sqrt[4 \[Pi]*\[Alpha]emMZ] \[Alpha]emMZ)/(
  2 \[Pi]*sw^3 \[Lambda]*vev^3) \[ScriptCapitalJ]\[Chi]*f[MX];


BasisID/:BasisID["NR"] 			= 0;
BasisID/:BasisID["3Flavor"] = 1;
BasisID/:BasisID["4Flavor"] = 6;
BasisID/:BasisID["5Flavor"] = 9;


Options[ComputeCoeffs] = {Running->True};


ComputeCoeffs[basi_, basf_, OptionsPattern[]] := Module[
	{bi,bf,tmpp,tmpn, c75tmp, UMat, RMat, runtf},
	runtf = OptionValue[Running];
	bi = BasisID[basi];
	bf = BasisID[basf];
  (* ------------------------------------------------------------------------ *)
	If[ bi < bf, Print["Running and matching are only implemented\n\
from a high to a low scale at the moment."]; Abort[];];
  (* ------------------------------------------------------------------------ *)
	RMat[BasisID["3Flavor"]] = RTMP[3, "3GeV", "2GeV"];
	RMat[BasisID["4Flavor"]] = RTMP[4, "MB",   "3GeV"];
	RMat[BasisID["5Flavor"]] = RTMP[5, "MZ",   "MB" ];
	If[ bi==9 && \[ScriptCapitalJ]\[Chi] != 0,
		Do[c75tmp = GetCoeff["5Flavor", Q7[5,fl]];
			SetCoeff["5Flavor",Q7[5,fl], c75tmp + \[Delta]C75];,
			{fl,flavors[5][[;;5]]}]
	];
  (* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *)
	Switch[ bi+bf,
		18, UMat = If[runtf, RMat[9], IdentityMatrix[BasisDim["5Flavor"]]],
		15, UMat = If[runtf, MAT45.RMat[9], MAT45],
		12, UMat = If[runtf, RMat[6], IdentityMatrix[BasisDim["4Flavor"]]],
		10, UMat = If[runtf, MAT34.RMat[6].MAT45.RMat[9], MAT34.MAT45],
		 7, UMat = If[runtf, MAT34.RMat[6], MAT34],
		 2, UMat = If[runtf, RMat[1], IdentityMatrix[BasisDim["3Flavor"]]],
		(* ----------------------------------------------------------------------- * 
     *  The following cases end in the NR basis, must treat p & n separately
		 * ----------------------------------------------------------------------- *)
		 9, UMat = If[runtf, RMat[1].MAT34.RMat[6].MAT45.RMat[9], MAT34.MAT45],
		 6, UMat = If[runtf, RMat[1].MAT34.RMat[6], MAT34],
		 1, UMat = If[runtf, RMat[1], IdentityMatrix[BasisDim["3Flavor"]]],
		 0, UMat = IdentityMatrix[BasisDim["NR"]]; Print["Both the initial and final bases\
are the NR EFT basis.\nThere is nothing to do. The evolution matrix is the Identity."];
	];
  (* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *)
	If[ bf != 0,
		CoeffsList[basf] = UMat.CoeffsList[basi];,
		(* -------------------------------------------------- *)
		CoeffsList["NR_p"] = CNRMATp.UMat.CoeffsList[basi];
		CoeffsList["NR_n"] = CNRMATn.UMat.CoeffsList[basi];
	]
]



SetIChi[IX_] := Module[{}, \[ScriptCapitalJ]\[Chi] = IX(IX+1) ];


(* -------------------------------------------------------------------------- *
 *  The coefficients of the QCD beta function. The overvall normalization
 *  follows Appendix A in [1409.8290] by Hill and Solon.
 * -------------------------------------------------------------------------- *)
bet[0][nf_] := 11 - 2/3*nf;
bet[1][nf_] := 102 - 38/3*nf;
bet[2][nf_] := 2857/2 - 5033/18*nf + 325/54*nf^2;
bet[3][nf_] := 149753/6 + 3564*Zeta[3] - (1078361/162 + 6508/27*Zeta[3])*nf+\
  (50065/162 + 6472/81*Zeta[3])*nf^2 + 1093/729*nf^3;


(* -------------------------------------------------------------------------- *
 *  The coefficients of the mass anomalous dimensions. The overvall
 *  normalization follows Appendix A in [1409.8290] by Hill and Solon.
 * -------------------------------------------------------------------------- *)
gam[0][nf_] := 8;
gam[1][nf_] := 404/3 - 40/9*nf;
gam[2][nf_] := 2498 - (4432/27 + 320/3*Zeta[3])*nf - 280/81*nf^2;
gam[3][nf_] := 4603055/81 + 271360/27*Zeta[3] - 17600*Zeta[5] + \
  (-183446/27 - 68384/9*Zeta[3] + 1760*Zeta[4] + 36800/9*Zeta[5])*nf + \
  (10484/243 + 1600/9*Zeta[3] - 320/3*Zeta[4])*nf^2 + \
  (-664/243 + 128/27*Zeta[3])*nf^3;


(* -------------------------------------------------------------------------- *
 *  Now define the two functions in Eq. (108) of App. A in [1409.8290]
 *  OverTilde[\[Beta]] = dLog[\[Beta]]/dLog[\[Mu]] and
 *  \[Gamma]m = dLog[m_q]/dLog[\[Mu]]
 * -------------------------------------------------------------------------- *)
betilde[nf_, as_] := - Sum[ bet[i][nf]*( as / (4\[Pi]) )^(i+1), {i,0,3}];
gammamq[nf_, as_] := - Sum[ gam[i][nf]*( as / (4\[Pi]) )^(i+1), {i,0,3}];


as1l[al0_, mu0_, muf_, nf_] := al0/(1 + al0*(11 - 2/3 nf)/(2 \[Pi]) Log[muf/mu0]);


as2l[al0_, mu0_, muf_, nf_] := 
 al[Log[muf]] /. 
  Flatten@NDSolve[{1/(2 al[logmu]) al'[logmu] == -b0[nf]*
        al[logmu]/(4 \[Pi]) - b1[nf]*(al[logmu]/(4 \[Pi]))^2, 
     al[Log[mu0]] == al0}, al, {logmu, Log[mu0], Log[muf]}];

AlphaS["MB"]   = as1l[AlphaS["MZ"]  , MZ, MBatMBms, 5];
AlphaS["3GeV"] = as1l[AlphaS["MB"]  , MBatMBms, 3, 4];
AlphaS["2GeV"] = as1l[AlphaS["3GeV"], 3, 2, 3];


End[]


EndPackage[]
