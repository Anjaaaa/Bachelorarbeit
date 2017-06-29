(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[         0,          0]
NotebookDataLength[     50181,       1366]
NotebookOptionsPosition[     45549,       1257]
NotebookOutlinePosition[     45888,       1272]
CellTagsIndexPosition[     45845,       1269]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"array", "[", 
   RowBox[{"C6", ",", " ", 
    RowBox[{"{", 
     RowBox[{"8", ",", "3", ",", "3"}], "}"}]}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Do", "[", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"C6", "[", 
      RowBox[{"i", ",", "j", ",", "k"}], "]"}], " ", "=", " ", 
     RowBox[{"Subscript", "[", 
      RowBox[{"C", ",", "i", ",", "j", ",", "k"}], "]"}]}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{"i", ",", "1", ",", "8"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{"j", ",", "1", ",", "3"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{"k", ",", "1", ",", "3"}], "}"}]}], "\[IndentingNewLine]", "]"}],
   ";"}]}], "Input",
 CellChangeTimes->{{3.704857889065915*^9, 3.704857936785574*^9}, {
  3.70485797105451*^9, 3.704858007426955*^9}, {3.704859365761365*^9, 
  3.70485936731984*^9}, {3.704986009646089*^9, 3.7049860243660393`*^9}, {
  3.7049860803463078`*^9, 3.704986124946445*^9}, {3.704987596095799*^9, 
  3.7049876218790894`*^9}, {3.705032348075845*^9, 3.705032360128251*^9}, {
  3.705032397573378*^9, 3.7050324004106216`*^9}, {3.705032603202836*^9, 
  3.705032603441709*^9}},ExpressionUUID->"13ac25e1-3a5d-4db1-bbfc-\
d0dcae799239"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"R", " ", "=", " ", 
  RowBox[{"{", 
   RowBox[{"R1", ",", "R2", ",", "R3", ",", "R4"}], "}"}]}]], "Input",
 CellChangeTimes->{{3.705033725120862*^9, 
  3.7050337326419888`*^9}},ExpressionUUID->"ccc80556-a2a2-489f-acb3-\
77b971750c81"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"R1", ",", "R2", ",", "R3", ",", "R4"}], "}"}]], "Output",
 CellChangeTimes->{
  3.7050337424003572`*^9},ExpressionUUID->"ae3da4c4-7309-4784-aa31-\
e0a075bf9c52"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{3.7050323713608522`*^9, 3.7050324043363037`*^9},
 NumberMarks->False,ExpressionUUID->"03627d2c-0043-4722-827f-f82aa1c89d0b"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"array", "[", 
   RowBox[{"T", ",", " ", 
    RowBox[{"{", 
     RowBox[{"40", ",", "4"}], "}"}]}], "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"V", "[", 
   RowBox[{"1", ",", "2"}], "]"}], " ", "=", " ", 
  RowBox[{"V", "[", 
   RowBox[{"1", ",", "2"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"ClearAll", "[", 
  RowBox[{"V", "[", 
   RowBox[{"1", ",", "2"}], "]"}], "]"}]}], "Input",
 CellChangeTimes->{{3.7050335220984793`*^9, 3.7050335315427523`*^9}, {
  3.705034005709787*^9, 3.705034010814679*^9}, {3.70503465831105*^9, 
  3.7050346749180527`*^9}},ExpressionUUID->"653d080f-0cc1-4cc8-8a24-\
fa05dfffd758"],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{
  3.705034012600993*^9, {3.7050346649912643`*^9, 
   3.705034676574732*^9}},ExpressionUUID->"73a8587f-6fbf-474d-b58c-\
b3b3abf97903"],

Cell[BoxData[
 TemplateBox[{
  "ClearAll","ssym",
   "\"\\!\\(\\*RowBox[{\\\"V\\\", \\\"[\\\", RowBox[{\\\"1\\\", \\\",\\\", \\\
\"2\\\"}], \\\"]\\\"}]\\) is not a symbol or a string.\"",2,23,1,
   18817910119445810255,"Local"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{
  3.705034676692532*^9},ExpressionUUID->"cfd08200-6aaf-4530-85d4-\
bfc1ae8a9b52"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"T", " ", "=", " ", 
  RowBox[{
   RowBox[{"1", "/", "2"}], "*", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}]}], ",", " ", "1", ",", "0", ",", "0", 
       ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
       ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
       ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", "\n", "\t", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"-", " ", "1"}], "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}]}], ",", " ", "1"}], "}"}], ",", "\n", 
     "\t", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}]}], ",", " ", "1", ",", "0", ",", "0", 
       ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
       ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
       ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", "\n", "\t", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"1", "/", "2"}], "*", 
        RowBox[{
         RowBox[{"V", "[", 
          RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}], "*", "d"}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"1", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"2", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"1", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"2", ",", "2"}], "]"}]}], ",", " ", 
       RowBox[{
        RowBox[{"-", " ", 
         RowBox[{
          RowBox[{"V", "[", 
           RowBox[{"3", ",", "2"}], "]"}], "\[Conjugate]"}]}], "*", 
        RowBox[{"V", "[", 
         RowBox[{"3", ",", "2"}], "]"}]}], ",", " ", "1"}], "}"}]}], "\n", 
    "}"}]}]}]], "Code",
 CellChangeTimes->{{3.7050324931644173`*^9, 3.705032553313446*^9}, {
  3.70503261706137*^9, 3.705032874955678*^9}, {3.7050329050774937`*^9, 
  3.7050335136272173`*^9}, {3.705033663359828*^9, 3.705033664917605*^9}, {
  3.705034587731043*^9, 
  3.7050345899807463`*^9}},ExpressionUUID->"dd253dc0-7f2e-4fb9-bd0b-\
829a5faa4c36"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "4"]}], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "4"]}], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "4"]}], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "4"]}], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", "0", ",", "0", ",", "0", ",", 
     RowBox[{
      FractionBox["1", "2"], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      FractionBox["1", "2"], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      FractionBox["1", "2"], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", 
     RowBox[{
      FractionBox["1", "2"], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", 
     FractionBox["1", "2"], ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
     ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
     ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
     ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
    "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0",
      ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
     ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
     ",", "0", ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "4"]}], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "4"]}], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "4"]}], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "4"]}], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", "0", ",", "0", ",", "0", ",", 
     RowBox[{
      FractionBox["1", "2"], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      FractionBox["1", "2"], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      FractionBox["1", "2"], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", 
     RowBox[{
      FractionBox["1", "2"], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", 
     FractionBox["1", "2"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", 
     RowBox[{
      FractionBox["1", "4"], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      FractionBox["1", "4"], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      FractionBox["1", "4"], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", 
     RowBox[{
      FractionBox["1", "4"], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", "0", ",", "0", ",", "0", ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "2"]}], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "2"]}], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "2"]}], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "2"]}], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", 
     FractionBox["1", "2"], ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
     ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
     ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
     ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
    "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0",
      ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
     ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", 
     ",", "0", ",", 
     RowBox[{
      FractionBox["1", "4"], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      FractionBox["1", "4"], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      FractionBox["1", "4"], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", 
     RowBox[{
      FractionBox["1", "4"], " ", "d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", "0", ",", "0", ",", "0", ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "2"]}], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "2"]}], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", "0", ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "2"]}], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}], ",", 
     RowBox[{
      RowBox[{"-", 
       FractionBox["1", "2"]}], " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"3", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"3", ",", "2"}], "]"}]}], ",", 
     FractionBox["1", "2"]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.705033587378666*^9, 3.705033747044917*^9, 
  3.705034014471507*^9, 3.705034592920958*^9, 
  3.705034688256834*^9},ExpressionUUID->"2209fb6c-4e44-44f0-a3ee-\
c784dcb5e48f"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"C", " ", "=", " ", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"C6", "[", 
     RowBox[{"1", ",", "1", ",", "1"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"1", ",", "1", ",", "2"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"1", ",", "2", ",", "1"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"1", ",", "2", ",", "2"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"1", ",", "1", ",", "3"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"1", ",", "2", ",", "3"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"1", ",", "3", ",", "1"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"1", ",", "3", ",", "2"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"1", ",", "3", ",", "3"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"2", ",", "1", ",", "1"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"2", ",", "1", ",", "2"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"2", ",", "2", ",", "1"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"2", ",", "2", ",", "2"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"2", ",", "1", ",", "3"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"2", ",", "2", ",", "3"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"2", ",", "3", ",", "1"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"2", ",", "3", ",", "2"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"2", ",", "3", ",", "3"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"4", ",", "2", ",", "2"}], "]"}], ",", "\[IndentingNewLine]", 
    RowBox[{"C6", "[", 
     RowBox[{"5", ",", "1", ",", "1"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"5", ",", "1", ",", "2"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"5", ",", "2", ",", "2"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"5", ",", "1", ",", "3"}], "]"}], ",", 
    RowBox[{"C6", "[", 
     RowBox[{"5", ",", "2", ",", "3"}], "]"}], ",", " ", 
    RowBox[{"C6", "[", 
     RowBox[{"5", ",", "3", ",", "1"}], "]"}], ",", " ", 
    RowBox[{"C6", "[", 
     RowBox[{"5", ",", "3", ",", "2"}], "]"}], ",", " ", 
    RowBox[{"C6", "[", 
     RowBox[{"5", ",", "3", ",", "3"}], "]"}], ",", " ", 
    RowBox[{"C6", "[", 
     RowBox[{"6", ",", "1", ",", "1"}], "]"}], ",", " ", 
    RowBox[{"C6", "[", 
     RowBox[{"6", ",", "1", ",", "2"}], "]"}], ",", " ", 
    RowBox[{"C6", "[", 
     RowBox[{"6", ",", "2", ",", "1"}], "]"}], ",", " ", 
    RowBox[{"C6", "[", 
     RowBox[{"6", ",", "2", ",", "2"}], "]"}], ",", " ", 
    RowBox[{"C6", "[", 
     RowBox[{"6", ",", "1", ",", "3"}], "]"}], ",", " ", 
    RowBox[{"C6", "[", 
     RowBox[{"6", ",", "2", ",", "3"}], "]"}], ",", " ", 
    RowBox[{"C6", "[", 
     RowBox[{"6", ",", "3", ",", "1"}], "]"}], ",", " ", 
    RowBox[{"C6", "[", 
     RowBox[{"6", ",", "3", ",", "2"}], "]"}], ",", " ", 
    RowBox[{"C6", "[", 
     RowBox[{"6", ",", "3", ",", "3"}], "]"}], ",", " ", 
    RowBox[{"C6", "[", 
     RowBox[{"8", ",", "2", ",", "2"}], "]"}]}], "}"}]}]], "Input",
 CellChangeTimes->{{3.705032609911931*^9, 3.705032790149602*^9}, {
  3.705032885646078*^9, 3.70503315789699*^9}, {3.705033539314911*^9, 
  3.705033543176587*^9}, {3.705035217240357*^9, 3.705035217511178*^9}, {
  3.705035257999202*^9, 
  3.705035270044099*^9}},ExpressionUUID->"88af6a58-8176-4844-8f04-\
e6d9f4682e22"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"S", " ", "=", " ", 
  RowBox[{"LinearSolve", "[", 
   RowBox[{"T", ",", "R"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.705033545675403*^9, 3.705033571777614*^9}, {
  3.7050341551955767`*^9, 
  3.7050341557410393`*^9}},ExpressionUUID->"d7cdf72e-5cae-4813-9d00-\
e3e5af4a89d4"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "0", ",", "0", ",", 
   RowBox[{"-", 
    FractionBox[
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{"R1", "-", "R3"}], ")"}]}], 
     RowBox[{"d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}]]}], ",", "0", ",", "0", ",", "0", ",",
    "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0",
    ",", "0", ",", "0", ",", "0", ",", 
   RowBox[{"R1", "+", "R3"}], ",", "0", ",", "0", ",", "0", ",", "0", ",", 
   RowBox[{"-", 
    FractionBox[
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{"R2", "-", "R4"}], ")"}]}], 
     RowBox[{"d", " ", 
      RowBox[{"Conjugate", "[", 
       RowBox[{"V", "[", 
        RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
      RowBox[{"V", "[", 
       RowBox[{"2", ",", "2"}], "]"}]}]]}], ",", "0", ",", "0", ",", "0", ",",
    "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0",
    ",", "0", ",", "0", ",", "0", ",", 
   RowBox[{"R2", "+", "R4"}]}], "}"}]], "Output",
 CellChangeTimes->{3.7050335995975647`*^9, 3.7050337514433413`*^9, 
  3.7050340184186363`*^9, 3.7050341602372627`*^9, 
  3.705034597251254*^9},ExpressionUUID->"e9dafbe8-16d0-44e4-b011-\
2fd8589eaefa"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"T", ".", "S"}]], "Input",
 CellChangeTimes->{{3.705034150747196*^9, 
  3.705034157496421*^9}},ExpressionUUID->"06dd9213-ebf8-40cf-96b4-\
8da426962c1a"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"R1", "-", "R3"}], "2"], "+", 
    FractionBox[
     RowBox[{"R1", "+", "R3"}], "2"]}], ",", 
   RowBox[{
    FractionBox[
     RowBox[{"R2", "-", "R4"}], "2"], "+", 
    FractionBox[
     RowBox[{"R2", "+", "R4"}], "2"]}], ",", 
   RowBox[{
    RowBox[{
     FractionBox["1", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "R1"}], "+", "R3"}], ")"}]}], "+", 
    FractionBox[
     RowBox[{"R1", "+", "R3"}], "2"]}], ",", 
   RowBox[{
    RowBox[{
     FractionBox["1", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "R2"}], "+", "R4"}], ")"}]}], "+", 
    FractionBox[
     RowBox[{"R2", "+", "R4"}], "2"]}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.705034163729082*^9},ExpressionUUID->"59cce467-a8cf-46e0-883c-\
f199e2203a39"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7050324092159348`*^9, 
  3.7050324092183247`*^9}},ExpressionUUID->"91a0aca9-1a6e-4c01-b7ed-\
1fccc205322a"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7048592511305943`*^9, 
  3.704859253290049*^9}},ExpressionUUID->"10a3c8a9-e8f7-4457-9269-\
151ee726f7c1"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704858010660021*^9, 3.704858182528016*^9}, {
   3.7048583316486473`*^9, 3.70485855986796*^9}, {3.70485859555054*^9, 
   3.704858599513137*^9}, {3.70485863579018*^9, 3.704858724713429*^9}, {
   3.704858761257069*^9, 3.704858856469599*^9}, {3.704859392802065*^9, 
   3.704859393377125*^9}, {3.704860004415761*^9, 3.704860008791586*^9}, 
   3.704862355048996*^9, {3.704986034504863*^9, 3.7049860715434523`*^9}, {
   3.7049861295462427`*^9, 3.7049861709685907`*^9}, 3.704986276076511*^9, 
   3.705032444191751*^9},ExpressionUUID->"49b0f6b0-edb0-4e2d-ba14-\
1db1e95d529e"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{3.7050324380499163`*^9},
 NumberMarks->False,ExpressionUUID->"ea8b9ce8-48df-4424-af4b-2c35bd9b4373"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.705032440758444*^9, 
  3.705032440759754*^9}},ExpressionUUID->"4ffae57a-fe82-4a70-bf1e-\
9116e83c9632"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704862421663164*^9, 3.704862421701304*^9}, 
   3.704986167137442*^9, {3.7049862262324*^9, 3.70498627389034*^9}, {
   3.705032422477079*^9, 
   3.705032447163128*^9}},ExpressionUUID->"dcd048c1-f61a-4899-aee1-\
dd4e6cc8d18a"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{3.705032328112423*^9},
 NumberMarks->False,ExpressionUUID->"3477e779-c2f0-400e-b19d-5dd7efc89446"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7050323249772787`*^9, 
  3.705032324979698*^9}},ExpressionUUID->"0be0abe0-d542-448f-a6d7-\
34aa49452158"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7048588673946247`*^9, 3.704858880024926*^9}, {
   3.704858962269659*^9, 3.70485898886097*^9}, {3.704859314058036*^9, 
   3.704859343956111*^9}, {3.704859406040081*^9, 3.70485940682565*^9}, {
   3.704859855592002*^9, 3.7048599168954077`*^9}, 3.704859951169271*^9, {
   3.7048600204723*^9, 3.704860022304937*^9}, {3.704860113101557*^9, 
   3.7048601195850277`*^9}, {3.704860243744708*^9, 3.704860253130611*^9}, {
   3.704860810446699*^9, 3.7048608141990223`*^9}, {3.704861554345026*^9, 
   3.704861556972793*^9}, {3.704861939192039*^9, 3.704861941429077*^9}, {
   3.704866001297702*^9, 3.70486600331448*^9}, 3.704986174898191*^9, 
   3.70498623447939*^9, {3.7049862824284067`*^9, 3.704986327468543*^9}, {
   3.7049863762255783`*^9, 3.704986510507403*^9}, {3.704986812589457*^9, 
   3.704986847131316*^9}, 3.7049875624660473`*^9, {3.704987637423951*^9, 
   3.704987666099222*^9}, 
   3.7050323202112226`*^9},ExpressionUUID->"3f439e2c-eea9-438a-8183-\
4cee34a5735d"],

Cell[BoxData[""], "Input",ExpressionUUID->"d19e8e16-761c-4656-8927-2af16f04a4c5"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704986177531993*^9, 3.704986177533884*^9}, {
   3.704986520194604*^9, 3.704986554831211*^9}, {3.704986812609321*^9, 
   3.704986847145794*^9}, {3.704987667997179*^9, 3.704987669461372*^9}, 
   3.705032313761325*^9},ExpressionUUID->"24f8fddf-9ca0-4758-b9f5-\
07e4b28aad27"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704986176408884*^9, 
  3.7049861764117517`*^9}},ExpressionUUID->"25dc5f97-4a2e-4d7b-a2dd-\
d71b3e5183ed"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704986588873023*^9, 3.704986733807683*^9}, {
   3.704986812559248*^9, 3.704986847163335*^9}, {3.704986882735695*^9, 
   3.7049869762915783`*^9}, {3.7049870066188593`*^9, 
   3.7049871694414454`*^9}, {3.704987226573785*^9, 3.704987252725236*^9}, {
   3.704987672491804*^9, 3.704987676797377*^9}, 
   3.705032309970524*^9},ExpressionUUID->"bb28dbbb-f718-4a8d-9a35-\
6bbed77fa6df"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704987259465783*^9, 3.7049872739377193`*^9}, {
   3.7049873077674427`*^9, 3.704987365490505*^9}, {3.704987680350716*^9, 
   3.704987685528185*^9}, 
   3.705032305928378*^9},ExpressionUUID->"fa92e6f9-2d38-45ad-bd67-\
6cd12cd41a6d"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7049874115902042`*^9, 3.7049874445235777`*^9}, {
   3.704987534039529*^9, 3.704987542325268*^9}, 
   3.705032302118094*^9},ExpressionUUID->"a22e7a49-260f-42eb-82a4-\
b7599b784f03"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7049875513931713`*^9, 
  3.7049875531229353`*^9}},ExpressionUUID->"68eee3aa-62be-4313-aba3-\
0f7476df8018"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704861562276376*^9, 3.704861574278611*^9}, {
   3.704861973647691*^9, 3.704861999118022*^9}, {3.704862119101037*^9, 
   3.704862123077425*^9}, {3.70486596528834*^9, 3.7048660070656347`*^9}, {
   3.704866050680275*^9, 3.704866053224853*^9}, {3.704866628270463*^9, 
   3.7048666509870243`*^9}, 
   3.704986198124218*^9},ExpressionUUID->"32c9ee88-e98c-4fdc-a3de-\
f1bdc92717f0"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704862001037043*^9, 3.7048620089773083`*^9}, 
   3.704862238630301*^9},
 NumberMarks->False,ExpressionUUID->"2346a44b-c62a-433a-aaee-8d76f9a6a0c8"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704866657859357*^9, 3.704866816184127*^9}, {
   3.704879225944858*^9, 3.704879241692074*^9}, {3.70487935739675*^9, 
   3.704879382847419*^9}, 
   3.7049862007301826`*^9},ExpressionUUID->"1121f05d-cfe3-43d5-8782-\
f058843e9cb6"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704986206075952*^9, 
  3.70498620607837*^9}},ExpressionUUID->"66ecc7b2-0aa3-4c5d-84a7-\
cbfaf6bb6d18"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704986203970251*^9, 
  3.704986203970929*^9}},ExpressionUUID->"eb67d592-f34f-4d56-9cda-\
e8df70e12966"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704986202574051*^9, 
  3.704986202576358*^9}},ExpressionUUID->"79380e5b-b700-4e0e-be4c-\
8ebf35becd9b"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704879394481138*^9, 
  3.704879395655725*^9}},ExpressionUUID->"1fa56597-1670-4747-afe7-\
984ee9b0f74c"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704861577177651*^9, 3.704861588349675*^9}, 
   3.7048659820630283`*^9},ExpressionUUID->"4027343e-1c19-476b-a1d7-\
415e10ac4021"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.704986208090826*^9, 
  3.704986208093143*^9}},ExpressionUUID->"3e876ecb-791d-43eb-8a7e-\
0c056e93c502"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{
  3.7048659736594553`*^9},ExpressionUUID->"37ea266b-5adb-4186-adde-\
9e347d3cbe3b"]
},
WindowSize->{808, 621},
WindowMargins->{{-406, Automatic}, {Automatic, -118}},
FrontEndVersion->"11.1 for Linux x86 (64-bit) (April 18, 2017)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[400, 13, 1283, 30, 149, "Input", "ExpressionUUID" -> \
"13ac25e1-3a5d-4db1-bbfc-d0dcae799239"],
Cell[CellGroupData[{
Cell[1708, 47, 258, 6, 34, "Input", "ExpressionUUID" -> \
"ccc80556-a2a2-489f-acb3-77b971750c81"],
Cell[1969, 55, 201, 5, 34, "Output", "ExpressionUUID" -> \
"ae3da4c4-7309-4784-aa31-e0a075bf9c52"]
}, Open  ]],
Cell[2185, 63, 170, 2, 32, "Input", "ExpressionUUID" -> \
"03627d2c-0043-4722-827f-f82aa1c89d0b"],
Cell[CellGroupData[{
Cell[2380, 69, 663, 17, 80, "Input", "ExpressionUUID" -> \
"653d080f-0cc1-4cc8-8a24-fa05dfffd758"],
Cell[3046, 88, 182, 4, 32, "Output", "ExpressionUUID" -> \
"73a8587f-6fbf-474d-b58c-b3b3abf97903"],
Cell[3231, 94, 371, 9, 23, "Message", "ExpressionUUID" -> \
"cfd08200-6aaf-4530-85d4-bfc1ae8a9b52"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3639, 108, 19487, 537, 153, "Code", "ExpressionUUID" -> \
"dd253dc0-7f2e-4fb9-bd0b-829a5faa4c36"],
Cell[23129, 647, 9804, 272, 650, "Output", "ExpressionUUID" -> \
"2209fb6c-4e44-44f0-a3ee-c784dcb5e48f"]
}, Open  ]],
Cell[32948, 922, 3341, 83, 149, "Input", "ExpressionUUID" -> \
"88af6a58-8176-4844-8f04-e6d9f4682e22"],
Cell[CellGroupData[{
Cell[36314, 1009, 300, 7, 34, "Input", "ExpressionUUID" -> \
"d7cdf72e-5cae-4813-9d00-e3e5af4a89d4"],
Cell[36617, 1018, 1358, 34, 101, "Output", "ExpressionUUID" -> \
"e9dafbe8-16d0-44e4-b011-2fd8589eaefa"]
}, Open  ]],
Cell[CellGroupData[{
Cell[38012, 1057, 175, 4, 32, "Input", "ExpressionUUID" -> \
"06dd9213-ebf8-40cf-96b4-8da426962c1a"],
Cell[38190, 1063, 851, 31, 50, "Output", "ExpressionUUID" -> \
"59cce467-a8cf-46e0-883c-f199e2203a39"]
}, Open  ]],
Cell[39056, 1097, 156, 3, 32, InheritFromParent, "ExpressionUUID" -> \
"91a0aca9-1a6e-4c01-b7ed-1fccc205322a"],
Cell[39215, 1102, 154, 3, 32, "Input", "ExpressionUUID" -> \
"10a3c8a9-e8f7-4457-9269-151ee726f7c1"],
Cell[39372, 1107, 616, 9, 32, "Input", "ExpressionUUID" -> \
"49b0f6b0-edb0-4e2d-ba14-1db1e95d529e"],
Cell[39991, 1118, 146, 2, 32, "Input", "ExpressionUUID" -> \
"ea8b9ce8-48df-4424-af4b-2c35bd9b4373"],
Cell[40140, 1122, 152, 3, 32, InheritFromParent, "ExpressionUUID" -> \
"4ffae57a-fe82-4a70-bf1e-9116e83c9632"],
Cell[40295, 1127, 272, 5, 32, "Input", "ExpressionUUID" -> \
"dcd048c1-f61a-4899-aee1-dd4e6cc8d18a"],
Cell[40570, 1134, 144, 2, 32, "Input", "ExpressionUUID" -> \
"3477e779-c2f0-400e-b19d-5dd7efc89446"],
Cell[40717, 1138, 154, 3, 32, InheritFromParent, "ExpressionUUID" -> \
"0be0abe0-d542-448f-a6d7-34aa49452158"],
Cell[40874, 1143, 1011, 15, 32, "Input", "ExpressionUUID" -> \
"3f439e2c-eea9-438a-8183-4cee34a5735d"],
Cell[41888, 1160, 81, 0, 32, "Input", "ExpressionUUID" -> \
"d19e8e16-761c-4656-8927-2af16f04a4c5"],
Cell[41972, 1162, 321, 5, 32, "Input", "ExpressionUUID" -> \
"24f8fddf-9ca0-4758-b9f5-07e4b28aad27"],
Cell[42296, 1169, 154, 3, 32, "Input", "ExpressionUUID" -> \
"25dc5f97-4a2e-4d7b-a2dd-d71b3e5183ed"],
Cell[42453, 1174, 427, 7, 32, "Input", "ExpressionUUID" -> \
"bb28dbbb-f718-4a8d-9a35-6bbed77fa6df"],
Cell[42883, 1183, 279, 5, 32, "Input", "ExpressionUUID" -> \
"fa92e6f9-2d38-45ad-bd67-6cd12cd41a6d"],
Cell[43165, 1190, 229, 4, 32, "Input", "ExpressionUUID" -> \
"a22e7a49-260f-42eb-82a4-b7599b784f03"],
Cell[43397, 1196, 156, 3, 32, "Input", "ExpressionUUID" -> \
"68eee3aa-62be-4313-aba3-0f7476df8018"],
Cell[43556, 1201, 424, 7, 32, "Input", "ExpressionUUID" -> \
"32c9ee88-e98c-4fdc-a3de-f1bdc92717f0"],
Cell[43983, 1210, 196, 3, 32, "Input", "ExpressionUUID" -> \
"2346a44b-c62a-433a-aaee-8d76f9a6a0c8"],
Cell[44182, 1215, 276, 5, 32, "Input", "ExpressionUUID" -> \
"1121f05d-cfe3-43d5-8782-f058843e9cb6"],
Cell[44461, 1222, 151, 3, 32, "Input", "ExpressionUUID" -> \
"66ecc7b2-0aa3-4c5d-84a7-cbfaf6bb6d18"],
Cell[44615, 1227, 152, 3, 32, "Input", "ExpressionUUID" -> \
"eb67d592-f34f-4d56-9cda-e8df70e12966"],
Cell[44770, 1232, 152, 3, 32, "Input", "ExpressionUUID" -> \
"79380e5b-b700-4e0e-be4c-8ebf35becd9b"],
Cell[44925, 1237, 152, 3, 32, "Input", "ExpressionUUID" -> \
"1fa56597-1670-4747-afe7-984ee9b0f74c"],
Cell[45080, 1242, 177, 3, 32, "Input", "ExpressionUUID" -> \
"4027343e-1c19-476b-a1d7-415e10ac4021"],
Cell[45260, 1247, 152, 3, 32, "Input", "ExpressionUUID" -> \
"3e876ecb-791d-43eb-8a7e-0c056e93c502"],
Cell[45415, 1252, 130, 3, 32, "Input", "ExpressionUUID" -> \
"37ea266b-5adb-4186-adde-9e347d3cbe3b"]
}
]
*)

