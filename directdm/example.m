(* ::Package:: *)

$DirectDMDirectory="OwnCloud/Uni/Bachelorarbeit/directdm/";
AppendTo[$Path,$DirectDMDirectory];


<<DirectDM`


?SetCoeff


?GetCoeff


?ComputeCoeffs


(* ::Text:: *)
(*Set the EFT scale*)


lam=100 (* GeV *);


Do[SetCoeff["5Flavor",Q7[i,f],1/lam^3],{i,5,8},{f,{"u","d","s","c","b"}}]


ComputeCoeffs["5Flavor","NR"];


CoeffsList["NR_p"]//Simplify


(* ::Text:: *)
(*To compute the event rate using the DMFormFactor package by Anand, Fitzpatrick, & Haxton [1308.6288], download the package and load it here.*)


Needs["dmformfactor`","OwnCloud/Uni/Bachelorarbeit/directdm/v6/dmformfactor-V6.m"]


mNucleon=0.938 GeV;
NT=1/(131 mNucleon);
Centimeter=(10^13 Femtometer);
rhoDM=0.3 GeV/Centimeter^3;
ve=232 KilometerPerSecond;
v0=220 KilometerPerSecond;
vev=246;


Do[
SetCoeffsNonrel[i,vev^2(CoeffsList["NR_p"])[[i]]/.{qsq->qGeV^2},"p"];
SetCoeffsNonrel[i,vev^2(CoeffsList["NR_n"])[[i]]/.{qsq->qGeV^2},"n"];,
{i,14}];


SetIsotope[54,131,"default","default"]


SetJChi[1/2];
SetMChi[MX GeV];


myrate[qGeV_,MX_]=EventRate[NT,rhoDM,qGeV,ve,v0]


GeV myrate[Sqrt[131mNucleon*2*30*1*^-6/GeV],100.]


tab=Table[{10^mass,
NIntegrate[KilogramDay GeV (myrate[Sqrt[132mNucleon*2*ER*1*^-6/GeV],10^mass])
Piecewise[{{1,ER>3&&ER<40},{0,ER>40||ER<3}}],{ER,0,50}]},
{mass,Log10[2],3,(3-Log10[2])/50}]


MX = 100;
ApproxTotalCrossSection[ve]



