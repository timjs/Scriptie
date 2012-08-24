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
NotebookDataLength[     55996,       1761]
NotebookOptionsPosition[     53501,       1657]
NotebookOutlinePosition[     53999,       1677]
CellTagsIndexPosition[     53956,       1674]
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
     RowBox[{"d", ">", "0"}], ",", 
     RowBox[{"l", ">", "0"}], ",", 
     RowBox[{"x", "\[Element]", 
      RowBox[{"Interval", "[", 
       RowBox[{
        RowBox[{"-", 
         FractionBox["l", "2"]}], ",", 
        FractionBox["l", "2"]}], "]"}]}], ",", 
     RowBox[{"m", ">", "0"}], ",", 
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
   3.55160632217702*^9}, {3.551687807006174*^9, 3.5516878088401537`*^9}, {
   3.5516879585318937`*^9, 3.551687968232277*^9}}],

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
  3.551683663626349*^9, 3.5516878611360826`*^9, 3.551688059493137*^9, 
  3.551688103625127*^9}]
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
  3.551683663676125*^9, 3.551687861191259*^9, 3.551688059543869*^9, 
  3.5516881036748943`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"k", "[", 
   RowBox[{"x2_", ",", "t2_", ",", "x1_", ",", "t1_"}], "]"}], ":=", 
  RowBox[{
   SqrtBox[
    FractionBox["m", 
     RowBox[{"2", " ", "\[Pi]", " ", "\[ImaginaryI]", " ", "\[HBar]", 
      RowBox[{"(", 
       RowBox[{"t2", "-", "t1"}], ")"}]}]]], 
   RowBox[{"Exp", "[", 
    RowBox[{
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m"}], 
      RowBox[{"2", " ", "\[HBar]"}]], 
     FractionBox[
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"x2", "-", "x1"}], ")"}], "2"], 
      RowBox[{"t2", "-", "t1"}]]}], "]"}]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.55160174717881*^9, 3.551601857628359*^9}, {
  3.551688744789473*^9, 3.551688746106933*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Simple", "Subsection",
 CellChangeTimes->{{3.55160432693056*^9, 3.55160432800808*^9}, {
  3.551688041324871*^9, 3.551688044035687*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["k", "1"], "=", 
  RowBox[{"k", "[", 
   RowBox[{"x", ",", 
    SubscriptBox["t", "1"], ",", 
    RowBox[{"-", 
     FractionBox["d", "2"]}], ",", "0"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551601876729331*^9, 3.55160190350574*^9}}],

Cell[BoxData[
 FractionBox[
  RowBox[{
   SuperscriptBox["\[ExponentialE]", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}], 
     RowBox[{"2", " ", "\[HBar]", " ", 
      SubscriptBox["t", "1"]}]]], " ", 
   SqrtBox[
    RowBox[{"-", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m"}], 
      SubscriptBox["t", "1"]]}]]}], 
  SqrtBox[
   RowBox[{"2", " ", "\[Pi]"}]]]], "Output",
 CellChangeTimes->{3.551601905242011*^9, 3.5516063456931458`*^9, 
  3.5516836703268003`*^9, 3.551687861474536*^9, 3.551688064902404*^9, 
  3.551688103972827*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["k", "2"], "=", 
  RowBox[{"k", "[", 
   RowBox[{
    FractionBox["d", "2"], ",", 
    RowBox[{
     SubscriptBox["t", "1"], "+", 
     SubscriptBox["t", "2"]}], ",", "x", ",", 
    SubscriptBox["t", "1"]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551601879353092*^9, 3.5516019323859797`*^9}}],

Cell[BoxData[
 FractionBox[
  RowBox[{
   SuperscriptBox["\[ExponentialE]", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         FractionBox["d", "2"], "-", "x"}], ")"}], "2"]}], 
     RowBox[{"2", " ", "\[HBar]", " ", 
      SubscriptBox["t", "2"]}]]], " ", 
   SqrtBox[
    RowBox[{"-", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m"}], 
      SubscriptBox["t", "2"]]}]]}], 
  SqrtBox[
   RowBox[{"2", " ", "\[Pi]"}]]]], "Output",
 CellChangeTimes->{3.551601933056032*^9, 3.551606347200609*^9, 
  3.551683671561655*^9, 3.551687862850152*^9, 3.551688065069586*^9, 
  3.55168810692185*^9}]
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
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"d", "-", 
             RowBox[{"2", " ", "x"}]}], ")"}], "2"], " ", 
          SubscriptBox["t", "1"]}], "+", 
         RowBox[{
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"d", "+", 
             RowBox[{"2", " ", "x"}]}], ")"}], "2"], " ", 
          SubscriptBox["t", "2"]}]}], ")"}]}], 
      RowBox[{"8", " ", "\[HBar]", " ", 
       SubscriptBox["t", "1"], " ", 
       SubscriptBox["t", "2"]}]]], " ", "m"}], 
   RowBox[{"2", " ", "\[Pi]", " ", 
    SqrtBox[
     RowBox[{
      SubscriptBox["t", "1"], " ", 
      SubscriptBox["t", "2"]}]]}]]}]], "Output",
 CellChangeTimes->{{3.551619762822413*^9, 3.551619775134021*^9}, 
   3.5516836729492903`*^9, 3.551687864355052*^9, 3.551688065402773*^9, 
   3.551688110114863*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]", "=", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", 
       FractionBox["l", "2"]}], 
      FractionBox["l", "2"]], 
     RowBox[{
      SubscriptBox["k", "1"], " ", 
      SubscriptBox["k", "2"], 
      RowBox[{"\[DifferentialD]", "x"}]}]}], "/.", "toFresnel"}], "//", 
   "FullSimplify"}]}]], "Input",
 CellChangeTimes->{{3.55160202393696*^9, 3.5516020643272333`*^9}, {
   3.551602150285726*^9, 3.551602150988605*^9}, 3.551602312948081*^9, {
   3.55160253204947*^9, 3.5516025680756617`*^9}, {3.551604057610325*^9, 
   3.5516041174915447`*^9}, 3.551604188889312*^9, {3.551687814034793*^9, 
   3.551687815750997*^9}, {3.551687975672679*^9, 3.55168798170334*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  RowBox[{
   RowBox[{"(", 
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
            RowBox[{"d", "+", "l"}], ")"}], " ", "m", " ", 
           SubscriptBox["t", "1"]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", "m", " ", 
           SubscriptBox["t", "2"]}]}], 
         RowBox[{"2", " ", 
          SqrtBox["\[Pi]"], " ", 
          SqrtBox[
           RowBox[{"m", " ", "\[HBar]", " ", 
            SubscriptBox["t", "1"], " ", 
            SubscriptBox["t", "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["t", "1"], "+", 
              SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}], "+", 
       RowBox[{"FresnelC", "[", 
        FractionBox[
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", "m", " ", 
           SubscriptBox["t", "1"]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"d", "+", "l"}], ")"}], " ", "m", " ", 
           SubscriptBox["t", "2"]}]}], 
         RowBox[{"2", " ", 
          SqrtBox["\[Pi]"], " ", 
          SqrtBox[
           RowBox[{"m", " ", "\[HBar]", " ", 
            SubscriptBox["t", "1"], " ", 
            SubscriptBox["t", "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["t", "1"], "+", 
              SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}], "+", 
       RowBox[{"\[ImaginaryI]", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"FresnelS", "[", 
           FractionBox[
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"d", "+", "l"}], ")"}], " ", "m", " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", "m", " ", 
              SubscriptBox["t", "2"]}]}], 
            RowBox[{"2", " ", 
             SqrtBox["\[Pi]"], " ", 
             SqrtBox[
              RowBox[{"m", " ", "\[HBar]", " ", 
               SubscriptBox["t", "1"], " ", 
               SubscriptBox["t", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["t", "1"], "+", 
                 SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}], "+", 
          RowBox[{"FresnelS", "[", 
           FractionBox[
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", "m", " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"d", "+", "l"}], ")"}], " ", "m", " ", 
              SubscriptBox["t", "2"]}]}], 
            RowBox[{"2", " ", 
             SqrtBox["\[Pi]"], " ", 
             SqrtBox[
              RowBox[{"m", " ", "\[HBar]", " ", 
               SubscriptBox["t", "1"], " ", 
               SubscriptBox["t", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["t", "1"], "+", 
                 SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}]}], ")"}]}]}], 
      ")"}]}], ")"}], "/", 
   RowBox[{"(", 
    RowBox[{
     SqrtBox[
      RowBox[{"2", " ", "\[Pi]"}]], " ", 
     SqrtBox[
      RowBox[{"m", " ", "\[HBar]", " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["t", "1"], "+", 
         SubscriptBox["t", "2"]}], ")"}]}]]}], ")"}]}]}]], "Output",
 CellChangeTimes->{3.551694097178965*^9}]
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
   RowBox[{"4", " ", "\[Pi]", " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["t", "1"], "+", 
      SubscriptBox["t", "2"]}], ")"}]}]], 
  RowBox[{"m", " ", "\[HBar]", " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"FresnelC", "[", 
         FractionBox[
          RowBox[{"m", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"d", "+", "l"}], ")"}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", 
              SubscriptBox["t", "2"]}]}], ")"}]}], 
          RowBox[{"2", " ", 
           SqrtBox["\[Pi]"], " ", 
           SqrtBox[
            RowBox[{"m", " ", "\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             SubscriptBox["t", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["t", "1"], "+", 
               SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}], "+", 
        RowBox[{"FresnelC", "[", 
         FractionBox[
          RowBox[{"m", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"d", "+", "l"}], ")"}], " ", 
              SubscriptBox["t", "2"]}]}], ")"}]}], 
          RowBox[{"2", " ", 
           SqrtBox["\[Pi]"], " ", 
           SqrtBox[
            RowBox[{"m", " ", "\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             SubscriptBox["t", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["t", "1"], "+", 
               SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}]}], ")"}], "2"], 
     "+", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"FresnelS", "[", 
         FractionBox[
          RowBox[{"m", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"d", "+", "l"}], ")"}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", 
              SubscriptBox["t", "2"]}]}], ")"}]}], 
          RowBox[{"2", " ", 
           SqrtBox["\[Pi]"], " ", 
           SqrtBox[
            RowBox[{"m", " ", "\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             SubscriptBox["t", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["t", "1"], "+", 
               SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}], "+", 
        RowBox[{"FresnelS", "[", 
         FractionBox[
          RowBox[{"m", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"d", "+", "l"}], ")"}], " ", 
              SubscriptBox["t", "2"]}]}], ")"}]}], 
          RowBox[{"2", " ", 
           SqrtBox["\[Pi]"], " ", 
           SqrtBox[
            RowBox[{"m", " ", "\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             SubscriptBox["t", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["t", "1"], "+", 
               SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}]}], ")"}], "2"]}], 
    ")"}]}]}]], "Output",
 CellChangeTimes->{{3.5516040214370832`*^9, 3.5516040334030848`*^9}, 
   3.551604872744602*^9, 3.551606384517087*^9, 3.551683704094152*^9, 
   3.551687931358577*^9, 3.551688179695634*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"\[Psi]", "/.", "toErf"}], "//", "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.551690256414995*^9, 3.551690266910861*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
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
       RowBox[{"Erfi", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            FractionBox["1", "4"], "+", 
            FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", "m", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"d", "+", "l"}], ")"}], " ", 
             SubscriptBox["t", "1"]}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", 
             SubscriptBox["t", "2"]}]}], ")"}]}], 
         SqrtBox[
          RowBox[{"m", " ", "\[HBar]", " ", 
           SubscriptBox["t", "1"], " ", 
           SubscriptBox["t", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SubscriptBox["t", "1"], "+", 
             SubscriptBox["t", "2"]}], ")"}]}]]], "]"}], "+", 
       RowBox[{"Erfi", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            FractionBox["1", "4"], "+", 
            FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", "m", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", 
             SubscriptBox["t", "1"]}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"d", "+", "l"}], ")"}], " ", 
             SubscriptBox["t", "2"]}]}], ")"}]}], 
         SqrtBox[
          RowBox[{"m", " ", "\[HBar]", " ", 
           SubscriptBox["t", "1"], " ", 
           SubscriptBox["t", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SubscriptBox["t", "1"], "+", 
             SubscriptBox["t", "2"]}], ")"}]}]]], "]"}]}], ")"}]}], ")"}], 
   "/", 
   RowBox[{"(", 
    RowBox[{"2", " ", 
     SqrtBox[
      RowBox[{"2", " ", "\[Pi]"}]], " ", 
     SqrtBox[
      RowBox[{"m", " ", "\[HBar]", " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["t", "1"], "+", 
         SubscriptBox["t", "2"]}], ")"}]}]]}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.551690260721014*^9, 3.551690269703767*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"subs", "=", 
  RowBox[{"{", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FractionBox["1", "4"], "+", 
         FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", "m", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{"d", "+", "l"}], ")"}], " ", 
          SubscriptBox["t", "1"]}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", 
          SubscriptBox["t", "2"]}]}], ")"}]}], 
      SqrtBox[
       RowBox[{"m", " ", "\[HBar]", " ", 
        SubscriptBox["t", "1"], " ", 
        SubscriptBox["t", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubscriptBox["t", "1"], "+", 
          SubscriptBox["t", "2"]}], ")"}]}]]], "\[Rule]", "up"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FractionBox["1", "4"], "+", 
         FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", "m", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", 
          SubscriptBox["t", "1"]}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"d", "+", "l"}], ")"}], " ", 
          SubscriptBox["t", "2"]}]}], ")"}]}], 
      SqrtBox[
       RowBox[{"m", " ", "\[HBar]", " ", 
        SubscriptBox["t", "1"], " ", 
        SubscriptBox["t", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubscriptBox["t", "1"], "+", 
          SubscriptBox["t", "2"]}], ")"}]}]]], "\[Rule]", "um"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{
     FractionBox[
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"d", "+", "l"}], ")"}], " ", "m", " ", 
        SubscriptBox["t", "1"]}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", "m", " ", 
        SubscriptBox["t", "2"]}]}], 
      RowBox[{"2", " ", 
       SqrtBox["\[Pi]"], " ", 
       SqrtBox[
        RowBox[{"m", " ", "\[HBar]", " ", 
         SubscriptBox["t", "1"], " ", 
         SubscriptBox["t", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           SubscriptBox["t", "1"], "+", 
           SubscriptBox["t", "2"]}], ")"}]}]]}]], "\[Rule]", "vp"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{
     FractionBox[
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", "m", " ", 
        SubscriptBox["t", "1"]}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"d", "+", "l"}], ")"}], " ", "m", " ", 
        SubscriptBox["t", "2"]}]}], 
      RowBox[{"2", " ", 
       SqrtBox["\[Pi]"], " ", 
       SqrtBox[
        RowBox[{"m", " ", "\[HBar]", " ", 
         SubscriptBox["t", "1"], " ", 
         SubscriptBox["t", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           SubscriptBox["t", "1"], "+", 
           SubscriptBox["t", "2"]}], ")"}]}]]}]], "\[Rule]", "vm"}]}], 
   "}"}]}]], "Input",
 CellChangeTimes->{{3.551692252210994*^9, 3.551692272180236*^9}, {
  3.551692351433317*^9, 3.551692387234434*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        FractionBox["1", "4"], "+", 
        FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", "m", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"d", "+", "l"}], ")"}], " ", 
         SubscriptBox["t", "1"]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", 
         SubscriptBox["t", "2"]}]}], ")"}]}], 
     SqrtBox[
      RowBox[{"m", " ", "\[HBar]", " ", 
       SubscriptBox["t", "1"], " ", 
       SubscriptBox["t", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["t", "1"], "+", 
         SubscriptBox["t", "2"]}], ")"}]}]]], "\[Rule]", "up"}], ",", 
   RowBox[{
    FractionBox[
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        FractionBox["1", "4"], "+", 
        FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", "m", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", 
         SubscriptBox["t", "1"]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"d", "+", "l"}], ")"}], " ", 
         SubscriptBox["t", "2"]}]}], ")"}]}], 
     SqrtBox[
      RowBox[{"m", " ", "\[HBar]", " ", 
       SubscriptBox["t", "1"], " ", 
       SubscriptBox["t", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["t", "1"], "+", 
         SubscriptBox["t", "2"]}], ")"}]}]]], "\[Rule]", "um"}], ",", 
   RowBox[{
    FractionBox[
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{"d", "+", "l"}], ")"}], " ", "m", " ", 
       SubscriptBox["t", "1"]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", "m", " ", 
       SubscriptBox["t", "2"]}]}], 
     RowBox[{"2", " ", 
      SqrtBox["\[Pi]"], " ", 
      SqrtBox[
       RowBox[{"m", " ", "\[HBar]", " ", 
        SubscriptBox["t", "1"], " ", 
        SubscriptBox["t", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubscriptBox["t", "1"], "+", 
          SubscriptBox["t", "2"]}], ")"}]}]]}]], "\[Rule]", "vp"}], ",", 
   RowBox[{
    FractionBox[
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "d"}], "+", "l"}], ")"}], " ", "m", " ", 
       SubscriptBox["t", "1"]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"d", "+", "l"}], ")"}], " ", "m", " ", 
       SubscriptBox["t", "2"]}]}], 
     RowBox[{"2", " ", 
      SqrtBox["\[Pi]"], " ", 
      SqrtBox[
       RowBox[{"m", " ", "\[HBar]", " ", 
        SubscriptBox["t", "1"], " ", 
        SubscriptBox["t", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubscriptBox["t", "1"], "+", 
          SubscriptBox["t", "2"]}], ")"}]}]]}]], "\[Rule]", "vm"}]}], 
  "}"}]], "Output",
 CellChangeTimes->{3.551692273033617*^9, 3.551692389394985*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{
   RowBox[{"Cos", "[", 
    RowBox[{"a", 
     RowBox[{"(", 
      RowBox[{"b", "+", 
       RowBox[{"2", "x"}]}], ")"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "\[Infinity]"}], ",", "\[Infinity]"}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.551697504574188*^9, 3.5516975386230297`*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Integrate", "::", "idiv"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Integral of \[NoBreak]\\!\\(Cos[\\(\\(a\\\\ \\(\\((b + \\(\
\\(2\\\\ x\\)\\))\\)\\)\\)\\)]\\)\[NoBreak] does not converge on \
\[NoBreak]\\!\\({\\(\\(-\[Infinity]\\)\\), \[Infinity]}\\)\[NoBreak]. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/message/Integrate/idiv\\\", \
ButtonNote -> \\\"Integrate::idiv\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{{3.551697529840496*^9, 3.551697541946748*^9}}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
  RowBox[{
   RowBox[{"Cos", "[", 
    RowBox[{"a", " ", 
     RowBox[{"(", 
      RowBox[{"b", "+", 
       RowBox[{"2", " ", "x"}]}], ")"}]}], "]"}], 
   RowBox[{"\[DifferentialD]", "x"}]}]}]], "Output",
 CellChangeTimes->{{3.551697529846326*^9, 3.55169754195229*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Out", "[", "11", "]"}], "/.", "subs"}]], "Input",
 CellChangeTimes->{{3.551692276690613*^9, 3.5516922829637957`*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{
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
      RowBox[{"Erfi", "[", "um", "]"}], "+", 
      RowBox[{"Erfi", "[", "up", "]"}]}], ")"}]}], 
   RowBox[{"2", " ", 
    SqrtBox[
     RowBox[{"2", " ", "\[Pi]"}]], " ", 
    SqrtBox[
     RowBox[{"m", " ", "\[HBar]", " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["t", "1"], "+", 
        SubscriptBox["t", "2"]}], ")"}]}]]}]]}]], "Output",
 CellChangeTimes->{3.551692283508606*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SuperscriptBox[
   RowBox[{"Abs", "[", 
    RowBox[{"Out", "[", "15", "]"}], "]"}], "2"], "//", 
  "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.5516937163751163`*^9, 3.551693727760345*^9}}],

Cell[BoxData[
 FractionBox[
  RowBox[{"m", " ", "\[HBar]", " ", 
   SuperscriptBox[
    RowBox[{"Abs", "[", 
     RowBox[{
      RowBox[{"Erfi", "[", "um", "]"}], "+", 
      RowBox[{"Erfi", "[", "up", "]"}]}], "]"}], "2"]}], 
  RowBox[{
   RowBox[{"8", " ", "\[Pi]", " ", 
    SubscriptBox["t", "1"]}], "+", 
   RowBox[{"8", " ", "\[Pi]", " ", 
    SubscriptBox["t", "2"]}]}]]], "Output",
 CellChangeTimes->{{3.551693722685349*^9, 3.551693728498679*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]", "/.", "subs"}]], "Input",
 CellChangeTimes->{{3.5516923924561367`*^9, 3.551692393972736*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  RowBox[{
   RowBox[{"(", 
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
       RowBox[{"FresnelC", "[", "vm", "]"}], "+", 
       RowBox[{"FresnelC", "[", "vp", "]"}], "+", 
       RowBox[{"\[ImaginaryI]", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"FresnelS", "[", "vm", "]"}], "+", 
          RowBox[{"FresnelS", "[", "vp", "]"}]}], ")"}]}]}], ")"}]}], ")"}], 
   "/", 
   RowBox[{"(", 
    RowBox[{
     SqrtBox[
      RowBox[{"2", " ", "\[Pi]"}]], " ", 
     SqrtBox[
      RowBox[{"m", " ", "\[HBar]", " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["t", "1"], "+", 
         SubscriptBox["t", "2"]}], ")"}]}]]}], ")"}]}]}]], "Output",
 CellChangeTimes->{3.551692394614408*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Difficult", "Subsection",
 CellChangeTimes->{{3.551688035676923*^9, 3.551688052443882*^9}, {
  3.551690251231267*^9, 3.551690252181031*^9}}],

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
     FractionBox["1", "2"], "+", 
     FractionBox["\[ImaginaryI]", "2"]}], ")"}], 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"-", "1"}], ")"}], 
    RowBox[{"1", "/", "4"}]]}], "//", "Simplify"}]], "Input",
 CellChangeTimes->{{3.5516040875176077`*^9, 3.551604090090222*^9}, {
  3.551604121898017*^9, 3.551604122537463*^9}}],

Cell[BoxData[
 FractionBox["\[ImaginaryI]", 
  SqrtBox["2"]]], "Output",
 CellChangeTimes->{{3.5516040849639807`*^9, 3.551604090848412*^9}, 
   3.551604124338395*^9}]
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
WindowMargins->{{Automatic, 35}, {Automatic, 0}},
CellContext->Notebook,
Magnification:>FEPrivate`If[
  FEPrivate`Equal[FEPrivate`$VersionNumber, 6.], 1.25, 1.25 Inherited],
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
Cell[1257, 32, 93, 1, 83, "Section"],
Cell[CellGroupData[{
Cell[1375, 37, 91, 1, 42, "Subsection"],
Cell[1469, 40, 1963, 38, 89, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[3457, 82, 1865, 54, 148, "Input",
 InitializationCell->True],
Cell[5325, 138, 1606, 48, 111, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[6968, 191, 1915, 57, 148, "Input",
 InitializationCell->True],
Cell[8886, 250, 1685, 52, 96, "Output"]
}, Open  ]],
Cell[10586, 305, 742, 22, 66, "Input",
 InitializationCell->True]
}, Open  ]],
Cell[CellGroupData[{
Cell[11365, 332, 141, 2, 42, "Subsection"],
Cell[CellGroupData[{
Cell[11531, 338, 276, 8, 56, "Input"],
Cell[11810, 348, 686, 21, 105, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[12533, 374, 333, 10, 56, "Input"],
Cell[12869, 386, 681, 21, 105, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13587, 412, 198, 5, 33, "Input"],
Cell[13788, 419, 1065, 31, 86, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14890, 455, 743, 18, 69, "Input"],
Cell[15636, 475, 4321, 126, 242, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[19994, 606, 268, 7, 37, "Input"],
Cell[20265, 615, 4002, 117, 222, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[24304, 737, 160, 3, 33, "Input"],
Cell[24467, 742, 2746, 83, 145, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[27250, 830, 3313, 105, 284, "Input"],
Cell[30566, 937, 3032, 100, 183, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[33635, 1042, 383, 12, 33, "Input"],
Cell[34021, 1056, 606, 11, 26, "Message"],
Cell[34630, 1069, 380, 11, 54, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[35047, 1085, 152, 3, 33, "Input"],
Cell[35202, 1090, 949, 30, 81, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[36188, 1125, 220, 6, 37, "Input"],
Cell[36411, 1133, 455, 13, 60, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[36903, 1151, 126, 2, 33, "Input"],
Cell[37032, 1155, 1352, 42, 181, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[38433, 1203, 146, 2, 42, "Subsection"],
Cell[CellGroupData[{
Cell[38604, 1209, 294, 7, 55, "Input"],
Cell[38901, 1218, 128, 2, 33, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[39090, 1227, 96, 1, 83, "Section"],
Cell[CellGroupData[{
Cell[39211, 1232, 397, 12, 56, "Input"],
Cell[39611, 1246, 166, 4, 59, "Output"]
}, Open  ]],
Cell[39792, 1253, 355, 10, 61, "Input"],
Cell[40150, 1265, 450, 9, 33, "Input"],
Cell[CellGroupData[{
Cell[40625, 1278, 540, 15, 54, "Input"],
Cell[41168, 1295, 4163, 124, 404, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[45368, 1424, 496, 14, 56, "Input"],
Cell[45867, 1440, 1634, 50, 125, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[47538, 1495, 514, 12, 56, "Input"],
Cell[48055, 1509, 5327, 141, 317, "Output"]
}, Open  ]]
}, Open  ]],
Cell[53409, 1654, 88, 1, 83, "Section"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature RuDc22esE1kFCDgQzOcv6#DJ *)
