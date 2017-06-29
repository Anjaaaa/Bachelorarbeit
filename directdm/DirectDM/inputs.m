(* ::Package:: *)

BeginPackage["DirectDM`"]


Begin["`Private`"]



\[CapitalDelta]up = \[CapitalDelta]dn = + 0.897;
\[CapitalDelta]dp = \[CapitalDelta]un = - 0.376;
\[CapitalDelta]s = -0.026;
\[Mu]p = 2.79; \[Mu]n = -1.91; \[Mu]s = -0.073;
B0mu = 6200*^-6   (* GeV^2 *);
B0md = 13300*^-6  (* GeV^2 *);
B0ms = 0.27       (* GeV^2 *);
\[Sigma]pu = 17*^-3 (* GeV *); \[Sigma]nu = 15*^-3 (* GeV *);
\[Sigma]pd = 32*^-3 (* GeV *); \[Sigma]nd = 36*^-3 (* GeV *);
\[Sigma]s = 41.3*^-3 (* GeV *);
gA = 1.2723; mG = 848*^-3 (* GeV *);
\[Mu]hatup = \[Mu]hatdn = + 1.84;
\[Mu]hatdp = \[Mu]hatun = - 1.03;
(* -------------------------------------------------------- *
 *  u, d, and s masses are MSbar at 2 GeV from 2016 PDG
 * -------------------------------------------------------- *)
mu = 2.2*^-3 (* GeV *);
md = 4.7*^-3 (* GeV *);
ms = 96*^-3  (* GeV *);
(* -------------------------------------------------------- *)
MN = (0.938272 + 0.939565)/2 (* GeV *); (* average of m_p and m_n *)
m\[Pi]  = 134.9766*^-3 (* GeV *);
m\[Eta] = 547.862*^-3  (* GeV *);
\[Alpha]em = 1./137;
mtilde = 1/(1/mu + 1/md + 1/ms) (* Eq. B17 in [1611.00368] *);


\[Alpha]emMZ = 1/127.952;
MH           = 125     (* [GeV] *);
MZ           = 91.1876 (* [GeV] *);
AlphaS["MZ"] = 0.1181  (* From 2016 PDG *);
MBatMBms     = 4.18    (* [GeV] -- from the 2016 PDG *);
MCat3GeVms   = 0.9851  (* [GeV] -- from lattice calculation in [1408.4169] *);
vev          = 246     (* [GeV] *);
sw           = Sqrt[0.23129] (* From PDG 2016; MSbar at MZ *);
\[Lambda]    = 2*MH^2/vev^2 (* Dimensionless Higgs trilinear *);


scale["2GeV"] = 2; scale["MB"] = MBatMBms;
scale["3GeV"] = 3; scale["MZ"] = MZ;


End[]


EndPackage[]
