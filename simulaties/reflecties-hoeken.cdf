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
NotebookDataLength[    161378,       3150]
NotebookOptionsPosition[    158987,       3049]
NotebookOutlinePosition[    159364,       3066]
CellTagsIndexPosition[    159321,       3063]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Init", "Subsection",
 CellChangeTimes->{{3.551336242415331*^9, 3.551336242742854*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"$Assumptions", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"\[Beta]", "\[Element]", 
      RowBox[{"Interval", "[", 
       RowBox[{
        RowBox[{"-", 
         FractionBox["\[Pi]", "2"]}], ",", 
        FractionBox["\[Pi]", "2"]}], "]"}]}], ",", 
     RowBox[{"\[Delta]", "\[Element]", 
      RowBox[{"Interval", "[", 
       RowBox[{
        RowBox[{"-", 
         FractionBox["\[Pi]", "2"]}], ",", 
        FractionBox["\[Pi]", "2"]}], "]"}]}], ",", 
     RowBox[{"d", "\[Element]", "Reals"}], ",", 
     RowBox[{"r", ">", "0"}], ",", 
     RowBox[{"m", ">", "0"}], ",", 
     RowBox[{"\[HBar]", ">", "0"}], ",", 
     RowBox[{"t", ">", "0"}]}], "}"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.55125753900137*^9, 3.5512576005210667`*^9}, {
   3.55125770706875*^9, 3.551257714309513*^9}, {3.551262844618373*^9, 
   3.551262848720676*^9}, 3.551263032182826*^9, {3.55133627890742*^9, 
   3.551336282491848*^9}, {3.551533238809849*^9, 3.551533261801365*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"l1", "=", 
   FractionBox["r", 
    RowBox[{"Cos", "[", "\[Beta]", "]"}]]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5512563430197163`*^9, 3.551256380499312*^9}, 
   3.551256598568816*^9, 3.5512630330043383`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"l2", "=", 
   FractionBox["r", 
    RowBox[{"Cos", "[", "\[Delta]", "]"}]]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5512563759455976`*^9, 3.5512563904352207`*^9}, 
   3.551256602410618*^9, 3.551263033756361*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"l", "=", 
   RowBox[{"l1", "+", "l2"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551256423923361*^9, 3.551256427763699*^9}, {
   3.5512565985923977`*^9, 3.551256602441256*^9}, 3.551263034484002*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"v", "=", 
   FractionBox["l", "t"]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.55125640882526*^9, 3.551256421180306*^9}, 
   3.551263035076211*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"t1", "=", 
   FractionBox["l1", "v"]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551256438771656*^9, 3.551256459709614*^9}, {
   3.551256598627195*^9, 3.551256618607778*^9}, 3.551263035836224*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"t2", "=", 
   FractionBox["l2", "v"]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5512564606858377`*^9, 3.551256464901925*^9}, {
   3.551256602388481*^9, 3.5512566144968977`*^9}, 3.551263036988298*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"c", "=", 
  RowBox[{
   RowBox[{
    FractionBox["m", 
     RowBox[{"2", "\[Pi]", " ", "\[ImaginaryI]", " ", "\[HBar]"}]], 
    FractionBox["1", 
     SqrtBox[
      RowBox[{"t1", " ", "t2"}]]]}], "//", "FullSimplify"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{
  3.5513417884727707`*^9, {3.551341866635754*^9, 3.551341874746003*^9}, {
   3.551341921260077*^9, 3.5513419237233543`*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", "m"}], 
   RowBox[{"2", " ", "\[Pi]", " ", "\[HBar]", " ", 
    SqrtBox[
     FractionBox[
      RowBox[{
       SuperscriptBox["t", "2"], " ", 
       RowBox[{"Cos", "[", "\[Beta]", "]"}], " ", 
       RowBox[{"Cos", "[", "\[Delta]", "]"}]}], 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"Cos", "[", "\[Beta]", "]"}], "+", 
         RowBox[{"Cos", "[", "\[Delta]", "]"}]}], ")"}], 
       "2"]]]}]]}]], "Output",
 CellChangeTimes->{3.551341885188737*^9, 3.551341956360317*^9, 
  3.55134254372287*^9, 3.551423380421617*^9, 3.551533109061845*^9, 
  3.5515332849394693`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"e", "=", 
  RowBox[{
   RowBox[{"Exp", "[", 
    RowBox[{
     FractionBox["\[ImaginaryI]", "\[HBar]"], 
     FractionBox[
      RowBox[{"m", " ", 
       SuperscriptBox["v", "2"]}], "2"], "t"}], "]"}], "//", 
   "FullSimplify"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5513417780637302`*^9, 3.551341783494072*^9}, {
  3.551341871970024*^9, 3.5513418724975843`*^9}}],

Cell[BoxData[
 SuperscriptBox["\[ExponentialE]", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", "m", " ", 
    SuperscriptBox["r", "2"], " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{"Sec", "[", "\[Beta]", "]"}], "+", 
       RowBox[{"Sec", "[", "\[Delta]", "]"}]}], ")"}], "2"]}], 
   RowBox[{"2", " ", "t", " ", "\[HBar]"}]]]], "Output",
 CellChangeTimes->{3.5513418866439323`*^9, 3.551341956398726*^9, 
  3.5513425453444853`*^9, 3.551423382219062*^9, 3.551533110938336*^9, 
  3.551533286519208*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]", "=", 
  RowBox[{"c", " ", "e"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551256538959104*^9, 3.551256656150732*^9}, 
   3.551256694985333*^9, {3.5512624578837557`*^9, 3.551262458632937*^9}, {
   3.551341776915571*^9, 3.551341791150318*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", 
       SuperscriptBox["r", "2"], " ", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"Sec", "[", "\[Beta]", "]"}], "+", 
          RowBox[{"Sec", "[", "\[Delta]", "]"}]}], ")"}], "2"]}], 
      RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m"}], 
   RowBox[{"2", " ", "\[Pi]", " ", "\[HBar]", " ", 
    SqrtBox[
     FractionBox[
      RowBox[{
       SuperscriptBox["t", "2"], " ", 
       RowBox[{"Cos", "[", "\[Beta]", "]"}], " ", 
       RowBox[{"Cos", "[", "\[Delta]", "]"}]}], 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"Cos", "[", "\[Beta]", "]"}], "+", 
         RowBox[{"Cos", "[", "\[Delta]", "]"}]}], ")"}], 
       "2"]]]}]]}]], "Output",
 CellChangeTimes->{3.5513362464080343`*^9, 3.551336291099869*^9, 
  3.551341855273876*^9, 3.551341886717803*^9, 3.551341956430434*^9, 
  3.5513425454183693`*^9, 3.551423382347867*^9, 3.551533111143263*^9, 
  3.55153328665396*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"PlanckConstantReduced", "=", 
   RowBox[{"1.05457", " ", 
    SuperscriptBox["10", 
     RowBox[{"-", "34"}]]}]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.549616544778532*^9, 3.549616545349285*^9}, {
   3.549616933080263*^9, 3.5496169447984867`*^9}, {3.549618729680085*^9, 
   3.5496187331879797`*^9}, 3.549620123441515*^9, {3.549620390209968*^9, 
   3.54962039318288*^9}, {3.549620625797532*^9, 3.549620628601942*^9}, {
   3.549621382812625*^9, 3.549621405946899*^9}, {3.549621499210206*^9, 
   3.549621528756959*^9}, {3.549708206789764*^9, 3.549708207571273*^9}, {
   3.54970909694106*^9, 3.5497091051482277`*^9}, {3.549709135511704*^9, 
   3.549709148789308*^9}, 3.549709636002769*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"ElectronMass", "=", 
   RowBox[{"9.10938", " ", 
    SuperscriptBox["10", 
     RowBox[{"-", "31"}]]}]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.549617045001874*^9, 3.5496170484729843`*^9}, 
   3.5496201234642563`*^9, {3.5496214216847258`*^9, 3.54962143406028*^9}, {
   3.549621531781733*^9, 3.549621540853404*^9}, {3.5497091005808*^9, 
   3.5497091028077908`*^9}, {3.5497091391090393`*^9, 3.549709140131982*^9}, 
   3.549709638024272*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Calc", "Subsection",
 CellChangeTimes->{{3.5513362387054358`*^9, 3.5513362390712757`*^9}, {
  3.5513387054088507`*^9, 3.5513387059747972`*^9}}],

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{"\[Psi]", ",", 
   RowBox[{"{", 
    RowBox[{"\[Beta]", ",", 
     RowBox[{"-", 
      FractionBox["\[Pi]", "2"]}], ",", 
     FractionBox["\[Pi]", "2"]}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.551533163228319*^9, 3.5515331862779617`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   FractionBox[
    RowBox[{"-", "\[Pi]"}], "2"], 
   FractionBox["\[Pi]", "2"]], 
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{"-", 
     FractionBox["\[Pi]", "2"]}], 
    FractionBox["\[Pi]", "2"]], 
   RowBox[{"\[Psi]", 
    RowBox[{"\[DifferentialD]", "\[Beta]"}], 
    RowBox[{"\[DifferentialD]", "\[Delta]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.551342023870914*^9, 3.551342034326412*^9}, {
  3.551533128348007*^9, 3.551533151653988*^9}}],

Cell[BoxData["$Aborted"], "Output",
 CellChangeTimes->{3.551344271517538*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"sol", "=", 
  RowBox[{"Solve", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Tan", "[", "\[Delta]", "]"}], "\[Equal]", 
     RowBox[{
      FractionBox["d", "r"], "-", 
      RowBox[{"Tan", "[", "\[Beta]", "]"}]}]}], ",", "\[Delta]"}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.5513362538727283`*^9, 3.5513363071954737`*^9}, {
   3.55133639092745*^9, 3.551336391687028*^9}, 3.551338602425929*^9, {
   3.551342127001189*^9, 3.551342135217599*^9}, {3.551342641897904*^9, 
   3.5513426428599033`*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Solve", "::", "ifun"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Inverse functions are being used by \
\[NoBreak]\\!\\(Solve\\)\[NoBreak], so some solutions may not be found; use \
Reduce for complete solution information. \\!\\(\\*ButtonBox[\\\"\
\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Solve/ifun\\\", ButtonNote -> \
\\\"Solve::ifun\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.551336307668859*^9, 3.551336392405189*^9, 
  3.551338603135487*^9, 3.551341974510661*^9, 3.551342143859892*^9, 
  3.551533315055969*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"\[Delta]", "\[Rule]", 
    RowBox[{"ArcTan", "[", 
     FractionBox[
      RowBox[{"d", "-", 
       RowBox[{"r", " ", 
        RowBox[{"Tan", "[", "\[Beta]", "]"}]}]}], "r"], "]"}]}], "}"}], 
  "}"}]], "Output",
 CellChangeTimes->{3.5513421438624573`*^9, 3.551533315061904*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]3", "=", 
  RowBox[{
   RowBox[{"\[Psi]", "/.", "sol"}], "//", "FullSimplify"}]}]], "Input",
 CellChangeTimes->{{3.551336451495262*^9, 3.551336459303917*^9}, {
  3.551338608781561*^9, 3.551338611653369*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"-", 
   FractionBox[
    RowBox[{"\[ImaginaryI]", " ", 
     SuperscriptBox["\[ExponentialE]", 
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", "m", " ", 
        SuperscriptBox["r", "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"Sec", "[", "\[Beta]", "]"}], "+", 
           SqrtBox[
            RowBox[{"1", "+", 
             FractionBox[
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{"d", "-", 
                 RowBox[{"r", " ", 
                  RowBox[{"Tan", "[", "\[Beta]", "]"}]}]}], ")"}], "2"], 
              SuperscriptBox["r", "2"]]}]]}], ")"}], "2"]}], 
       RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m"}], 
    RowBox[{"2", " ", "\[Pi]", " ", "\[HBar]", " ", 
     SqrtBox[
      FractionBox[
       RowBox[{
        SuperscriptBox["t", "2"], " ", 
        RowBox[{"Cos", "[", "\[Beta]", "]"}], " ", 
        SqrtBox[
         RowBox[{"1", "+", 
          FractionBox[
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"d", "-", 
              RowBox[{"r", " ", 
               RowBox[{"Tan", "[", "\[Beta]", "]"}]}]}], ")"}], "2"], 
           SuperscriptBox["r", "2"]]}]]}], 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"1", "+", 
          RowBox[{
           RowBox[{"Cos", "[", "\[Beta]", "]"}], " ", 
           SqrtBox[
            RowBox[{"1", "+", 
             FractionBox[
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{"d", "-", 
                 RowBox[{"r", " ", 
                  RowBox[{"Tan", "[", "\[Beta]", "]"}]}]}], ")"}], "2"], 
              SuperscriptBox["r", "2"]]}]]}]}], ")"}], "2"]]]}]]}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.5513364728445187`*^9, {3.55133860632384*^9, 3.551338621797831*^9}, 
   3.5513419865444613`*^9, 3.551342161427306*^9, 3.551533348253174*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{"\[Psi]3", ",", 
   RowBox[{"{", 
    RowBox[{"\[Beta]", ",", 
     RowBox[{"-", 
      FractionBox["\[Pi]", "2"]}], ",", 
     FractionBox["\[Pi]", "2"]}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.551336384924719*^9, 3.551336435816246*^9}, {
   3.55133648186896*^9, 3.551336484186054*^9}, 3.551338144069406*^9, 
   3.5513420109435997`*^9, {3.5515333716882553`*^9, 3.551533395730818*^9}}],

Cell[BoxData["$Aborted"], "Output",
 CellChangeTimes->{3.551336471506075*^9, 3.551338125774075*^9, 
  3.551338239526794*^9, 3.5513421420397243`*^9, 3.551342532993565*^9, 
  3.551538842575211*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]32", "=", 
  RowBox[{"Series", "[", 
   RowBox[{"\[Psi]3", ",", 
    RowBox[{"{", 
     RowBox[{"r", ",", "0", ",", "1"}], "}"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.55133653988348*^9, 3.551336554282216*^9}, {
  3.5513381364055223`*^9, 3.551338136524889*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  InterpretationBox[
   RowBox[{
    RowBox[{"-", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", 
       SuperscriptBox["\[ExponentialE]", 
        FractionBox[
         RowBox[{"\[ImaginaryI]", " ", 
          SuperscriptBox["d", "2"], " ", "m"}], 
         RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m"}], 
      RowBox[{"2", " ", "\[Pi]", " ", "\[HBar]", " ", 
       SqrtBox[
        FractionBox[
         RowBox[{
          SuperscriptBox["t", "2"], " ", 
          SuperscriptBox[
           RowBox[{"Sec", "[", "\[Beta]", "]"}], "2"]}], 
         SuperscriptBox["d", "2"]]], " ", "r"}]]}], "+", 
    FractionBox[
     RowBox[{
      SuperscriptBox["\[ExponentialE]", 
       FractionBox[
        RowBox[{"\[ImaginaryI]", " ", 
         SuperscriptBox["d", "2"], " ", "m"}], 
        RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SuperscriptBox["d", "2"], " ", "m"}], "-", 
        RowBox[{"\[ImaginaryI]", " ", "t", " ", "\[HBar]"}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"d", " ", 
         RowBox[{"Sec", "[", "\[Beta]", "]"}]}], "-", 
        RowBox[{
         SqrtBox[
          SuperscriptBox["d", "2"]], " ", 
         RowBox[{"Tan", "[", "\[Beta]", "]"}]}]}], ")"}]}], 
     RowBox[{"2", " ", "d", " ", 
      SqrtBox[
       SuperscriptBox["d", "2"]], " ", "\[Pi]", " ", "t", " ", 
      SuperscriptBox["\[HBar]", "2"], " ", 
      SqrtBox[
       FractionBox[
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SuperscriptBox[
          RowBox[{"Sec", "[", "\[Beta]", "]"}], "2"]}], 
        SuperscriptBox["d", "2"]]]}]], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["\[ExponentialE]", 
        FractionBox[
         RowBox[{"\[ImaginaryI]", " ", 
          SuperscriptBox["d", "2"], " ", "m"}], 
         RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           RowBox[{"(", 
            SuperscriptBox["d", "2"], ")"}], 
           RowBox[{"3", "/", "2"}]], " ", "m", " ", "t", " ", "\[HBar]"}], 
         "-", 
         RowBox[{"\[ImaginaryI]", " ", 
          SqrtBox[
           SuperscriptBox["d", "2"]], " ", 
          SuperscriptBox["t", "2"], " ", 
          SuperscriptBox["\[HBar]", "2"]}], "+", 
         RowBox[{"\[ImaginaryI]", " ", 
          SuperscriptBox["d", "4"], " ", 
          SqrtBox[
           SuperscriptBox["d", "2"]], " ", 
          SuperscriptBox["m", "2"], " ", 
          SuperscriptBox[
           RowBox[{"Sec", "[", "\[Beta]", "]"}], "2"]}], "+", 
         RowBox[{"3", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            SuperscriptBox["d", "2"], ")"}], 
           RowBox[{"3", "/", "2"}]], " ", "m", " ", "t", " ", "\[HBar]", " ", 
          
          SuperscriptBox[
           RowBox[{"Sec", "[", "\[Beta]", "]"}], "2"]}], "-", 
         RowBox[{"2", " ", "\[ImaginaryI]", " ", 
          SuperscriptBox["d", "5"], " ", 
          SuperscriptBox["m", "2"], " ", 
          RowBox[{"Sec", "[", "\[Beta]", "]"}], " ", 
          RowBox[{"Tan", "[", "\[Beta]", "]"}]}], "-", 
         RowBox[{"6", " ", 
          SuperscriptBox["d", "3"], " ", "m", " ", "t", " ", "\[HBar]", " ", 
          RowBox[{"Sec", "[", "\[Beta]", "]"}], " ", 
          RowBox[{"Tan", "[", "\[Beta]", "]"}]}], "+", 
         RowBox[{"\[ImaginaryI]", " ", 
          SuperscriptBox["d", "4"], " ", 
          SqrtBox[
           SuperscriptBox["d", "2"]], " ", 
          SuperscriptBox["m", "2"], " ", 
          SuperscriptBox[
           RowBox[{"Tan", "[", "\[Beta]", "]"}], "2"]}], "+", 
         RowBox[{"3", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            SuperscriptBox["d", "2"], ")"}], 
           RowBox[{"3", "/", "2"}]], " ", "m", " ", "t", " ", "\[HBar]", " ", 
          
          SuperscriptBox[
           RowBox[{"Tan", "[", "\[Beta]", "]"}], "2"]}]}], ")"}], " ", "r"}], 
      ")"}], "/", 
     RowBox[{"(", 
      RowBox[{"4", " ", 
       SuperscriptBox["d", "2"], " ", 
       SqrtBox[
        SuperscriptBox["d", "2"]], " ", "\[Pi]", " ", 
       SuperscriptBox["t", "2"], " ", 
       SuperscriptBox["\[HBar]", "3"], " ", 
       SqrtBox[
        FractionBox[
         RowBox[{
          SuperscriptBox["t", "2"], " ", 
          SuperscriptBox[
           RowBox[{"Sec", "[", "\[Beta]", "]"}], "2"]}], 
         SuperscriptBox["d", "2"]]]}], ")"}]}], "+", 
    InterpretationBox[
     SuperscriptBox[
      RowBox[{"O", "[", "r", "]"}], "2"],
     SeriesData[$CellContext`r, 0, {}, -1, 2, 1],
     Editable->False]}],
   SeriesData[$CellContext`r, 0, {Complex[0, 
       Rational[-1, 2]] E^(Complex[0, 
         Rational[
         1, 2]] $CellContext`d^2 $CellContext`m \
$CellContext`t^(-1)/$CellContext`\[HBar]) $CellContext`m 
     Pi^(-1) $CellContext`\[HBar]^(-1) ($CellContext`d^(-2) $CellContext`t^2 
       Sec[$CellContext`\[Beta]]^2)^Rational[-1, 2], 
     Rational[1, 2] $CellContext`d^(-1) ($CellContext`d^2)^Rational[-1, 2] 
     E^(Complex[0, 
         Rational[
         1, 2]] $CellContext`d^2 $CellContext`m \
$CellContext`t^(-1)/$CellContext`\[HBar]) $CellContext`m 
     Pi^(-1) $CellContext`t^(-1) $CellContext`\[HBar]^(-2) ($CellContext`d^2 \
$CellContext`m + 
      Complex[0, -1] $CellContext`t $CellContext`\[HBar]) \
($CellContext`d^(-2) $CellContext`t^2 Sec[$CellContext`\[Beta]]^2)^
      Rational[-1, 2] ($CellContext`d 
       Sec[$CellContext`\[Beta]] - ($CellContext`d^2)^Rational[1, 2] 
      Tan[$CellContext`\[Beta]]), 
     Rational[1, 4] $CellContext`d^(-2) ($CellContext`d^2)^Rational[-1, 2] 
     E^(Complex[0, 
         Rational[
         1, 2]] $CellContext`d^2 $CellContext`m \
$CellContext`t^(-1)/$CellContext`\[HBar]) $CellContext`m 
     Pi^(-1) $CellContext`t^(-2) $CellContext`\[HBar]^(-3) \
($CellContext`d^(-2) $CellContext`t^2 Sec[$CellContext`\[Beta]]^2)^
      Rational[-1, 2] (($CellContext`d^2)^
        Rational[3, 2] $CellContext`m $CellContext`t $CellContext`\[HBar] + 
      Complex[0, -1] ($CellContext`d^2)^
        Rational[1, 2] $CellContext`t^2 $CellContext`\[HBar]^2 + 
      Complex[0, 1] $CellContext`d^4 ($CellContext`d^2)^
        Rational[1, 2] $CellContext`m^2 Sec[$CellContext`\[Beta]]^2 + 
      3 ($CellContext`d^2)^
        Rational[3, 2] $CellContext`m $CellContext`t $CellContext`\[HBar] 
       Sec[$CellContext`\[Beta]]^2 + 
      Complex[0, -2] $CellContext`d^5 $CellContext`m^2 
       Sec[$CellContext`\[Beta]] Tan[$CellContext`\[Beta]] - 
      6 $CellContext`d^3 $CellContext`m $CellContext`t $CellContext`\[HBar] 
      Sec[$CellContext`\[Beta]] Tan[$CellContext`\[Beta]] + 
      Complex[0, 1] $CellContext`d^4 ($CellContext`d^2)^
        Rational[1, 2] $CellContext`m^2 Tan[$CellContext`\[Beta]]^2 + 
      3 ($CellContext`d^2)^
        Rational[3, 2] $CellContext`m $CellContext`t $CellContext`\[HBar] 
       Tan[$CellContext`\[Beta]]^2)}, -1, 2, 1],
   Editable->False], "}"}]], "Output",
 CellChangeTimes->{{3.551338132278061*^9, 3.551338137402372*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]2", "=", 
  RowBox[{"Series", "[", 
   RowBox[{"\[Psi]", ",", 
    RowBox[{"{", 
     RowBox[{"r", ",", "0", ",", "2"}], "}"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551262463311379*^9, 3.55126250032233*^9}, {
   3.551262582654335*^9, 3.551262582765698*^9}, 3.5513361731802883`*^9}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m"}], 
     RowBox[{"2", " ", "\[Pi]", " ", "\[HBar]", " ", 
      SqrtBox[
       FractionBox[
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SuperscriptBox[
          RowBox[{"Sec", "[", "\[Beta]", "]"}], "2"]}], 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"Sec", "[", "\[Beta]", "]"}], "+", 
           RowBox[{"Sec", "[", "\[Delta]", "]"}]}], ")"}], "2"]]]}]]}], "+", 
   FractionBox[
    RowBox[{
     SuperscriptBox["m", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Sec", "[", "\[Beta]", "]"}], "+", 
        RowBox[{"Sec", "[", "\[Delta]", "]"}]}], ")"}], "2"], " ", 
     SuperscriptBox["r", "2"]}], 
    RowBox[{"4", " ", "\[Pi]", " ", "t", " ", 
     SuperscriptBox["\[HBar]", "2"], " ", 
     SqrtBox[
      FractionBox[
       RowBox[{
        SuperscriptBox["t", "2"], " ", 
        SuperscriptBox[
         RowBox[{"Sec", "[", "\[Beta]", "]"}], "2"]}], 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"Sec", "[", "\[Beta]", "]"}], "+", 
          RowBox[{"Sec", "[", "\[Delta]", "]"}]}], ")"}], "2"]]]}]], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", "r", "]"}], "3"],
    SeriesData[$CellContext`r, 0, {}, 0, 3, 1],
    Editable->False]}],
  SeriesData[$CellContext`r, 0, {Complex[0, 
      Rational[-1, 2]] $CellContext`m 
    Pi^(-1) $CellContext`\[HBar]^(-1) ($CellContext`t^2 
      Sec[$CellContext`\[Beta]]^2 (Sec[$CellContext`\[Beta]] + 
        Sec[$CellContext`\[Delta]])^(-2))^Rational[-1, 2], 0, 
    Rational[1, 4] $CellContext`m^2 
    Pi^(-1) $CellContext`t^(-1) $CellContext`\[HBar]^(-2) ($CellContext`t^2 
      Sec[$CellContext`\[Beta]]^2 (Sec[$CellContext`\[Beta]] + 
        Sec[$CellContext`\[Delta]])^(-2))^
     Rational[-1, 2] (Sec[$CellContext`\[Beta]] + 
      Sec[$CellContext`\[Delta]])^2}, 0, 3, 1],
  Editable->False]], "Output",
 CellChangeTimes->{{3.5512624778666353`*^9, 3.551262500898591*^9}, {
   3.551262583440055*^9, 3.551262588573064*^9}, 3.5512626828952*^9, 
   3.551262726373913*^9, 3.551262857575008*^9, 3.551263136119841*^9, 
   3.551263450565937*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"-", "\[Pi]"}], "\[Pi]"], 
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{"-", "\[Pi]"}], "\[Pi]"], 
   RowBox[{"\[Psi]2", 
    RowBox[{"\[DifferentialD]", "\[Beta]"}], 
    RowBox[{"\[DifferentialD]", "\[Delta]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.551263696489402*^9, 3.551263712877017*^9}, {
   3.551263747809485*^9, 3.551263759982479*^9}, {3.551263804608695*^9, 
   3.551263812370986*^9}, 3.551336175337131*^9}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox[
     RowBox[{"2", " ", "\[ImaginaryI]", " ", "m", " ", "\[Pi]"}], 
     RowBox[{"t", " ", "\[HBar]"}]]}], "-", 
   FractionBox[
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["m", "2"], " ", "\[Pi]"}], ")"}], " ", 
     SuperscriptBox["r", "2"]}], 
    RowBox[{
     SuperscriptBox["t", "2"], " ", 
     SuperscriptBox["\[HBar]", "2"]}]], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", "r", "]"}], "3"],
    SeriesData[$CellContext`r, 0, {}, 0, 3, 1],
    Editable->False]}],
  SeriesData[$CellContext`r, 0, {
   Complex[0, -2] $CellContext`m Pi $CellContext`t^(-1)/$CellContext`\[HBar], 
    0, (-3) $CellContext`m^2 
    Pi $CellContext`t^(-2) $CellContext`\[HBar]^(-2)}, 0, 3, 1],
  Editable->False]], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{3.551263723158346*^9, 3.551263768687004*^9, 
  3.551263804610238*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"4", 
  RowBox[{
   SubsuperscriptBox["\[Integral]", "0", "\[Pi]"], 
   RowBox[{
    SubsuperscriptBox["\[Integral]", "0", "\[Pi]"], 
    RowBox[{"\[Psi]2", 
     RowBox[{"\[DifferentialD]", "\[Beta]"}], 
     RowBox[{"\[DifferentialD]", "\[Delta]"}]}]}]}]}]], "Input",
 CellChangeTimes->{{3.551263848611497*^9, 3.551263852538019*^9}, 
   3.551263884899293*^9, 3.551336177815027*^9}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m", " ", "\[Pi]"}], 
     RowBox[{"2", " ", "t", " ", "\[HBar]"}]]}], "-", 
   FractionBox[
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["m", "2"], " ", "\[Pi]"}], ")"}], " ", 
     SuperscriptBox["r", "2"]}], 
    RowBox[{"4", " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["t", "2"], " ", 
       SuperscriptBox["\[HBar]", "2"]}], ")"}]}]], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", "r", "]"}], "3"],
    SeriesData[$CellContext`r, 0, {}, 0, 3, 1],
    Editable->False]}],
  SeriesData[$CellContext`r, 0, {Complex[0, 
      Rational[-1, 2]] $CellContext`m 
    Pi $CellContext`t^(-1)/$CellContext`\[HBar], 0, 
    Rational[-3, 4] $CellContext`m^2 
    Pi $CellContext`t^(-2) $CellContext`\[HBar]^(-2)}, 0, 3, 1],
  Editable->False]], "Output",
 CellChangeTimes->{3.5512638618818607`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"betaKwadraat", "=", 
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{"-", "\[Pi]"}], "\[Pi]"], 
   RowBox[{
    RowBox[{"Exp", "[", 
     RowBox[{
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", "m", " ", 
        SuperscriptBox["r", "2"]}], 
       RowBox[{"2", "\[HBar]", " ", "t"}]], 
      FractionBox["1", 
       SuperscriptBox[
        RowBox[{"Cos", "[", "\[Beta]", "]"}], "2"]]}], "]"}], 
    RowBox[{"\[DifferentialD]", "\[Beta]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.551256994840547*^9, 3.551257084308859*^9}, {
  3.5512575055135307`*^9, 3.551257515765345*^9}, {3.5512576507089148`*^9, 
  3.5512576530909567`*^9}, {3.551423449527772*^9, 3.551423457822174*^9}, {
  3.5514235083758297`*^9, 3.551423509397303*^9}, {3.551423758893186*^9, 
  3.551423760709153*^9}}],

Cell[BoxData[
 RowBox[{"2", " ", "\[Pi]", " ", 
  RowBox[{"(", 
   RowBox[{"1", "-", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "-", "\[ImaginaryI]"}], ")"}], " ", 
     RowBox[{"FresnelC", "[", 
      FractionBox[
       RowBox[{"m", " ", "r"}], 
       RowBox[{
        SqrtBox["\[Pi]"], " ", 
        SqrtBox[
         RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]], "]"}]}], "-", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "+", "\[ImaginaryI]"}], ")"}], " ", 
     RowBox[{"FresnelS", "[", 
      FractionBox[
       RowBox[{"m", " ", "r"}], 
       RowBox[{
        SqrtBox["\[Pi]"], " ", 
        SqrtBox[
         RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]], "]"}]}]}], 
   ")"}]}]], "Output",
 CellChangeTimes->{{3.5512574700207367`*^9, 3.551257523344234*^9}, 
   3.55125761465553*^9, 3.551257729969404*^9, 3.551259117869157*^9, 
   3.551262694935032*^9, 3.5512628646718607`*^9, 3.551263154030958*^9, 
   3.551423478678447*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"betaKwadraat", "//", "Re"}], "//", "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.551423543501225*^9, 3.5514235473597603`*^9}, {
  3.551423625018852*^9, 3.551423625897882*^9}, {3.551423765150221*^9, 
  3.551423771210785*^9}, {3.551424069782469*^9, 3.5514240753736887`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "2"}], " ", "\[Pi]", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"-", "1"}], "+", 
    RowBox[{"FresnelC", "[", 
     FractionBox[
      RowBox[{"m", " ", "r"}], 
      RowBox[{
       SqrtBox["\[Pi]"], " ", 
       SqrtBox[
        RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]], "]"}], "+", 
    RowBox[{"FresnelS", "[", 
     FractionBox[
      RowBox[{"m", " ", "r"}], 
      RowBox[{
       SqrtBox["\[Pi]"], " ", 
       SqrtBox[
        RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]], "]"}]}], 
   ")"}]}]], "Output",
 CellChangeTimes->{{3.551423617329832*^9, 3.551423627073894*^9}, {
  3.5514237662818813`*^9, 3.551423771804249*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"betaKwadraat", "//", "Im"}], "//", "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.551423779894359*^9, 3.5514237800356894`*^9}}],

Cell[BoxData[
 RowBox[{"2", " ", "\[Pi]", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"FresnelC", "[", 
     FractionBox[
      RowBox[{"m", " ", "r"}], 
      RowBox[{
       SqrtBox["\[Pi]"], " ", 
       SqrtBox[
        RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]], "]"}], "-", 
    RowBox[{"FresnelS", "[", 
     FractionBox[
      RowBox[{"m", " ", "r"}], 
      RowBox[{
       SqrtBox["\[Pi]"], " ", 
       SqrtBox[
        RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]], "]"}]}], 
   ")"}]}]], "Output",
 CellChangeTimes->{3.551423780767153*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"betaGewoon", "=", 
  RowBox[{
   SubsuperscriptBox["\[Integral]", "0", "\[Pi]"], 
   RowBox[{
    RowBox[{"Exp", "[", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "k"}], 
      RowBox[{
       RowBox[{"Cos", "[", "\[Beta]", "]"}], " "}]], "]"}], 
    RowBox[{"\[DifferentialD]", "\[Beta]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.551423512786178*^9, 3.551423529987287*^9}, {
  3.5514245810080023`*^9, 3.5514245819192963`*^9}, {3.551425191629356*^9, 
  3.55142521874258*^9}, {3.551425253250793*^9, 3.551425277278747*^9}}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", "0", "\[Pi]"], 
  RowBox[{
   SuperscriptBox["\[ExponentialE]", 
    RowBox[{"\[ImaginaryI]", " ", "k", " ", 
     RowBox[{"Sec", "[", "\[Beta]", "]"}]}]], 
   RowBox[{"\[DifferentialD]", "\[Beta]"}]}]}]], "Output",
 CellChangeTimes->{
  3.55142361451458*^9, 3.5514251663585052`*^9, {3.551425211694282*^9, 
   3.551425224880466*^9}, 3.5514252581740227`*^9, 3.551425342561651*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ParametricPlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"FresnelC", "[", "t", "]"}], ",", 
     RowBox[{"FresnelS", "[", "t", "]"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"t", ",", 
     RowBox[{"-", "10"}], ",", "10"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5514240092539577`*^9, 3.551424042262597*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
PIHn4PtYp4+F/Sogfc845sJlPYX7H7FPqTuJrK+6hvMnusBO4xQB9Ps9Cqle
yMNNIVtFXQkwZl0seqGB/fCYgaG0AwHmP29sWj2PHJ6UYB2F/Sz6Ru6tyUs4
N7HuEcJnCfBwv5hQgLmwOPOTgPQdAiCsNWsIc6HSksssrpeAm5lap528SJhK
3rOZUCXhV4z7Qxv0113bQjV1w5B3zho1j6C/9jk/zT6JXNjY5SE+hvpYmfF8
fJURBZ/NX2e/RM4YK617frOYAru1oaYeBwl4sB4OiPPRsKjDufaYM/LwleVK
04bI7bY79P/inMyK6ywRCMacmVRVK4knIOmR3/F55HxwMJhqfI4982LU39AO
GqjQL4080wQ8zsjeeBDnejjknPknYxLmmQuXCqSwr2lUC2teQ/0tuxx/VB17
zumBZNYMzk158KklqL/oj9wyBocokFYesxJDX3ogse773TYKfjh+6bBCX+mR
6BGSX4Hcwe/qWG2Ivel0yKU09Euhb1FTeesZeFv/a7AxmsY+7Mh5DM8Rrq+M
dniMOXBKcFM3nuPwsPt1LoaGK54/eRuwp4luf7ewaCED1JJvQka5NHCkis+Z
Ix9++TdSfMEH/bRhcosk+uUj99czX7VpOBJfH3vOFHvmQdHPLRzYZ72quBVQ
95lLVDz3ZlKgSDXMsfB1W7U7Vt/VKPCmav424+erKlk1m1qwt2TIOJisZGDQ
4UVQnx8Jftv45CkufC7mYmWALAl33xfsdOuloTPmz7QI9pc7hfJRzdgbNoe/
X5ODelBSjovYGoPnUhX8LOw8AccC3Ddz29CQJmY2/tSfAK/r/QsSZGhwW1ZT
1O5HQGxx9OTZ9xSc4t3E8e4cnmMKWaPjQcExk+J005sEsPE1H9Nlo+CiofEm
o0+or5DEIds8ErjJ7ZuTRUiQpYPvXNxFwtgVm7osJxLi/2bIafLgXDwwGL1R
QsLe5N0L2NoIkCqO3Hqfl4K2L5ZbbPLx/Dvnb8Z6U7DSR4LDAtc5JaXzmW5H
bii515h3goD9GyzfKmB/ijm32LY0iIBK3smulejjdoNSKqcuEFBhLcijhz6f
G79NMe02AYEV1rP6d2loNK0r0u8k4PKhex/EMd98nDo59wmR4Cr6lP8l+t3t
xDJu330kmJUxP5yRP73dtjKV6Mt+N+r+amKPpT1ulZqgL19QMn7/GHlQoNSy
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
     "]]}},
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-0.7798907098716483, 0.7798933974209463}, {-0.7139706567888449,
    0.7139698570874023}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{3.551424017365045*^9, 3.5514240492010393`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ParametricPlot", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Re", "[", "betaKwadraat", "]"}], ",", 
      RowBox[{"Im", "[", "betaKwadraat", "]"}]}], "}"}], "/.", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"m", "\[Rule]", "ElectronMass"}], ",", 
      RowBox[{"r", "\[Rule]", "5"}], ",", 
      RowBox[{"\[HBar]", "\[Rule]", "PlanckConstantReduced"}]}], "}"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"t", ",", 
     RowBox[{"-", "9"}], ",", "9"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.551424097687051*^9, 3.5514241225426493`*^9}, {
  3.551424191508452*^9, 3.551424227181518*^9}, {3.551424401431362*^9, 
  3.551424402164118*^9}, {3.5514244800529947`*^9, 3.5514245396689377`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
9treazK1wqkmJVflYT5o5fnVp/vDMOc3Q3dPGI8OiSTmGIZjA+mBFnHq/099
v6KZ1eqKuep+uFH77ZT5h7zznCFoffVwC/X9cFik1OAaGwkJxdq0bwd+To3y
ixc1CuPb3Frrz4HfUJcn46YTBLw/cmGZk4/6/Y6IaqEiAd3JYil6DXrZrfBC
5WN2FPYhnL55Euqx6lF04q24KGTc/1toFvhCzmdmucQJ+IbcmJcsjEdb7vK7
NhDQ28YXxvSAh1Vg38GCCmXEcFIi9hNVXxa7aMQ6iLi74uwrOdCLmyfZxGYu
HKu+dE3+RP0e1+lQMs0xaZSAeCyov5clXGc/s/nQBUnXbyh8gLGEcFX643dn
kWLkmXUp2M802HctfiAcPxm26HgF9s0VJ8vb84h4cmlwSQD8a138bTgoaoS2
tX4+xUz9/3Olvy8uxichnn3cJgjyMZFZl88kRMRCWp/krEHP3H2pfGfVEtFR
Mne8KsSTHSU6FOtIwMH2QR27YX3eHEOu/kkiypqh+eMO9vmur2794HXDjApM
atT7yl5p4mvxKQKeeLzRXA14iaXxkzO9Vph0rNUsHPAyvNc7yikQinoT2Kqp
/XP9uivrlfEotOK9R/olzNc9v/WvWSgYXc7qqrwD+92ZN5/FhLnhPrOXt4og
n3OanbKn3Il4u1t8mwL19+XNq3zV268gV8KKUzjo869JWXEQTRxinKqcWYP+
N6CgIZe6RsAloVkx1P8X9ON7ndDfTkDDA487SiGfWR7Ov9Y3orCyVeiEAfhr
d8tvqeF3xzc6g3yFqb9vl36T+P4fAUmq8yzEwfrCq2MLt89Hocsnt4ffAf90
OSdZ7V7YImF8UtwCxnUXi8JjP5uguKG1FOrz7SpD+E4dJYi3U2KhFup3+41F
EQ85eJ5hej6aBP5onJxfV68YIZXQsNzXoL+bJyTYNVaTcO7gE+QI+dzIVoql
zBNQvH+qWwuchxZCw8Sd3ZCP3BnXdOr/W7EVfprWIyCNKO3mZOr9WOuiSXmY
Iy5WbmFDsJ6vWrDL/xMBv5/Y/esR8HsqaHWwezkAnzEr/cMN+W2cM2CbfJWE
WiXfEqjnzaGeTyyWzNHoD7Y2i6K+D9/r0dU4b45mcqKeBlDvG3mHVaciNbFL
edjgAIxvcssufF91Q8yzNqWagF+9U0ONPTERnRhfIGVAfg/h1r67ghFoYruv
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
     "]]}},
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-0.032152457584395236`, 
   12.598498081545056`}, {-0.032195508114822684`, 0.03225487605564169}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.5514241957241793`*^9, 3.55142424977527*^9, {3.551424522280408*^9, 
   3.551424546143972*^9}}]
}, Open  ]]
}, Open  ]]
},
WindowSize->{739, 683},
WindowMargins->{{Automatic, -7}, {Automatic, 0}},
CellContext->Notebook,
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
Cell[CellGroupData[{
Cell[1257, 32, 92, 1, 34, "Subsection"],
Cell[1352, 35, 1027, 26, 71, "Input",
 InitializationCell->True],
Cell[2382, 63, 273, 7, 47, "Input",
 InitializationCell->True],
Cell[2658, 72, 274, 7, 47, "Input",
 InitializationCell->True],
Cell[2935, 81, 260, 6, 27, "Input",
 InitializationCell->True],
Cell[3198, 89, 207, 6, 46, "Input",
 InitializationCell->True],
Cell[3408, 97, 256, 6, 46, "Input",
 InitializationCell->True],
Cell[3667, 105, 260, 6, 46, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[3952, 115, 428, 12, 52, "Input",
 InitializationCell->True],
Cell[4383, 129, 682, 19, 72, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[5102, 153, 412, 12, 49, "Input",
 InitializationCell->True],
Cell[5517, 167, 532, 13, 42, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[6086, 185, 294, 6, 27, "Input",
 InitializationCell->True],
Cell[6383, 193, 1135, 30, 87, "Output"]
}, Open  ]],
Cell[7533, 226, 749, 14, 30, "Input",
 InitializationCell->True],
Cell[8285, 242, 501, 11, 30, "Input",
 InitializationCell->True]
}, Open  ]],
Cell[CellGroupData[{
Cell[8823, 258, 149, 2, 34, "Subsection"],
Cell[8975, 262, 301, 8, 44, "Input"],
Cell[CellGroupData[{
Cell[9301, 274, 521, 15, 54, "Input"],
Cell[9825, 291, 77, 1, 27, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[9939, 297, 524, 13, 46, "Input"],
Cell[10466, 312, 647, 13, 41, "Message"],
Cell[11116, 327, 335, 10, 46, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[11488, 342, 237, 5, 27, "Input"],
Cell[11728, 349, 1945, 55, 165, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13710, 409, 447, 10, 44, "Input"],
Cell[14160, 421, 195, 3, 27, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14392, 429, 296, 7, 27, "Input"],
Cell[14691, 438, 7127, 176, 238, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[21855, 619, 317, 7, 27, "Input"],
Cell[22175, 628, 2285, 60, 75, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[24497, 693, 503, 12, 46, "Input"],
Cell[25003, 707, 988, 29, 52, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[26028, 741, 406, 10, 45, "Input"],
Cell[26437, 753, 982, 29, 57, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[27456, 787, 818, 20, 53, "Input"],
Cell[28277, 809, 950, 28, 52, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[29264, 842, 311, 5, 27, "Input"],
Cell[29578, 849, 676, 22, 52, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[30291, 876, 165, 3, 27, "Input"],
Cell[30459, 881, 553, 19, 52, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[31049, 905, 554, 13, 49, "Input"],
Cell[31606, 920, 438, 10, 45, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[32081, 935, 365, 10, 27, "Input"],
Cell[32449, 947, 61337, 1011, 345, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[93823, 1963, 747, 18, 43, "Input"],
Cell[94573, 1983, 64386, 1062, 36, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature HvpfudU@O1GKFBg1wTT2#cV6 *)
