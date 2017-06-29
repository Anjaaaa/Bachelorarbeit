(* ::Package:: *)

Print[Style["DirectDM v0.0 (beta)",Bold,RGBColor["#4682B4"],16]];
Print["A package for matching relativistic DM x SM EFT onto the \
non-relativistic Galilean invariant EFT for DM direct detection."];
Print["By: Fady Bishara, Joachim Brod, Ben Grinstein, and Jure Zupan; \
Please cite [1703.xxxxx]."];
Print["\nAvailable functions are: SetCoeff, GetCoeff, CoeffsList, ComputeCoeffs, \
and ResetBasis.\n\
Implemented bases are: \"5Flavor\", \"4Flavor\", \"3Flavor\", and \"NR\".\n\n\
For the \"NR\" basis, the CoeffsList function takes \"NR_p\" and \"NR_n\" as \
inputs to distinguish between the proton and neutron Wilson coefficients.\n\n\
Type ?SetCoeff, e.g., for usage information\n"];


BeginPackage["DirectDM`"]


CoeffsList::usage="CoeffsList[\"basis\",optional arguments] returns the list \
of Wilson coefficients.\n
The \"basis\" input can take the values {\"NREFT\",\"HDMET\"}.\n
In the \"NREFT\", \"basis\" is either \"NR_p\" or \"NR_n\"
corresponding to the proton or neutron Wilson coefficients."


SetCoeff::usage="SetCoef[\"basis\",coefficient,value]"


GetCoeff::usage="SetCoef[\"basis\",coefficient] returns the value of the \
coefficient."


ComputeCoeffs::usage = "ComputeCoeffs[basis_i, basis_f] sets the coefficients in basis_f \
by performing the running and matching starting from basis_i.\n\
This function takes an optional parameter Running -> True or False. \
It is set to True by default."


ResetBasis::usage = "ResetBasis[\"basis\"] resets all Wilson coefficients \
to zero";


Q5::usage="Dimension 5 operators";
Q6::usage="Dimension 6 operators";
Q7::usage="Dimension 7 operators";


qsq::usage="\!\(\*OverscriptBox[\(q\), \(\[RightVector]\)]\)"


MX::usage="Dark matter mass in [GeV]"


EndPackage[]
