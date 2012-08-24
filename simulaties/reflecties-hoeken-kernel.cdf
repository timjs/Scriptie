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
NotebookDataLength[     42124,       1300]
NotebookOptionsPosition[     40565,       1226]
NotebookOutlinePosition[     40962,       1244]
CellTagsIndexPosition[     40919,       1241]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Done", "Section",
 CellChangeTimes->{{3.5516025991928463`*^9, 3.5516025995679893`*^9}}],

Cell[CellGroupData[{

Cell["Init", "Subsection",
 CellChangeTimes->{{3.55160432187488*^9, 3.551604322200111*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"$Assumptions", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"r", ">", "0"}], ",", 
     RowBox[{"d", ">", "0"}], ",", 
     RowBox[{"b", ">", "0"}], ",", 
     RowBox[{"\[Beta]", "\[Element]", 
      RowBox[{"Interval", "[", 
       RowBox[{
        RowBox[{"-", 
         FractionBox["\[Pi]", "2"]}], ",", 
        FractionBox["\[Pi]", "2"]}], "]"}]}], ",", 
     RowBox[{"\[Delta]", "\[Element]", 
      RowBox[{
       RowBox[{
        RowBox[{"Interval", "[", 
         RowBox[{
          RowBox[{"-", 
           FractionBox["\[Pi]", "2"]}], ",", 
          FractionBox["\[Pi]", "2"]}], "]"}], "m"}], ">", "0"}]}], ",", 
     RowBox[{"\[HBar]", ">", "0"}], ",", 
     RowBox[{
      SubscriptBox["t", "1"], ">", "0"}], ",", 
     RowBox[{
      SubscriptBox["t", "2"], ">", "0"}]}], "}"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5510775425480137`*^9, 3.551077563712881*^9}, 
   3.5510776024904137`*^9, {3.5511834797319603`*^9, 3.551183484026222*^9}, {
   3.551187940048133*^9, 3.551187946215797*^9}, {3.551262812505662*^9, 
   3.5512628156150303`*^9}, {3.551262875355905*^9, 3.551262933533289*^9}, {
   3.551263014228035*^9, 3.55126303062221*^9}, {3.551338736564938*^9, 
   3.5513387406747713`*^9}, {3.551340176511387*^9, 3.551340176949986*^9}, {
   3.551340327082861*^9, 3.551340329690333*^9}, {3.551340442270678*^9, 
   3.551340505753189*^9}, {3.551340544499956*^9, 3.5513406038447*^9}, {
   3.55134431772795*^9, 3.551344318383575*^9}, {3.551344527207221*^9, 
   3.551344547535905*^9}, {3.551441943996739*^9, 3.551441946785726*^9}, {
   3.551442028963264*^9, 3.55144204310457*^9}, {3.551442077850799*^9, 
   3.551442094369891*^9}, {3.551442124534932*^9, 3.5514421298997087`*^9}, {
   3.551442552865835*^9, 3.551442561518827*^9}, {3.551443072499406*^9, 
   3.551443077755188*^9}, {3.551443936350068*^9, 3.551443937349841*^9}, {
   3.551456396948758*^9, 3.551456414223942*^9}, {3.551539417759823*^9, 
   3.55153941833125*^9}, {3.55160172156172*^9, 3.551601731433263*^9}, {
   3.551602132560377*^9, 3.551602134293651*^9}, {3.551606316149564*^9, 
   3.55160632217702*^9}, {3.551680402624653*^9, 3.5516804045754337`*^9}, {
   3.551682373473345*^9, 3.551682402013166*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"toFresnel", "=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{
     RowBox[{"Erf", "[", "z_", "]"}], "\[Rule]", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "+", "I"}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"FresnelC", "[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "I"}], ")"}], " ", "z"}], ")"}], "/", 
          RowBox[{"Sqrt", "[", "Pi", "]"}]}], "]"}], "-", 
        RowBox[{"I", " ", 
         RowBox[{"FresnelS", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", "I"}], ")"}], " ", "z"}], ")"}], "/", 
           RowBox[{"Sqrt", "[", "Pi", "]"}]}], "]"}]}]}], ")"}]}]}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Erfi", "[", "z_", "]"}], "\[Rule]", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "-", "I"}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"FresnelC", "[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "+", "I"}], ")"}], " ", "z"}], ")"}], "/", 
          RowBox[{"Sqrt", "[", "Pi", "]"}]}], "]"}], "-", 
        RowBox[{"I", " ", 
         RowBox[{"FresnelS", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "+", "I"}], ")"}], " ", "z"}], ")"}], "/", 
           RowBox[{"Sqrt", "[", "Pi", "]"}]}], "]"}]}]}], ")"}]}]}]}], 
   "}"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551593753614284*^9, 3.551593810788485*^9}, {
  3.551593884127419*^9, 3.5515938892511263`*^9}, {3.551593944110471*^9, 
  3.551593962642502*^9}, {3.551602555750341*^9, 3.551602559585112*^9}, {
  3.551604343706394*^9, 3.5516043472421303`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"Erf", "[", "z_", "]"}], "\[Rule]", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "+", "\[ImaginaryI]"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", 
        RowBox[{"FresnelC", "[", 
         RowBox[{"-", 
          FractionBox[
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "\[ImaginaryI]"}], ")"}], " ", "z"}], 
           SqrtBox["\[Pi]"]]}], "]"}]}], "+", 
       RowBox[{"\[ImaginaryI]", " ", 
        RowBox[{"FresnelS", "[", 
         RowBox[{"-", 
          FractionBox[
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "\[ImaginaryI]"}], ")"}], " ", "z"}], 
           SqrtBox["\[Pi]"]]}], "]"}]}]}], ")"}]}]}], ",", 
   RowBox[{
    RowBox[{"Erfi", "[", "z_", "]"}], "\[Rule]", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "-", "\[ImaginaryI]"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"FresnelC", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"(", 
           RowBox[{"1", "+", "\[ImaginaryI]"}], ")"}], " ", "z"}], 
         SqrtBox["\[Pi]"]], "]"}], "-", 
       RowBox[{"\[ImaginaryI]", " ", 
        RowBox[{"FresnelS", "[", 
         FractionBox[
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "+", "\[ImaginaryI]"}], ")"}], " ", "z"}], 
          SqrtBox["\[Pi]"]], "]"}]}]}], ")"}]}]}]}], "}"}]], "Output",
 CellChangeTimes->{3.551604347718104*^9, 3.55160633904366*^9, 
  3.5516819584792757`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"toErf", "=", "\[IndentingNewLine]", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{
     RowBox[{"FresnelS", "[", "z_", "]"}], "\[Rule]", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "+", "I"}], ")"}], "/", "4"}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Erf", "[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "+", "I"}], ")"}], "/", "2"}], ")"}], " ", 
          RowBox[{"Sqrt", "[", "Pi", "]"}], " ", "z"}], "]"}], "-", 
        RowBox[{"I", " ", 
         RowBox[{"Erf", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", "I"}], ")"}], "/", "2"}], ")"}], " ", 
           RowBox[{"Sqrt", "[", "Pi", "]"}], " ", "z"}], "]"}]}]}], ")"}]}]}],
     ",", 
    RowBox[{
     RowBox[{"FresnelC", "[", "z_", "]"}], "\[Rule]", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", "I"}], ")"}], "/", "4"}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Erf", "[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "+", "I"}], ")"}], "/", "2"}], ")"}], " ", 
          RowBox[{"Sqrt", "[", "Pi", "]"}], " ", "z"}], "]"}], "+", 
        RowBox[{"I", " ", 
         RowBox[{"Erf", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "-", "I"}], ")"}], "/", "2"}], ")"}], " ", 
           RowBox[{"Sqrt", "[", "Pi", "]"}], " ", "z"}], "]"}]}]}], 
       ")"}]}]}]}], "}"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551604237617899*^9, 3.5516042540785103`*^9}, {
  3.55160428698626*^9, 3.5516043005225897`*^9}, {3.551604337995131*^9, 
  3.55160435142564*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"FresnelS", "[", "z_", "]"}], "\[Rule]", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       FractionBox["1", "4"], "+", 
       FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"Erf", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           FractionBox["1", "2"], "+", 
           FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", 
         SqrtBox["\[Pi]"], " ", "z"}], "]"}], "-", 
       RowBox[{"Erfi", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           FractionBox["1", "2"], "+", 
           FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", 
         SqrtBox["\[Pi]"], " ", "z"}], "]"}]}], ")"}]}]}], ",", 
   RowBox[{
    RowBox[{"FresnelC", "[", "z_", "]"}], "\[Rule]", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       FractionBox["1", "4"], "-", 
       FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"Erf", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           FractionBox["1", "2"], "+", 
           FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", 
         SqrtBox["\[Pi]"], " ", "z"}], "]"}], "+", 
       RowBox[{"Erfi", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           FractionBox["1", "2"], "+", 
           FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", 
         SqrtBox["\[Pi]"], " ", "z"}], "]"}]}], ")"}]}]}]}], "}"}]], "Output",\

 CellChangeTimes->{3.5516043518777323`*^9, 3.551606340948155*^9, 
  3.551681958545562*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"k", "[", 
   RowBox[{
   "x2_", ",", "y2_", ",", "t2_", ",", "x1_", ",", "y1_", ",", "t1_"}], "]"}],
   ":=", 
  RowBox[{
   FractionBox["m", 
    RowBox[{"2", " ", "\[Pi]", " ", "\[ImaginaryI]", " ", 
     RowBox[{"(", 
      RowBox[{"t2", "-", "t1"}], ")"}]}]], 
   RowBox[{"Exp", "[", 
    RowBox[{
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m"}], 
      RowBox[{"2", " ", "\[HBar]"}]], 
     FractionBox[
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"x2", "-", "x1"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"y2", "-", "y1"}], ")"}], "2"]}], 
      RowBox[{"t2", "-", "t1"}]]}], "]"}]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.55160174717881*^9, 3.551601857628359*^9}, {
  3.5516818786156282`*^9, 3.551681915842284*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Calc", "Subsection",
 CellChangeTimes->{{3.55160432693056*^9, 3.55160432800808*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["k", "1"], "=", 
  RowBox[{"k", "[", 
   RowBox[{"x", ",", "0", ",", 
    SubscriptBox["t", "1"], ",", 
    RowBox[{"-", 
     FractionBox["d", "2"]}], ",", "r", ",", "0"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551601876729331*^9, 3.55160190350574*^9}, {
  3.551681945154105*^9, 3.551681952658113*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}], ")"}]}], 
      RowBox[{"2", " ", "\[HBar]", " ", 
       SubscriptBox["t", "1"]}]]], " ", "m"}], 
   RowBox[{"2", " ", "\[Pi]", " ", 
    SubscriptBox["t", "1"]}]]}]], "Output",
 CellChangeTimes->{3.551601905242011*^9, 3.5516063456931458`*^9, 
  3.551681958774869*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["k", "2"], "=", 
  RowBox[{"k", "[", 
   RowBox[{
    FractionBox["d", "2"], ",", "r", ",", 
    RowBox[{
     SubscriptBox["t", "1"], "+", 
     SubscriptBox["t", "2"]}], ",", "x", ",", "0", ",", 
    SubscriptBox["t", "1"]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551601879353092*^9, 3.5516019323859797`*^9}, {
  3.551681971645268*^9, 3.551681979066972*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            FractionBox["d", "2"], "-", "x"}], ")"}], "2"]}], ")"}]}], 
      RowBox[{"2", " ", "\[HBar]", " ", 
       SubscriptBox["t", "2"]}]]], " ", "m"}], 
   RowBox[{"2", " ", "\[Pi]", " ", 
    SubscriptBox["t", "2"]}]]}]], "Output",
 CellChangeTimes->{3.551601933056032*^9, 3.551606347200609*^9, 
  3.551681979951499*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["k", "1"], " ", 
   SubscriptBox["k", "2"]}], "//", "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.551619755690153*^9, 3.5516197729025393`*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", 
       RowBox[{"(", 
        RowBox[{
         FractionBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}], 
          SubscriptBox["t", "1"]], "+", 
         FractionBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           RowBox[{
            FractionBox["1", "4"], " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"d", "-", 
               RowBox[{"2", " ", "x"}]}], ")"}], "2"]}]}], 
          SubscriptBox["t", "2"]]}], ")"}]}], 
      RowBox[{"2", " ", "\[HBar]"}]]], " ", 
    SuperscriptBox["m", "2"]}], 
   RowBox[{"4", " ", 
    SuperscriptBox["\[Pi]", "2"], " ", 
    SubscriptBox["t", "1"], " ", 
    SubscriptBox["t", "2"]}]]}]], "Output",
 CellChangeTimes->{{3.551619762822413*^9, 3.551619775134021*^9}, 
   3.551681991337193*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]", "=", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "b"}], "b"], 
     RowBox[{
      SubscriptBox["k", "1"], " ", 
      SubscriptBox["k", "2"], 
      RowBox[{"\[DifferentialD]", "x"}]}]}], "/.", "toFresnel"}], "//", 
   "FullSimplify"}]}]], "Input",
 CellChangeTimes->{{3.55160202393696*^9, 3.5516020643272333`*^9}, {
   3.551602150285726*^9, 3.551602150988605*^9}, 3.551602312948081*^9, {
   3.55160253204947*^9, 3.5516025680756617`*^9}, {3.551604057610325*^9, 
   3.5516041174915447`*^9}, 3.551604188889312*^9, {3.551682000142229*^9, 
   3.5516820034761133`*^9}, {3.5516820425157824`*^9, 3.551682044113058*^9}, {
   3.551682113767642*^9, 3.551682115172903*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       FractionBox["1", "4"], "-", 
       FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"-", "1"}], ")"}], 
      RowBox[{"1", "/", "4"}]], " ", 
     SuperscriptBox["\[ExponentialE]", 
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", "m", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           SuperscriptBox["r", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             FractionBox["1", 
              SubscriptBox["t", "1"]], "+", 
             FractionBox["1", 
              SubscriptBox["t", "2"]]}], ")"}]}], "+", 
          FractionBox[
           SuperscriptBox["d", "2"], 
           RowBox[{
            SubscriptBox["t", "1"], "+", 
            SubscriptBox["t", "2"]}]]}], ")"}]}], 
       RowBox[{"2", " ", "\[HBar]"}]]], " ", 
     SuperscriptBox["m", 
      RowBox[{"3", "/", "2"}]], " ", "\[HBar]", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"FresnelC", "[", 
        FractionBox[
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
           SubscriptBox["t", "1"]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
           SubscriptBox["t", "2"]}]}], 
         RowBox[{"2", " ", 
          SqrtBox["\[Pi]"], " ", 
          SqrtBox[
           FractionBox[
            RowBox[{"\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             SubscriptBox["t", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["t", "1"], "+", 
               SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}], "+", 
       RowBox[{"FresnelC", "[", 
        FractionBox[
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
           SubscriptBox["t", "1"]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
           SubscriptBox["t", "2"]}]}], 
         RowBox[{"2", " ", 
          SqrtBox["\[Pi]"], " ", 
          SqrtBox[
           FractionBox[
            RowBox[{"\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             SubscriptBox["t", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["t", "1"], "+", 
               SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}], "+", 
       RowBox[{"\[ImaginaryI]", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"FresnelS", "[", 
           FractionBox[
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
              SubscriptBox["t", "2"]}]}], 
            RowBox[{"2", " ", 
             SqrtBox["\[Pi]"], " ", 
             SqrtBox[
              FractionBox[
               RowBox[{"\[HBar]", " ", 
                SubscriptBox["t", "1"], " ", 
                SubscriptBox["t", "2"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["t", "1"], "+", 
                  SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}], "+", 
          RowBox[{"FresnelS", "[", 
           FractionBox[
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
              SubscriptBox["t", "2"]}]}], 
            RowBox[{"2", " ", 
             SqrtBox["\[Pi]"], " ", 
             SqrtBox[
              FractionBox[
               RowBox[{"\[HBar]", " ", 
                SubscriptBox["t", "1"], " ", 
                SubscriptBox["t", "2"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["t", "1"], "+", 
                  SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}]}], 
         ")"}]}]}], ")"}]}], ")"}], "/", 
   RowBox[{"(", 
    RowBox[{
     SqrtBox["2"], " ", 
     SuperscriptBox["\[Pi]", 
      RowBox[{"3", "/", "2"}]], " ", 
     SqrtBox[
      RowBox[{"\[HBar]", " ", 
       SubscriptBox["t", "1"], " ", 
       SubscriptBox["t", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["t", "1"], "+", 
         SubscriptBox["t", "2"]}], ")"}]}]]}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.551602029321262*^9, 3.55160204048833*^9}, 
   3.551602082000082*^9, {3.551602148182104*^9, 3.551602167285598*^9}, 
   3.5516025574346046`*^9, {3.5516041242279453`*^9, 3.551604152984858*^9}, 
   3.551606378423325*^9, 3.551682026163455*^9, 3.551682128112838*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pd", "=", 
  RowBox[{
   SuperscriptBox[
    RowBox[{"Abs", "[", "\[Psi]", "]"}], "2"], "//", 
   "FullSimplify"}]}]], "Input",
 CellChangeTimes->{{3.551604013209463*^9, 3.551604027994174*^9}, {
  3.551604866744185*^9, 3.5516048706734858`*^9}}],

Cell[BoxData[
 RowBox[{
  FractionBox["1", 
   RowBox[{"16", " ", 
    SuperscriptBox["\[Pi]", "3"], " ", 
    SubscriptBox["t", "1"], " ", 
    SubscriptBox["t", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["t", "1"], "+", 
      SubscriptBox["t", "2"]}], ")"}]}]], 
  RowBox[{
   SuperscriptBox["m", "3"], " ", "\[HBar]", " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"FresnelC", "[", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
            SubscriptBox["t", "1"]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
            SubscriptBox["t", "2"]}]}], 
          RowBox[{"2", " ", 
           SqrtBox["\[Pi]"], " ", 
           SqrtBox[
            FractionBox[
             RowBox[{"\[HBar]", " ", 
              SubscriptBox["t", "1"], " ", 
              SubscriptBox["t", "2"], " ", 
              RowBox[{"(", 
               RowBox[{
                SubscriptBox["t", "1"], "+", 
                SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}], "+", 
        RowBox[{"FresnelC", "[", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
            SubscriptBox["t", "1"]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
            SubscriptBox["t", "2"]}]}], 
          RowBox[{"2", " ", 
           SqrtBox["\[Pi]"], " ", 
           SqrtBox[
            FractionBox[
             RowBox[{"\[HBar]", " ", 
              SubscriptBox["t", "1"], " ", 
              SubscriptBox["t", "2"], " ", 
              RowBox[{"(", 
               RowBox[{
                SubscriptBox["t", "1"], "+", 
                SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}]}], ")"}], 
      "2"], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"FresnelS", "[", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
            SubscriptBox["t", "1"]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
            SubscriptBox["t", "2"]}]}], 
          RowBox[{"2", " ", 
           SqrtBox["\[Pi]"], " ", 
           SqrtBox[
            FractionBox[
             RowBox[{"\[HBar]", " ", 
              SubscriptBox["t", "1"], " ", 
              SubscriptBox["t", "2"], " ", 
              RowBox[{"(", 
               RowBox[{
                SubscriptBox["t", "1"], "+", 
                SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}], "+", 
        RowBox[{"FresnelS", "[", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
            SubscriptBox["t", "1"]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
            SubscriptBox["t", "2"]}]}], 
          RowBox[{"2", " ", 
           SqrtBox["\[Pi]"], " ", 
           SqrtBox[
            FractionBox[
             RowBox[{"\[HBar]", " ", 
              SubscriptBox["t", "1"], " ", 
              SubscriptBox["t", "2"], " ", 
              RowBox[{"(", 
               RowBox[{
                SubscriptBox["t", "1"], "+", 
                SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}]}], ")"}], 
      "2"]}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.5516040214370832`*^9, 3.5516040334030848`*^9}, 
   3.551604872744602*^9, 3.551606384517087*^9, 3.551682134855444*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"p", "=", 
  RowBox[{
   SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
   RowBox[{"pd", 
    RowBox[{"\[DifferentialD]", "d"}]}]}]}]], "Input",
 CellChangeTimes->{{3.551604875228746*^9, 3.5516049061298103`*^9}, {
  3.551605203108404*^9, 3.5516052121994963`*^9}}],

Cell[BoxData["$Aborted"], "Output",
 CellChangeTimes->{3.551605204944695*^9, 3.5516052423725147`*^9, 
  3.5516055408618793`*^9}]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Experimental", "Section",
 CellChangeTimes->{{3.551602585376367*^9, 3.55160258721567*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     FractionBox["1", "4"], "+", 
     FractionBox["\[ImaginaryI]", "4"]}], ")"}], 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"-", "1"}], ")"}], 
    RowBox[{"1", "/", "4"}]]}], "//", "Simplify"}]], "Input",
 CellChangeTimes->{{3.5516040875176077`*^9, 3.551604090090222*^9}, {
  3.551604121898017*^9, 3.551604122537463*^9}, {3.55168218016815*^9, 
  3.551682182274394*^9}}],

Cell[BoxData[
 FractionBox["\[ImaginaryI]", 
  RowBox[{"2", " ", 
   SqrtBox["2"]}]]], "Output",
 CellChangeTimes->{{3.5516040849639807`*^9, 3.551604090848412*^9}, 
   3.551604124338395*^9, 3.551682182810473*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"gaussianSlit", "[", "x_", "]"}], ":=", 
  RowBox[{"Exp", "[", 
   RowBox[{"-", 
    FractionBox[
     SuperscriptBox["x", "2"], 
     RowBox[{"2", 
      SuperscriptBox["b", "2"]}]]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551602986546962*^9, 3.5516030239160357`*^9}, {
  3.551603459084866*^9, 3.551603463491947*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"sharpSlit", "[", "x_", "]"}], ":=", 
  RowBox[{"Boole", "[", 
   RowBox[{
    RowBox[{"Abs", "[", "x", "]"}], "\[LessEqual]", "b"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551603043908372*^9, 3.551603059003343*^9}, {
  3.55160313355313*^9, 3.551603136157865*^9}, {3.5516031793700123`*^9, 
  3.5516031834310217`*^9}, {3.551603385680958*^9, 3.551603407471862*^9}, {
  3.5516034538058567`*^9, 3.551603457131587*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["\[Psi]", "sharp"], "=", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      RowBox[{"sharpSlit", "[", "x", "]"}], 
      SubscriptBox["k", "1"], " ", 
      SubscriptBox["k", "2"], 
      RowBox[{"\[DifferentialD]", "x"}]}]}], "/.", "toFresnel"}], "//", 
   "FullSimplify"}]}]], "Input",
 CellChangeTimes->{{3.5516030308697987`*^9, 3.55160304072469*^9}, {
  3.551603693323537*^9, 3.551603704787202*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  RowBox[{
   FractionBox["1", 
    RowBox[{"2", " ", 
     SqrtBox["\[Pi]"], " ", 
     SqrtBox[
      RowBox[{"m", " ", "\[HBar]", " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["t", "1"], "+", 
         SubscriptBox["t", "2"]}], ")"}]}]]}]], 
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", 
       SuperscriptBox["d", "2"], " ", "m"}], 
      RowBox[{
       RowBox[{"2", " ", "\[HBar]", " ", 
        SubscriptBox["t", "1"]}], "+", 
       RowBox[{"2", " ", "\[HBar]", " ", 
        SubscriptBox["t", "2"]}]}]]], " ", "m", " ", "\[HBar]", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"FresnelC", "[", 
       FractionBox[
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
          SubscriptBox["t", "1"]}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
          SubscriptBox["t", "2"]}]}], 
        RowBox[{"2", " ", 
         SqrtBox["\[Pi]"], " ", 
         SqrtBox[
          FractionBox[
           RowBox[{"\[HBar]", " ", 
            SubscriptBox["t", "1"], " ", 
            SubscriptBox["t", "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["t", "1"], "+", 
              SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}], "+", 
      RowBox[{"FresnelC", "[", 
       FractionBox[
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
          SubscriptBox["t", "1"]}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
          SubscriptBox["t", "2"]}]}], 
        RowBox[{"2", " ", 
         SqrtBox["\[Pi]"], " ", 
         SqrtBox[
          FractionBox[
           RowBox[{"\[HBar]", " ", 
            SubscriptBox["t", "1"], " ", 
            SubscriptBox["t", "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["t", "1"], "+", 
              SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}], "+", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"FresnelS", "[", 
          FractionBox[
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
             SubscriptBox["t", "1"]}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
             SubscriptBox["t", "2"]}]}], 
           RowBox[{"2", " ", 
            SqrtBox["\[Pi]"], " ", 
            SqrtBox[
             FractionBox[
              RowBox[{"\[HBar]", " ", 
               SubscriptBox["t", "1"], " ", 
               SubscriptBox["t", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["t", "1"], "+", 
                 SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}], "+", 
         RowBox[{"FresnelS", "[", 
          FractionBox[
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
             SubscriptBox["t", "1"]}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
             SubscriptBox["t", "2"]}]}], 
           RowBox[{"2", " ", 
            SqrtBox["\[Pi]"], " ", 
            SqrtBox[
             FractionBox[
              RowBox[{"\[HBar]", " ", 
               SubscriptBox["t", "1"], " ", 
               SubscriptBox["t", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["t", "1"], "+", 
                 SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}]}], 
        ")"}]}]}], ")"}]}]}]}]], "Output",
 CellChangeTimes->{3.551603467751081*^9, 3.551603729897131*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["\[Psi]", "gaussian"], "=", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      RowBox[{"gaussianSlit", "[", "x", "]"}], 
      SubscriptBox["k", "1"], " ", 
      SubscriptBox["k", "2"], 
      RowBox[{"\[DifferentialD]", "x"}]}]}], "/.", "toFresnel"}], "//", 
   "FullSimplify"}]}]], "Input",
 CellChangeTimes->{{3.551603723436315*^9, 3.551603728481104*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{
       SuperscriptBox["d", "2"], " ", "m", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"4", " ", "\[ImaginaryI]", " ", 
          SuperscriptBox["b", "2"], " ", "m"}], "-", 
         RowBox[{"\[HBar]", " ", 
          RowBox[{"(", 
           RowBox[{
            SubscriptBox["t", "1"], "+", 
            SubscriptBox["t", "2"]}], ")"}]}]}], ")"}]}], 
      RowBox[{"8", " ", "\[HBar]", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["b", "2"], " ", "m", " ", 
          SubscriptBox["t", "2"]}], "+", 
         RowBox[{
          SubscriptBox["t", "1"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             SuperscriptBox["b", "2"], " ", "m"}], "+", 
            RowBox[{"\[ImaginaryI]", " ", "\[HBar]", " ", 
             SubscriptBox["t", "2"]}]}], ")"}]}]}], ")"}]}]]], " ", "m"}], 
   RowBox[{
    SqrtBox[
     RowBox[{"2", " ", "\[Pi]"}]], " ", 
    SqrtBox[
     RowBox[{
      RowBox[{"-", 
       FractionBox[
        RowBox[{"\[ImaginaryI]", " ", "m", " ", 
         SubscriptBox["t", "2"]}], "\[HBar]"]}], "+", 
      RowBox[{
       SubscriptBox["t", "1"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          FractionBox[
           RowBox[{"\[ImaginaryI]", " ", "m"}], "\[HBar]"]}], "+", 
         FractionBox[
          SubscriptBox["t", "2"], 
          SuperscriptBox["b", "2"]]}], ")"}]}]}]]}]]}]], "Output",
 CellChangeTimes->{3.5516037629993353`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["p", "gaussian"], "=", 
  RowBox[{
   SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
   RowBox[{
    SuperscriptBox[
     RowBox[{"Abs", "[", 
      SubscriptBox["\[Psi]", "gaussian"], "]"}], "2"], 
    RowBox[{"\[DifferentialD]", "d"}]}]}]}]], "Input",
 CellChangeTimes->{{3.551603814589986*^9, 3.5516038421727047`*^9}, {
  3.551603889194075*^9, 3.551603928153885*^9}, {3.551603968305523*^9, 
  3.5516039698227367`*^9}, {3.551605513819194*^9, 3.551605528504681*^9}}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
  RowBox[{
   SuperscriptBox[
    RowBox[{"Abs", "[", 
     SubscriptBox[
      RowBox[{"-", 
       RowBox[{
        FractionBox["1", 
         RowBox[{
          SqrtBox[
           RowBox[{"2", " ", "\[Pi]"}]], " ", 
          SqrtBox[
           RowBox[{"m", " ", "\[HBar]", " ", 
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["t", "1"], "+", 
              SubscriptBox["t", "2"]}], ")"}]}]]}]], 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           FractionBox["1", "2"], "+", 
           FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"-", "1"}], ")"}], 
          RowBox[{"1", "/", "4"}]], " ", 
         SuperscriptBox["\[ExponentialE]", 
          FractionBox[
           RowBox[{"\[ImaginaryI]", " ", 
            SuperscriptBox["d", "2"], " ", "m"}], 
           RowBox[{
            RowBox[{"2", " ", "\[HBar]", " ", 
             SubscriptBox["t", "1"]}], "+", 
            RowBox[{"2", " ", "\[HBar]", " ", 
             SubscriptBox["t", "2"]}]}]]], " ", "m", " ", "\[HBar]", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"FresnelC", "[", 
            FractionBox[
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
               SubscriptBox["t", "1"]}], "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
               SubscriptBox["t", "2"]}]}], 
             RowBox[{"2", " ", 
              SqrtBox["\[Pi]"], " ", 
              SqrtBox[
               FractionBox[
                RowBox[{"\[HBar]", " ", 
                 SubscriptBox["t", "1"], " ", 
                 SubscriptBox["t", "2"], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["t", "1"], "+", 
                   SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}], "+", 
           RowBox[{"FresnelC", "[", 
            FractionBox[
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
               SubscriptBox["t", "1"]}], "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
               SubscriptBox["t", "2"]}]}], 
             RowBox[{"2", " ", 
              SqrtBox["\[Pi]"], " ", 
              SqrtBox[
               FractionBox[
                RowBox[{"\[HBar]", " ", 
                 SubscriptBox["t", "1"], " ", 
                 SubscriptBox["t", "2"], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["t", "1"], "+", 
                   SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}], "+", 
           RowBox[{"\[ImaginaryI]", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"FresnelS", "[", 
               FractionBox[
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
                  SubscriptBox["t", "1"]}], "+", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
                  SubscriptBox["t", "2"]}]}], 
                RowBox[{"2", " ", 
                 SqrtBox["\[Pi]"], " ", 
                 SqrtBox[
                  FractionBox[
                   RowBox[{"\[HBar]", " ", 
                    SubscriptBox["t", "1"], " ", 
                    SubscriptBox["t", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    SubscriptBox["t", "1"], "+", 
                    SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}], "+", 
              RowBox[{"FresnelS", "[", 
               FractionBox[
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"2", " ", "b"}], "-", "d"}], ")"}], " ", 
                  SubscriptBox["t", "1"]}], "+", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"2", " ", "b"}], "+", "d"}], ")"}], " ", 
                  SubscriptBox["t", "2"]}]}], 
                RowBox[{"2", " ", 
                 SqrtBox["\[Pi]"], " ", 
                 SqrtBox[
                  FractionBox[
                   RowBox[{"\[HBar]", " ", 
                    SubscriptBox["t", "1"], " ", 
                    SubscriptBox["t", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    SubscriptBox["t", "1"], "+", 
                    SubscriptBox["t", "2"]}], ")"}]}], "m"]]}]], "]"}]}], 
             ")"}]}]}], ")"}]}]}]}], "gaussian"], "]"}], "2"], 
   RowBox[{"\[DifferentialD]", "d"}]}]}]], "Output",
 CellChangeTimes->{{3.551603831209021*^9, 3.5516038449947844`*^9}, 
   3.5516039286975594`*^9, 3.551603970882805*^9, 3.551605892220045*^9}]
}, Open  ]]
}, Open  ]],

Cell["Old", "Section",
 CellChangeTimes->{{3.551603765208939*^9, 3.551603765470027*^9}}]
},
WindowToolbars->{},
WindowSize->{761, 683},
WindowMargins->{{Automatic, 47}, {Automatic, 0}},
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
Cell[1257, 32, 93, 1, 67, "Section"],
Cell[CellGroupData[{
Cell[1375, 37, 91, 1, 34, "Subsection"],
Cell[1469, 40, 2241, 46, 71, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[3735, 90, 1865, 54, 58, "Input",
 InitializationCell->True],
Cell[5603, 146, 1537, 47, 94, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7177, 198, 1915, 57, 58, "Input",
 InitializationCell->True],
Cell[9095, 257, 1614, 51, 81, "Output"]
}, Open  ]],
Cell[10724, 311, 867, 27, 52, "Input",
 InitializationCell->True]
}, Open  ]],
Cell[CellGroupData[{
Cell[11628, 343, 90, 1, 34, "Subsection"],
Cell[CellGroupData[{
Cell[11743, 348, 345, 9, 46, "Input"],
Cell[12091, 359, 661, 19, 75, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[12789, 383, 402, 11, 46, "Input"],
Cell[13194, 396, 659, 19, 75, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13890, 420, 198, 5, 27, "Input"],
Cell[14091, 427, 1112, 34, 91, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15240, 466, 747, 17, 46, "Input"],
Cell[15990, 485, 5222, 152, 319, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[21249, 642, 268, 7, 30, "Input"],
Cell[21520, 651, 4017, 120, 240, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[25574, 776, 294, 7, 45, "Input"],
Cell[25871, 785, 128, 2, 27, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[26060, 794, 96, 1, 67, "Section"],
Cell[CellGroupData[{
Cell[26181, 799, 445, 13, 46, "Input"],
Cell[26629, 814, 212, 5, 50, "Output"]
}, Open  ]],
Cell[26856, 822, 355, 10, 50, "Input"],
Cell[27214, 834, 450, 9, 27, "Input"],
Cell[CellGroupData[{
Cell[27689, 847, 540, 15, 45, "Input"],
Cell[28232, 864, 4163, 124, 244, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[32432, 993, 496, 14, 45, "Input"],
Cell[32931, 1009, 1634, 50, 100, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[34602, 1064, 514, 12, 45, "Input"],
Cell[35119, 1078, 5327, 141, 254, "Output"]
}, Open  ]]
}, Open  ]],
Cell[40473, 1223, 88, 1, 67, "Section"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature dw0mEhUjIVrlRDw#326CiOit *)
