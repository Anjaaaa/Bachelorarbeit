(* ::Package:: *)

BeginPackage["DirectDM`"];


Begin["`Private`"]


CNRMATp=ConstantArray[0,{15,BasisDim["3Flavor"]}];
CNRMATn=ConstantArray[0,{15,BasisDim["3Flavor"]}];


CNRMAT/:CNRMAT["p"]=CNRMATp;
CNRMAT/:CNRMAT["n"]=CNRMATn;


(* ------------------------------------------------------------------ *
 *  Set the row for cNR_1
 * ------------------------------------------------------------------ *)
Block[{cnr}, cnr = 1;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q63[1,"u"]]]=2;  CNRMATp[[1,Q63[1,"d"]]]=1;
	CNRMATn[[cnr,Q63[1,"d"]]]=2;  CNRMATn[[1,Q63[1,"u"]]]=1;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q73[1]]] = - 2 mG / 27;
	CNRMATn[[cnr,Q73[1]]] = - 2 mG / 27;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q73[5,"u"]]] = \[Sigma]pu;  CNRMATp[[cnr,Q73[5,"d"]]] = \[Sigma]pd; 
	CNRMATn[[cnr,Q73[5,"d"]]] = \[Sigma]nd;  CNRMATn[[cnr,Q73[5,"u"]]] = \[Sigma]nu; 
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q73[5,"s"]]] = \[Sigma]s;
	CNRMATn[[cnr,Q73[5,"s"]]] = \[Sigma]s;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q53[1]]] = -\[Alpha]em / (2 \[Pi] MX);
	CNRMATn[[cnr,Q53[1]]] = 0 (* since Qn = 0 *);
]


(* ------------------------------------------------------------------ *
 *  Set the row for cNR_4
 * ------------------------------------------------------------------ *)
Block[{cnr}, cnr = 4;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q63[4,"u"]]] = - 4 \[CapitalDelta]up;
	CNRMATn[[cnr,Q63[4,"d"]]] = - 4 \[CapitalDelta]dn;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q63[4,"d"]]] = - 4 \[CapitalDelta]dp;
	CNRMATn[[cnr,Q63[4,"u"]]] = - 4 \[CapitalDelta]un;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q63[4,"s"]]] = - 4 \[CapitalDelta]s;
	CNRMATn[[cnr,Q63[4,"s"]]] = - 4 \[CapitalDelta]s;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q53[1]]] = - 2 \[Alpha]em / \[Pi] * \[Mu]p / MN;
	CNRMATn[[cnr,Q53[1]]] = - 2 \[Alpha]em / \[Pi] * \[Mu]n / MN;
]


(* ------------------------------------------------------------------ *
 *  Set the row for cNR_5
 * ------------------------------------------------------------------ *)
Block[{cnr}, cnr = 5;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q53[1]]] = 2 \[Alpha]em MN / ( \[Pi] * qsq );
	CNRMATn[[cnr,Q53[1]]] = 0 (* since Qn = 0 *);
]


(* ------------------------------------------------------------------ *
 *  Set the row for cNR_6
 * ------------------------------------------------------------------ *)
Block[{cnr,tmp,tmpp,tmpn}, cnr = 6;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q53[1]]] = MN^2(2 \[Alpha]em / ( \[Pi] * qsq ) \[Mu]p/MN);
	CNRMATn[[cnr,Q53[1]]] = MN^2(2 \[Alpha]em / ( \[Pi] * qsq ) \[Mu]n/MN);
	(* --------------------------------------------------------------- *)
	tmpp = MN^2 * 2/3(\[CapitalDelta]up+\[CapitalDelta]dp-2\[CapitalDelta]s)/(m\[Eta]^2+qsq);
	tmpn = MN^2 * 2/3(\[CapitalDelta]dn+\[CapitalDelta]un-2\[CapitalDelta]s)/(m\[Eta]^2+qsq);
	CNRMATp[[cnr,Q63[4,"u"]]] = tmpp;
	CNRMATn[[cnr,Q63[4,"d"]]] = tmpn;
	CNRMATp[[cnr,Q63[4,"d"]]] = tmpp;
	CNRMATn[[cnr,Q63[4,"u"]]] = tmpn;
	CNRMATp[[cnr,Q63[4,"s"]]] = (-2) tmpp;
	CNRMATn[[cnr,Q63[4,"s"]]] = (-2) tmpn;
	(* --------------------------------------------------------------- *)
	tmp = MN^2 * 2 gA / (m\[Pi]^2+qsq);
	CNRMATp[[cnr,Q63[4,"u"]]] += + tmp;
	CNRMATn[[cnr,Q63[4,"d"]]] += + tmp;
	CNRMATp[[cnr,Q63[4,"d"]]] += - tmp;
	CNRMATn[[cnr,Q63[4,"u"]]] += - tmp;
	(* --------------------------------------------------------------- *)
	tmp = MN^2 (-1)/MX * gA / (m\[Pi]^2 + qsq);
	CNRMATp[[cnr,Q73[8,"u"]]] = + B0mu * tmp;
	CNRMATn[[cnr,Q73[8,"d"]]] = + B0md * tmp;
	CNRMATp[[cnr,Q73[8,"d"]]] = - B0md * tmp;
	CNRMATn[[cnr,Q73[8,"u"]]] = - B0mu * tmp;
	(* --------------------------------------------------------------- *)
	tmpp = MN^2 (-1)/(3 MX) * (\[CapitalDelta]up+\[CapitalDelta]dp-2\[CapitalDelta]s) / (m\[Eta]^2 + qsq);
	tmpn = MN^2 (-1)/(3 MX) * (\[CapitalDelta]dn+\[CapitalDelta]un-2\[CapitalDelta]s) / (m\[Eta]^2 + qsq);
	CNRMATp[[cnr,Q73[8,"u"]]] += + B0mu * tmpp;
	CNRMATn[[cnr,Q73[8,"d"]]] += + B0md * tmpn;
	CNRMATp[[cnr,Q73[8,"d"]]] += + B0md * tmpp;
	CNRMATn[[cnr,Q73[8,"u"]]] += + B0mu * tmpn;
	CNRMATp[[cnr,Q73[8,"s"]]] = - 2 B0ms * tmpp;
	CNRMATn[[cnr,Q73[8,"s"]]] = - 2 B0ms * tmpn;
	(* --------------------------------------------------------------- *)
	(*
	tmpp = - MN^2 * mtilde/MX * \
			(\[CapitalDelta]up/mu+\[CapitalDelta]dp/md+\[CapitalDelta]s/ms \
			- gA/2(1/mu-1/md) qsq /(m\[Pi]^2+qsq) \
			- 1/6(\[CapitalDelta]up+\[CapitalDelta]dp-2\[CapitalDelta]s) \
			(1/mu+1/md-2/ms) qsq / (m\[Eta]^2+qsq) );
	tmpn = - MN^2 * mtilde/MX * \
			(\[CapitalDelta]dn/md+\[CapitalDelta]un/mu+\[CapitalDelta]s/ms \
			- gA/2(1/md-1/mu) qsq /(m\[Pi]^2+qsq) \
			- 1/6(\[CapitalDelta]dn+\[CapitalDelta]un-2\[CapitalDelta]s) * \
			(1/md+1/mu-2/ms) qsq / (m\[Eta]^2+qsq) );
	*)
	tmpp = - MN^2 * mtilde/MX * (\[CapitalDelta]up/mu+\[CapitalDelta]dp/md+\[CapitalDelta]s/ms - gA/2(1/mu-1/md) qsq /(m\[Pi]^2+qsq) - 1/6(\[CapitalDelta]up+\[CapitalDelta]dp-2\[CapitalDelta]s) (1/mu+1/md-2/ms) qsq / (m\[Eta]^2+qsq) );
	tmpn = - MN^2 * mtilde/MX * (\[CapitalDelta]dn/md+\[CapitalDelta]un/mu+\[CapitalDelta]s/ms - gA/2(1/md-1/mu) qsq /(m\[Pi]^2+qsq) - 1/6(\[CapitalDelta]dn+\[CapitalDelta]un-2\[CapitalDelta]s) * (1/md+1/mu-2/ms) qsq / (m\[Eta]^2+qsq) );
	CNRMATp[[cnr,Q73[4]]] = tmpp;
	CNRMATn[[cnr,Q73[4]]] = tmpn;
]


(* ------------------------------------------------------------------ *
 *  Set the row for cNR_7
 * ------------------------------------------------------------------ *)
Block[{cnr}, cnr = 7;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q63[3,"u"]]] = - 2 \[CapitalDelta]up;  CNRMATp[[cnr,Q63[3,"d"]]] = - 2 \[CapitalDelta]dp;
	CNRMATn[[cnr,Q63[3,"d"]]] = - 2 \[CapitalDelta]dn;  CNRMATn[[cnr,Q63[3,"u"]]] = - 2 \[CapitalDelta]un;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q63[3,"s"]]] = - 2 \[CapitalDelta]s;
	CNRMATn[[cnr,Q63[3,"s"]]] = - 2 \[CapitalDelta]s;
]


(* ------------------------------------------------------------------ *
 *  Set the row for cNR_8
 * ------------------------------------------------------------------ *)
Block[{cnr}, cnr = 8;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q63[2,"u"]]] = 4;  CNRMATp[[cnr,Q63[2,"d"]]] = 2;
	CNRMATn[[cnr,Q63[2,"d"]]] = 4;  CNRMATn[[cnr,Q63[2,"u"]]] = 2;
]


(* ------------------------------------------------------------------ *
 *  Set the row for cNR_9
 * ------------------------------------------------------------------ *)
Block[{cnr}, cnr = 9;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q63[2,"u"]]] = 4 \[Mu]hatup;  CNRMATp[[cnr,Q63[2,"d"]]] = 2 \[Mu]hatdp;
	CNRMATn[[cnr,Q63[2,"d"]]] = 4 \[Mu]hatdn;  CNRMATn[[cnr,Q63[2,"u"]]] = 2 \[Mu]hatun;
	CNRMATp[[cnr,Q63[2,"s"]]] = - 6 \[Mu]s;
	CNRMATn[[cnr,Q63[2,"s"]]] = - 6 \[Mu]s;
	CNRMATp[[cnr,Q63[3,"u"]]] = 4 MN/MX \[CapitalDelta]up;  CNRMATp[[cnr,Q63[3,"d"]]] = 4 MN/MX \[CapitalDelta]dp;
	CNRMATn[[cnr,Q63[3,"d"]]] = 4 MN/MX \[CapitalDelta]dn;  CNRMATn[[cnr,Q63[3,"u"]]] = 4 MN/MX \[CapitalDelta]un;
	CNRMATp[[cnr,Q63[3,"s"]]] = 4 MN/MX \[CapitalDelta]s;
	CNRMATn[[cnr,Q63[3,"s"]]] = 4 MN/MX \[CapitalDelta]s;
]


(* ------------------------------------------------------------------ *
 *  Set the row for cNR_10
 * ------------------------------------------------------------------ *)
Block[{cnr,tmpp,tmpn}, cnr = 10;
	(* --------------------------------------------------------------- *)
	tmp = MN * gA / (m\[Pi]^2 + qsq);
	CNRMATp[[cnr,Q73[7,"u"]]] = + B0mu * tmp;
	CNRMATn[[cnr,Q73[7,"d"]]] = + B0md * tmp;
	CNRMATp[[cnr,Q73[7,"d"]]] = - B0md * tmp;
	CNRMATn[[cnr,Q73[7,"u"]]] = - B0mu * tmp;
	(* --------------------------------------------------------------- *)
	tmpp = MN / 3 * (\[CapitalDelta]up+\[CapitalDelta]dp-2\[CapitalDelta]s) / (m\[Eta]^2 + qsq);
	tmpn = MN / 3 * (\[CapitalDelta]dn+\[CapitalDelta]un-2\[CapitalDelta]s) / (m\[Eta]^2 + qsq);
	CNRMATp[[cnr,Q73[7,"u"]]] += + B0mu * tmpp;
	CNRMATn[[cnr,Q73[7,"d"]]] += + B0md * tmpn;
	CNRMATp[[cnr,Q73[7,"d"]]] += + B0md * tmpp;
	CNRMATn[[cnr,Q73[7,"u"]]] += + B0mu * tmpn;
	CNRMATp[[cnr,Q73[7,"s"]]]  = - 2 B0ms * tmpp;
	CNRMATn[[cnr,Q73[7,"s"]]]  = - 2 B0ms * tmpn;
	(* --------------------------------------------------------------- *)
(* ---- COMMENTED OUT FOR TESTING! ----
	tmpp = - MN * mtilde (\[CapitalDelta]up/mu+\[CapitalDelta]dp/md+\[CapitalDelta]s/ms \
			- gA/2(1/mu-1/md) qsq /(m\[Pi]^2+qsq) \
			- 1/6(\[CapitalDelta]up+\[CapitalDelta]dp-2\[CapitalDelta]s) * \
			(1/mu+1/md-2/ms) qsq / (m\[Eta]^2+qsq) );
	tmpn = - MN * mtilde (\[CapitalDelta]dn/md+\[CapitalDelta]un/mu+\[CapitalDelta]s/ms \
			- gA/2(1/md-1/mu) qsq /(m\[Pi]^2+qsq) \
			- 1/6(\[CapitalDelta]dn+\[CapitalDelta]un-2\[CapitalDelta]s) * \
			(1/md+1/mu-2/ms) qsq / (m\[Eta]^2+qsq) );
 ---- *)
(* ---- DELETE BELOW AFTER TESTING ---- *)
	tmpp = - MN * mtilde (\
				(\[CapitalDelta]up/mu+\[CapitalDelta]dp/md+\[CapitalDelta]s/ms) \
			- gA/2(1/mu-1/md) qsq /(m\[Pi]^2+qsq) \
			- 1/6(\[CapitalDelta]up+\[CapitalDelta]dp-2\[CapitalDelta]s) * \
			(1/mu+1/md-2/ms) qsq / (m\[Eta]^2+qsq) );
	tmpn = - MN * mtilde (\
				(\[CapitalDelta]dn/md+\[CapitalDelta]un/mu+\[CapitalDelta]s/ms) \
			- gA/2(1/md-1/mu) qsq /(m\[Pi]^2+qsq) \
			- 1/6(\[CapitalDelta]dn+\[CapitalDelta]un-2\[CapitalDelta]s) * \
			(1/md+1/mu-2/ms) qsq / (m\[Eta]^2+qsq) );
	CNRMATp[[cnr,Q73[3]]] = tmpp;
	CNRMATn[[cnr,Q73[3]]] = tmpn;
]


(* ------------------------------------------------------------------ *
 *  Set the row for cNR_11
 * ------------------------------------------------------------------ *)
Block[{cnr,tmp}, cnr = 11;
	tmp = MN/MX;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q73[6,"u"]]] = - tmp * \[Sigma]pu;
	CNRMATp[[cnr,Q73[6,"d"]]] = - tmp * \[Sigma]pd; 
	CNRMATn[[cnr,Q73[6,"d"]]] = - tmp * \[Sigma]nd;
	CNRMATn[[cnr,Q73[6,"u"]]] = - tmp * \[Sigma]nu; 
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q73[6,"s"]]] = - tmp * \[Sigma]s;
	CNRMATn[[cnr,Q73[6,"s"]]] = - tmp * \[Sigma]s;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q73[2]]] = 2 tmp * mG / 27;
	CNRMATn[[cnr,Q73[2]]] = 2 tmp * mG / 27;
	(* --------------------------------------------------------------- *)
	CNRMATp[[cnr,Q53[2]]] = 2 tmp * \[Alpha]em MX/ (\[Pi] qsq);
	CNRMATn[[cnr,Q53[2]]] = 0 (* since Qn = 0 *);
]


End[]


EndPackage[]
