(* Initialization file for the package DirectDM` *)

Get["DirectDM`usage`"];
Get["DirectDM`functions`"];
Get["DirectDM`inputs`"];


(* Bases *)

Get["DirectDM`bases`fiveflavor`"];
Get["DirectDM`bases`fourflavor`"];
Get["DirectDM`bases`threeflavor`"];
Get["DirectDM`bases`nreft`"];


(* Matching *)

Get["DirectDM`matching`match45`"];
Get["DirectDM`matching`match34`"];
Get["DirectDM`matching`matchcnr`"];


(* Running *)

Get["DirectDM`running`runnfsm`"];


(* ---------------------------------------------------------------- * 
 * 	Show the basis upon loading -- for beta version only?
 * ---------------------------------------------------------------- *)
Print["The nf = {3,4,5} basis is displayed below. The tensor x tensor currents \
are not currently matched onto the NR EFT."];
Print["To display the NR EFT basis, type PrintNRBasis"];
Print[Style["Note that the Wilson coefficients are dimensionfull!",15,Bold,RGBColor["#B22222"]]];
PrintNRBasis = Import["DirectDM/nrbasis.png"];
Import["DirectDM/basis.png"]
