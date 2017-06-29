(* ::Package:: *)

(* Hier werden die Koeffizienten in der chiralen und der normalen Operatorbasis gesetzt, erstmal alle ganz allgemein. *)


(* Zuerst die chiralen Koeffizienten. *)
(* Die Indizes i,j stehen hier f\[UDoubleDot]r die Generation. *)


Array[CChiral6,{8,3,3}];
Do[ CChiral6[m,i,j] = Subscript[Chiral6,m, i, j],
	{m,1,8},
	{i,1,3},
	{j,1,3}
];


(* Wobei man hier beachten muss, dass manche Operatoren (und damit auch manche Koeffizienten) ausgeschlossen werden. *)
(* Bei 3,4,7,8 treten keine Mischterme und keine 33-Terme auf. *)
(* Bei 3 und 7 treten auch keine 22 Terme auf (Das waeren die cc-Terme). *)


CChiral6[3,1,2] = 0;
CChiral6[3,2,1] = 0;
CChiral6[3,1,3] = 0;
CChiral6[3,3,1] = 0;
CChiral6[3,2,2] = 0;
CChiral6[3,3,3] = 0;
CChiral6[7,1,2] = 0;
CChiral6[7,2,1] = 0;
CChiral6[7,1,3] = 0;
CChiral6[7,3,1] = 0;
CChiral6[7,2,2] = 0;
CChiral6[7,3,3] = 0;
CChiral6[4,1,2] = 0;
CChiral6[4,2,1] = 0;
CChiral6[4,1,3] = 0;
CChiral6[4,3,1] = 0;
CChiral6[4,3,3] = 0;
CChiral6[8,1,2] = 0;
CChiral6[8,2,1] = 0;
CChiral6[8,1,3] = 0;
CChiral6[8,3,1] = 0;
CChiral6[8,3,3] = 0;


(* Dann die normalen Koeffizienten. *)
(* Die Indizes hier stehen f\[UDoubleDot]r 1=u, 2=d, 3=s. *)


Array[C5,2];
C5[1] = 0;
C5[2] = 0;
Array[C6,{4,3}];
Do[ C6[m,i] = Subscript[C6,m, i],
	{m,1,4},
	{i,1,3}
];
Array[C7,{10,3}];
Do[ C7[m,i] = 0,
	{m,1,10},
	{i,1,3}
];






