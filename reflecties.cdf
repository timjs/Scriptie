(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[     17959,        552]
NotebookOptionsPosition[     17341,        513]
NotebookOutlinePosition[     17717,        530]
CellTagsIndexPosition[     17674,        527]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{
  RowBox[{"$Assumptions", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"n", "\[Element]", "Integers"}], ",", 
     RowBox[{"r", "\[Element]", "Reals"}], ",", 
     RowBox[{"\[CapitalDelta]r", ">", "0"}], ",", 
     RowBox[{"d", ">", "0"}], ",", 
     RowBox[{"s", ">", "0"}], ",", 
     RowBox[{"t", ">", "0"}]}], "}"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.5510775425480137`*^9, 3.551077563712881*^9}, 
   3.5510776024904137`*^9, {3.5511834797319603`*^9, 3.551183484026222*^9}, {
   3.551187940048133*^9, 3.551187946215797*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"\[CapitalDelta]x1", "=", 
   SqrtBox[
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"d", "+", 
        RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"], "+", 
     SuperscriptBox["s", "2"]}]]}], ";"}]], "Input",
 CellChangeTimes->{{3.551075665751157*^9, 3.551075734857787*^9}, 
   3.551076897527008*^9, 3.551077464373508*^9, 3.551077604513599*^9, {
   3.5511832476406593`*^9, 3.551183248504424*^9}, {3.551183366509122*^9, 
   3.551183369421276*^9}}],

Cell[BoxData[
 RowBox[{" ", 
  RowBox[{
   RowBox[{"\[CapitalDelta]x2", "=", 
    SqrtBox[
     RowBox[{
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"d", "-", 
         RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"], "+", 
      SuperscriptBox["s", "2"]}]]}], ";"}]}]], "Input",
 CellChangeTimes->{{3.5510757415250063`*^9, 3.551075759441263*^9}, 
   3.551076900230318*^9, 3.551077466385137*^9, {3.551077605985506*^9, 
   3.5510776277483177`*^9}, {3.551183254489072*^9, 3.5511832550806828`*^9}, {
   3.551183374509471*^9, 3.5511833768615093`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"v", "=", 
   FractionBox[
    RowBox[{"\[CapitalDelta]x1", "+", "\[CapitalDelta]x2"}], "t"]}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.551075769395814*^9, 3.55107580068187*^9}, 
   3.551076902357929*^9, 3.551077468112509*^9, 3.551077615576807*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"\[CapitalDelta]t1", "=", 
   FractionBox["\[CapitalDelta]x1", "v"]}], ";"}]], "Input",
 CellChangeTimes->{{3.551075810631466*^9, 3.551075835553138*^9}, {
   3.551075870954132*^9, 3.551075876145719*^9}, {3.5510759488629217`*^9, 
   3.5510759523786583`*^9}, 3.5510769048136263`*^9, {3.551077470920434*^9, 
   3.5510774968176603`*^9}, {3.55107754993676*^9, 3.551077571056786*^9}, 
   3.551077617512641*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"\[CapitalDelta]t2", "=", 
   FractionBox["\[CapitalDelta]x2", "v"]}], ";"}]], "Input",
 CellChangeTimes->{{3.551075839958846*^9, 3.551075868601898*^9}, {
   3.5510759547980547`*^9, 3.551075955378613*^9}, 3.551076907949839*^9, 
   3.551077473616342*^9, 3.5510776204167147`*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{"\[CapitalDelta]t1", ",", "\[CapitalDelta]t2"}], "}"}], "//", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.551075957289316*^9, 3.551075966738027*^9}, {
  3.55107606966376*^9, 3.5510761455027323`*^9}, {3.551076265866315*^9, 
  3.5510763454596987`*^9}, {3.551076426117653*^9, 3.551076428053385*^9}, {
  3.551076940499626*^9, 3.551076941065639*^9}, {3.551076999858534*^9, 
  3.551077000670661*^9}, {3.551077583562088*^9, 3.5510775896887093`*^9}, {
  3.551183260832762*^9, 3.55118326897644*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   FractionBox[
    RowBox[{"t", " ", 
     SqrtBox[
      RowBox[{
       SuperscriptBox["s", "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"d", "+", 
          RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"]}]]}], 
    RowBox[{
     SqrtBox[
      RowBox[{
       SuperscriptBox["s", "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"d", "-", 
          RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"]}]], "+", 
     SqrtBox[
      RowBox[{
       SuperscriptBox["s", "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"d", "+", 
          RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"]}]]}]], ",", 
   FractionBox[
    RowBox[{"t", " ", 
     SqrtBox[
      RowBox[{
       SuperscriptBox["s", "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"d", "-", 
          RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"]}]]}], 
    RowBox[{
     SqrtBox[
      RowBox[{
       SuperscriptBox["s", "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"d", "-", 
          RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"]}]], "+", 
     SqrtBox[
      RowBox[{
       SuperscriptBox["s", "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"d", "+", 
          RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"]}]]}]]}], 
  "}"}]], "Output",
 CellChangeTimes->{{3.551076136644397*^9, 3.551076146695449*^9}, {
   3.551076281757792*^9, 3.5510763303366203`*^9}, 3.5510764287120237`*^9, 
   3.551076870151964*^9, {3.551076913736466*^9, 3.551076942051313*^9}, 
   3.551077004782065*^9, {3.551077576704061*^9, 3.55107759435632*^9}, {
   3.551077624701199*^9, 3.551077631741714*^9}, 3.551078304119067*^9, 
   3.551087068316492*^9, 3.5511831500759897`*^9, 3.5511832718599577`*^9, 
   3.551183959780542*^9, 3.5511875903058968`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[CapitalDelta]t", "=", 
  RowBox[{"Series", "[", 
   RowBox[{"\[CapitalDelta]t1", ",", 
    RowBox[{"{", 
     RowBox[{"\[CapitalDelta]r", ",", "0", ",", "1"}], "}"}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.551077081224828*^9, 3.5510770953549*^9}, {
  3.551077144271661*^9, 3.551077171197152*^9}, {3.551077267576989*^9, 
  3.5510772905885887`*^9}, {3.551077729920035*^9, 3.55107773150347*^9}}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   FractionBox["t", "2"], "+", 
   FractionBox[
    RowBox[{"d", " ", "n", " ", "t", " ", "\[CapitalDelta]r"}], 
    RowBox[{"2", " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["d", "2"], "+", 
       SuperscriptBox["s", "2"]}], ")"}]}]], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", "\[CapitalDelta]r", "]"}], "2"],
    SeriesData[$CellContext`\[CapitalDelta]r, 0, {}, 0, 2, 1],
    Editable->False]}],
  SeriesData[$CellContext`\[CapitalDelta]r, 0, {
   Rational[1, 2] $CellContext`t, 
    Rational[1, 
      2] $CellContext`d $CellContext`n ($CellContext`d^2 + \
$CellContext`s^2)^(-1) $CellContext`t}, 0, 2, 1],
  Editable->False]], "Output",
 CellChangeTimes->{{3.551077153017095*^9, 3.551077171639085*^9}, {
   3.551077275688548*^9, 3.55107729133538*^9}, {3.551077576750646*^9, 
   3.5510775943995028`*^9}, {3.55107762474781*^9, 3.5510776317774363`*^9}, 
   3.551077732741191*^9, 3.551078304155407*^9, 3.551087068461228*^9, 
   3.5511831502516117`*^9, 3.551183271896913*^9, 3.551183959820979*^9, 
   3.5511875904001617`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]", "=", 
  RowBox[{
   FractionBox["m", 
    RowBox[{"2", "\[Pi]", " ", "\[ImaginaryI]", " ", "\[HBar]"}]], 
   FractionBox["1", 
    SqrtBox[
     RowBox[{"\[CapitalDelta]t1", 
      RowBox[{"(", 
       RowBox[{"t", "-", "\[CapitalDelta]t1"}], ")"}]}]]], 
   RowBox[{"Exp", "[", 
    RowBox[{
     FractionBox["\[ImaginaryI]", "\[HBar]"], 
     FractionBox[
      RowBox[{"m", " ", 
       SuperscriptBox["vv", "2"]}], "2"], "t"}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.551077327882515*^9, 3.551077423900805*^9}, {
   3.55107766235225*^9, 3.551077682680058*^9}, 3.551183165169094*^9, 
   3.5511869334752407`*^9}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", "t", " ", 
       SuperscriptBox["vv", "2"]}], 
      RowBox[{"2", " ", "\[HBar]"}]]], " ", "m"}], 
   RowBox[{"2", " ", "\[Pi]", " ", 
    SqrtBox[
     FractionBox[
      RowBox[{"t", " ", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["s", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"d", "+", 
            RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"]}]], " ", 
       RowBox[{"(", 
        RowBox[{"t", "-", 
         FractionBox[
          RowBox[{"t", " ", 
           SqrtBox[
            RowBox[{
             SuperscriptBox["s", "2"], "+", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"d", "+", 
                RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"]}]]}], 
          RowBox[{
           SqrtBox[
            RowBox[{
             SuperscriptBox["s", "2"], "+", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"d", "-", 
                RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"]}]], "+", 
           SqrtBox[
            RowBox[{
             SuperscriptBox["s", "2"], "+", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"d", "+", 
                RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"]}]]}]]}],
         ")"}]}], 
      RowBox[{
       SqrtBox[
        RowBox[{
         SuperscriptBox["s", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"d", "-", 
            RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"]}]], "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["s", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"d", "+", 
            RowBox[{"n", " ", "\[CapitalDelta]r"}]}], ")"}], "2"]}]]}]]], " ",
     "\[HBar]"}]]}]], "Output",
 CellChangeTimes->{3.551183166540984*^9, 3.55118327192603*^9, 
  3.551183959874456*^9, 3.5511869349720097`*^9, 3.5511875904449778`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  UnderoverscriptBox["\[Sum]", 
   RowBox[{"n", "=", 
    RowBox[{"-", "\[Infinity]"}]}], 
   RowBox[{"+", "\[Infinity]"}]], "\[Psi]"}]], "Input",
 CellChangeTimes->{{3.551183992447381*^9, 3.5511840274873343`*^9}}],

Cell[BoxData["$Aborted"], "Output",
 CellChangeTimes->{3.551184283370421*^9, 3.5511876024417057`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]", "=", 
  RowBox[{"\[Psi]", "/.", 
   RowBox[{
    RowBox[{"n", " ", "\[CapitalDelta]r"}], "\[Rule]", "r"}]}]}]], "Input",
 CellChangeTimes->{{3.551186990530797*^9, 3.5511870046349697`*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", "t", " ", 
       SuperscriptBox["vv", "2"]}], 
      RowBox[{"2", " ", "\[HBar]"}]]], " ", "m"}], 
   RowBox[{"2", " ", "\[Pi]", " ", 
    SqrtBox[
     FractionBox[
      RowBox[{
       SqrtBox[
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"d", "+", "r"}], ")"}], "2"], "+", 
         SuperscriptBox["s", "2"]}]], " ", "t", " ", 
       RowBox[{"(", 
        RowBox[{"t", "-", 
         FractionBox[
          RowBox[{
           SqrtBox[
            RowBox[{
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"d", "+", "r"}], ")"}], "2"], "+", 
             SuperscriptBox["s", "2"]}]], " ", "t"}], 
          RowBox[{
           SqrtBox[
            RowBox[{
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"d", "-", "r"}], ")"}], "2"], "+", 
             SuperscriptBox["s", "2"]}]], "+", 
           SqrtBox[
            RowBox[{
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"d", "+", "r"}], ")"}], "2"], "+", 
             SuperscriptBox["s", "2"]}]]}]]}], ")"}]}], 
      RowBox[{
       SqrtBox[
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"d", "-", "r"}], ")"}], "2"], "+", 
         SuperscriptBox["s", "2"]}]], "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"d", "+", "r"}], ")"}], "2"], "+", 
         SuperscriptBox["s", "2"]}]]}]]], " ", "\[HBar]"}]]}]], "Output",
 CellChangeTimes->{3.5511870053649693`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"-", "\[Infinity]"}], 
   RowBox[{"+", "\[Infinity]"}]], 
  RowBox[{
   RowBox[{"C", " ", 
    SuperscriptBox[
     RowBox[{"Abs", "[", 
      RowBox[{
       SubsuperscriptBox["\[Integral]", 
        RowBox[{"-", "\[Infinity]"}], 
        RowBox[{"+", "\[Infinity]"}]], 
       RowBox[{"\[Psi]", 
        RowBox[{"\[DifferentialD]", "r"}]}]}], "]"}], "2"]}], 
   RowBox[{"\[DifferentialD]", "d"}]}]}]], "Input",
 CellChangeTimes->{{3.551183968181469*^9, 3.551183986973997*^9}, {
  3.551187106277439*^9, 3.551187133551347*^9}, {3.551187307668376*^9, 
  3.5511873724139013`*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Integrate", "::", "idiv"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Integral of \[NoBreak]\\!\\(\\(\\@\\(d\\^2 - \\(\\(2\\\\ d\
\\\\ r\\)\\) + r\\^2 + s\\^2\\) + \\@\\(\\((d + r)\\)\\^2 + \
s\\^2\\)\\)\\/\\((\\(\\((d\\^2 - \\(\\(2\\\\ d\\\\ r\\)\\) + r\\^2 + \
s\\^2)\\)\\)\\\\ \\(\\((\\((d + r)\\)\\^2 + s\\^2)\\)\\))\\)\\^\\(1/4\\)\\)\
\[NoBreak] does not converge on \[NoBreak]\\!\\({\\(\\(-\[Infinity]\\)\\), \
\[Infinity]}\\)\[NoBreak]. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Integrate/idiv\\\", ButtonNote -> \
\\\"Integrate::idiv\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.551187013445196*^9, 3.551187133964404*^9, 
  3.551187373969267*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"-", "\[Infinity]"}], 
   RowBox[{"+", "\[Infinity]"}]], 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"Exp", "[", 
      RowBox[{
       FractionBox["\[ImaginaryI]", "\[HBar]"], 
       FractionBox[
        RowBox[{"m", " ", 
         SuperscriptBox["v", "2"]}], "2"], "t"}], "]"}], "/.", 
     RowBox[{
      RowBox[{"n", " ", "\[CapitalDelta]r"}], "\[Rule]", "r"}]}], ")"}], 
   RowBox[{"\[DifferentialD]", "r"}]}]}]], "Input",
 CellChangeTimes->{{3.551187441442775*^9, 3.551187519306067*^9}, {
   3.551187559660705*^9, 3.551187573140003*^9}, 3.551187609174615*^9, {
   3.551187642166638*^9, 3.551187678008144*^9}, {3.5511878433442993`*^9, 
   3.5511878443095303`*^9}}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
  RowBox[{
   SuperscriptBox["\[ExponentialE]", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         SqrtBox[
          RowBox[{
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"d", "-", "r"}], ")"}], "2"], "+", 
           SuperscriptBox["s", "2"]}]], "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"d", "+", "r"}], ")"}], "2"], "+", 
           SuperscriptBox["s", "2"]}]]}], ")"}], "2"]}], 
     RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], 
   RowBox[{"\[DifferentialD]", "r"}]}]}]], "Output",
 CellChangeTimes->{
  3.5511874689590883`*^9, {3.551187622767202*^9, 3.5511876265887613`*^9}, 
   3.5511876633842697`*^9, 3.551187783891172*^9, 3.551188040113184*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{
   SuperscriptBox["\[ExponentialE]", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         SqrtBox[
          RowBox[{
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"d", "-", "r"}], ")"}], "2"], "+", 
           SuperscriptBox["s", "2"]}]], "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"d", "+", "r"}], ")"}], "2"], "+", 
           SuperscriptBox["s", "2"]}]]}], ")"}], "2"]}], 
     RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], ",", 
   RowBox[{"{", 
    RowBox[{"r", ",", 
     RowBox[{"-", "\[Infinity]"}], ",", "\[Infinity]"}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.5511877091767*^9, 3.551187735850103*^9}}]
},
WindowToolbars->{},
WindowSize->{770, 832},
WindowMargins->{{260, Automatic}, {Automatic, 40}},
FrontEndVersion->"8.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (October 5, \
2011)",
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
Cell[1235, 30, 561, 13, 27, "Input"],
Cell[1799, 45, 512, 13, 39, "Input"],
Cell[2314, 60, 568, 14, 39, "Input"],
Cell[2885, 76, 284, 7, 46, "Input"],
Cell[3172, 85, 438, 8, 46, "Input"],
Cell[3613, 95, 311, 6, 46, "Input"],
Cell[CellGroupData[{
Cell[3949, 105, 546, 10, 27, "Input"],
Cell[4498, 117, 1931, 58, 65, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[6466, 180, 426, 9, 27, "Input"],
Cell[6895, 191, 1116, 27, 52, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[8048, 223, 649, 18, 54, "Input"],
Cell[8700, 243, 2149, 64, 112, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[10886, 312, 238, 6, 53, "Input"],
Cell[11127, 320, 101, 1, 27, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[11265, 326, 221, 5, 27, "Input"],
Cell[11489, 333, 1743, 55, 112, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13269, 393, 649, 18, 45, "Input"],
Cell[13921, 413, 806, 15, 59, "Message"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14764, 433, 752, 20, 52, "Input"],
Cell[15519, 455, 948, 27, 62, "Output"]
}, Open  ]],
Cell[16482, 485, 855, 26, 62, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature #wT1Cj57ICwTbDwLZ8byRP3N *)
