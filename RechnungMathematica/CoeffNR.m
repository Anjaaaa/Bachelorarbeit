(* ::Package:: *)

$DirectDMDirectory="OwnCloud/Uni/Bachelorarbeit/directdm/";
AppendTo[$Path,$DirectDMDirectory];

<<DirectDM`

(* Lade das dmformfactor-Package *)
Needs["dmformfactor`","OwnCloud/Uni/Bachelorarbeit/directdm/v6/dmformfactor-V6.m"]


(* --------------------------------------------------------------------------------------------------- *)
(* Setzen der Konstanten. *)


Array[V,{2,2}];
V[1,1] = 1;
V[2,2] = 1;
V[3,3] = 1;
V[1,2] = 0;
V[1,3] = 0;
V[2,1] = 0;
V[2,3] = 0;
V[3,1] = 0;
V[3,2] = 0;
lambda = 0.225;
A = 0.82;
rho = 0.14;
eta = 0.35;
V[1,1] = 1-lambda^2/2;			(* V11 = V1d = Vud *)
V[1,2] = lambda;					(* V12 = V1s = Vus *)
V[1,3] = A*lambda^3*(rho-I*eta);	(* V13 = V1b = Vub *)
V[2,1] = -lambda;				(* V21 = V2d = Vcd *)
V[2,2] = 1-lambda^2/2;			(* V22 = V2s = Vcs *)
V[2,3] = A*lambda^2;				(* V23 = V2b = Vcb *)
V[3,1] = A*lambda^3*(1-rho-I*eta);	(* V31 = V3d = Vtd *)
V[3,2] = -A*lambda^3;				(* V32 = V3s = Vts *)
V[3,3] = 1;						(* V33 = V3b = Vtb *)
SetJChi[1/2];
SetMChi[MX GeV];
SetIsotope[54,131,"default","default"];


Import["OwnCloud/Uni/Bachelorarbeit/RechnungMathematica/DefCoeff.m"]
Import["OwnCloud/Uni/Bachelorarbeit/RechnungMathematica/SetCoeff.m"]
Import["OwnCloud/Uni/Bachelorarbeit/RechnungMathematica/CalcCoeff.m"]



ComputeCoeffs["3Flavor","NR"]
CoeffsList["NR_p"]
CoeffsList["NR_n"]


(* --------------------------------------------------------------------------------------------------- *)
(* CROSS SECTION AUSRECHNEN *)


(*MX = 5;*)
Mediator = MX GeV * n;
Do[
	SetCoeffsNonrel[k,Mediator^2*(CoeffsList["NR_p"])[[k]]/.{qsq->qGeV^2},"p"];
	SetCoeffsNonrel[k,Mediator^2*(CoeffsList["NR_n"])[[k]]/.{qsq->qGeV^2},"n"];,
	{k,14}
];

(*v = 246 KilometerPerSecond;*)
(*qGeV = 6;*)
DiffCrossSection[50,v];
Quit[]




