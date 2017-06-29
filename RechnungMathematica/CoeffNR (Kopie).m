(* ::Package:: *)




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

t0 = 0; (*schwacher Isospin Eigenwert der DM, tritt nur auf, wenn a = 3*)
mP = 0.938;
mN = 0.940;
mEta = 0.547;
mPi = 0.139;

(* Chiral EFT in DM Direct Detection Anhang C *)
Du = 0.897; (* Delta u = Delta u(proton) = Delta d(neutron) *)
Dd = -0.376; (* Delta d = Delta d(proton) = Delta u(neutron) *)
Ds = -0.025; (* Delta s *)
gA = Du-Dd;
mu1 = 1.84; (* mu1 = mu_u^p = mu_d^n *)
mu2 = -1.03; (* mu2 = mu_d^p = mu_u^n *)
mu3 = -0.073; (* mu3 = mu_s^p = mu_s^n *)


(* --------------------------------------------------------------------------------------------------- *)
(* RECHNUNG *)
Import["OwnCloud/Uni/Bachelorarbeit/RechnungMathematica/DefCoeff.m"]
Import["OwnCloud/Uni/Bachelorarbeit/RechnungMathematica/SetCoeff.m"]
Import["OwnCloud/Uni/Bachelorarbeit/RechnungMathematica/CalcCoeff.m"]



(* ------------------------------------------------------------------------------------------------------ *)
(* AUSRECHNEN DER NICHT-RELATIVISTISCHEN KOEFFIZIENTEN *)
Array[NRp,{14}];
Array[NRn,{14}];
Do[NRp[i] = 0,
	{i,1,14}
];
Do[NRn[i] = 0,
	{i,1,14}
];

NRp[1] = 2*C6[1,1] + C6[1,2];
NRp[4] = -4 * (Du*C6[4,1] + Dd*C6[4,2] + Ds*C6[4,3]);
NRp[6] = mP^2 * (2/3*(Du+Dd+Ds)/(mEta^2+qsq) * (C6[4,1]+C6[4,2]-2*C6[4,3])) + 2*gA/(mPi^2+qsq) * (C6[4,1]-C6[4,2]);
NRp[7] = -2*(Du*C6[3,1] + Dd*C6[3,2] + Ds*C6[3,3]);
NRp[8] = 4*C6[2,1] + 2*C6[2,2];
NRp[9] = 4*mu1*C6[2,1] + 2*mu2*C6[2,2] - 6*mu3*C6[2,3] + 4*mP/mX*(Du*C6[3,1] + Dd*C6[3,2] + Ds*C6[3,3]);

NRn[1] = 2*C6[1,2] + C6[1,1];
NRn[4] = -4 * (Du*C6[4,2] + Dd*C6[4,1] + Ds*C6[4,3]);
NRn[6] = mN^2 * (2/3*(Du+Dd+Ds)/(mEta^2+qsq) * (C6[4,2]+C6[4,1]-2*C6[4,3])) + 2*gA/(mPi^2+qsq) * (C6[4,2]-C6[4,1]);
NRn[7] = -2*(Du*C6[3,2] + Dd*C6[3,1] + Ds*C6[3,3]);
NRn[8] = 4*C6[2,2] + 2*C6[2,1];
NRn[9] = 4*mu1*C6[2,2] + 2*mu2*C6[2,1] - 6*mu3*C6[2,3] + 4*mN/mX*(Du*C6[3,2] + Dd*C6[3,1] + Ds*C6[3,3]);


(* --------------------------------------------------------------------------------------------------- *)
(* Berechnen der Koeffizienten aus Kap. 4B  *)
Array[p,{6}];
Array[n,{6}];
Do[p[i] = 0,
	{i,1,6}
];
Do[n[i] = 0,
	{i,1,6}
];

p[1] = 2*C6[1,1] + C6[1,2];
p[2] = -4 * (Du*C6[4,1] + Dd*C6[4,2] + Ds*C6[4,3]);
p[6] = -2/3*(Du+Dd-2*Ds)/(mEta^2-qsq) * (C6[4,1]+C6[4,2]-2*C6[4,3]) - 2*gA/(mPi^2-qsq) * (C6[4,1]-C6[4,2]);
p[3] = 2/mP*(Du*C6[3,1] + Dd*C6[3,2] + Ds*C6[3,3]);
p[4] = -1/mP*4*C6[2,1] - 1/m*2*C6[2,2];
p[5] = 1/mP*(4*mu1*C6[2,1] + 2*mu2*C6[2,2] - 6*mu3*C6[2,3] + 4*mP/mX*(Du*C6[3,1] + Dd*C6[3,2] + Ds*C6[3,3]));

n[1] = 2*C6[1,2] + C6[1,1];
n[2] = -4 * (Du*C6[4,2] + Dd*C6[4,1] + Ds*C6[4,3]);
n[6] = -2/3*(Du+Dd-2*Ds)/(mEta^2-qsq) * (C6[4,2]+C6[4,1]-2*C6[4,3]) - 2*gA/(mPi^2-qsq) * (C6[4,2]-C6[4,1]);
n[3] = 2/mN*(Du*C6[3,2] + Dd*C6[3,1] + Ds*C6[3,3]);
n[4] = -1/mN*4*C6[2,2] - 1/mN*2*C6[2,1];
n[5] = 1/mN*(4*mu1*C6[2,2] + 2*mu2*C6[2,1] - 6*mu3*C6[2,3] + 4*mN/mX*(Du*C6[3,2] + Dd*C6[3,1] + Ds*C6[3,3]));


Array[c,{2,6}];
Do[c[1,i] = (p[i]+n[i])/2,
	{i,1,6}
];
Do[c[2,i] = (p[i]-n[i])/2,
	{i,1,6}
];


Array[R1,{2,2}];
Array[R2,{2,2}];
Array[R3,{2,2}];
Array[R4,{2,2}];
Do[R1[i,j] = c[i,1]*c[j,1] + mN^2/4*((vX-q/2/muX)^2 * c[i,4]*c[j,4]),
	{i,1,2},
	{j,1,2}
]


Quit[]
