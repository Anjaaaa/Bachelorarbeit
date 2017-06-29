(* ::Package:: *)

(* ------------------------------------------------------------------------------------------------------ *)
(* HIER KOENNTEN SPEZIELLE WERTE FUER DIE CHIRALEN KOEFFIZIENTEN GESETZT WERDEN. *)


(* Nur einzelne Koeffizienten *)
Do[ CChiral6[m,i,j] = 0,
	{m,1,8},
	{i,1,3},
	{j,1,3}
];
CChiral6[2,2,3] = Subscript[C,2];
CChiral6[2,3,2] = Subscript[C, 2]\[Conjugate];

