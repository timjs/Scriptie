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
NotebookDataLength[     79937,       2541]
NotebookOptionsPosition[     75820,       2380]
NotebookOutlinePosition[     76217,       2398]
CellTagsIndexPosition[     76174,       2395]
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
     RowBox[{"y", ">", "0"}], ",", 
     RowBox[{"r", ">", "0"}], ",", 
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
   3.55160632217702*^9}, {3.551680402624653*^9, 3.5516804045754337`*^9}, {
   3.551952510265438*^9, 3.5519525347610397`*^9}, 3.552024472634705*^9}],

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
  3.5516819584792757`*^9, 3.551950563800683*^9, 3.552024481963689*^9}]
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
  3.551681958545562*^9, 3.551950563873856*^9, 3.552024483119133*^9}]
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
     FractionBox["r", "2"]}], ",", "y", ",", "0"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551601876729331*^9, 3.55160190350574*^9}, {
   3.551681945154105*^9, 3.551681952658113*^9}, {3.551952548816619*^9, 
   3.551952553823699*^9}, 3.552024472741035*^9}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            FractionBox["r", "2"], "+", "x"}], ")"}], "2"], "+", 
         SuperscriptBox["y", "2"]}], ")"}]}], 
      RowBox[{"2", " ", "\[HBar]", " ", 
       SubscriptBox["t", "1"]}]]], " ", "m"}], 
   RowBox[{"2", " ", "\[Pi]", " ", 
    SubscriptBox["t", "1"]}]]}]], "Output",
 CellChangeTimes->{
  3.551601905242011*^9, 3.5516063456931458`*^9, 3.551681958774869*^9, 
   3.551952486565185*^9, {3.551952562371728*^9, 3.5519525680736437`*^9}, 
   3.552024495589744*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["k", "2"], "=", 
  RowBox[{"k", "[", 
   RowBox[{
    FractionBox["r", "2"], ",", "y", ",", 
    RowBox[{
     SubscriptBox["t", "1"], "+", 
     SubscriptBox["t", "2"]}], ",", "x", ",", "0", ",", 
    SubscriptBox["t", "1"]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551601879353092*^9, 3.5516019323859797`*^9}, {
   3.551681971645268*^9, 3.551681979066972*^9}, {3.551952578472967*^9, 
   3.5519525804321737`*^9}, 3.552024472870832*^9}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            FractionBox["r", "2"], "-", "x"}], ")"}], "2"], "+", 
         SuperscriptBox["y", "2"]}], ")"}]}], 
      RowBox[{"2", " ", "\[HBar]", " ", 
       SubscriptBox["t", "2"]}]]], " ", "m"}], 
   RowBox[{"2", " ", "\[Pi]", " ", 
    SubscriptBox["t", "2"]}]]}]], "Output",
 CellChangeTimes->{3.551601933056032*^9, 3.551606347200609*^9, 
  3.551681979951499*^9, 3.551952487819116*^9, 3.5519525877253847`*^9, 
  3.552024495771254*^9}]
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
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              FractionBox["r", "2"], "+", "x"}], ")"}], "2"], "+", 
           SuperscriptBox["y", "2"]}], 
          SubscriptBox["t", "1"]], "+", 
         FractionBox[
          RowBox[{
           RowBox[{
            FractionBox["1", "4"], " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"r", "-", 
               RowBox[{"2", " ", "x"}]}], ")"}], "2"]}], "+", 
           SuperscriptBox["y", "2"]}], 
          SubscriptBox["t", "2"]]}], ")"}]}], 
      RowBox[{"2", " ", "\[HBar]"}]]], " ", 
    SuperscriptBox["m", "2"]}], 
   RowBox[{"4", " ", 
    SuperscriptBox["\[Pi]", "2"], " ", 
    SubscriptBox["t", "1"], " ", 
    SubscriptBox["t", "2"]}]]}]], "Output",
 CellChangeTimes->{{3.551619762822413*^9, 3.551619775134021*^9}, 
   3.551681991337193*^9, 3.551952592765058*^9, 3.55202449640232*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Manual", "Subsection",
 CellChangeTimes->{{3.552021397570496*^9, 3.552021400664977*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Phi]", "=", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", "m"}], 
   RowBox[{"2", "\[HBar]", " ", 
    SubscriptBox["t", "1"], 
    SubscriptBox["t", "2"]}]]}]], "Input",
 CellChangeTimes->{{3.551952978014909*^9, 3.551953025795299*^9}}],

Cell[BoxData[
 FractionBox[
  RowBox[{"\[ImaginaryI]", " ", "m"}], 
  RowBox[{"2", " ", "\[HBar]", " ", 
   SubscriptBox["t", "1"], " ", 
   SubscriptBox["t", "2"]}]]], "Output",
 CellChangeTimes->{3.5519532153240747`*^9, 3.552024500000004*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Alpha]", "=", 
  RowBox[{"\[Phi]", " ", 
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["t", "1"], "+", 
     SubscriptBox["t", "2"]}], ")"}]}]}]], "Input",
 CellChangeTimes->{{3.551952963209861*^9, 3.551952963994018*^9}, {
  3.5519530312027187`*^9, 3.5519530461151733`*^9}}],

Cell[BoxData[
 FractionBox[
  RowBox[{"\[ImaginaryI]", " ", "m", " ", 
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["t", "1"], "+", 
     SubscriptBox["t", "2"]}], ")"}]}], 
  RowBox[{"2", " ", "\[HBar]", " ", 
   SubscriptBox["t", "1"], " ", 
   SubscriptBox["t", "2"]}]]], "Output",
 CellChangeTimes->{3.551953216560027*^9, 3.552024500148529*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Beta]", "=", 
  RowBox[{"\[Phi]", " ", "r", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", 
      SubscriptBox["t", "1"]}], "+", 
     SubscriptBox["t", "2"]}], ")"}]}]}]], "Input",
 CellChangeTimes->{{3.551952965843*^9, 3.551952966993795*^9}, {
  3.551953058224318*^9, 3.551953071019421*^9}}],

Cell[BoxData[
 FractionBox[
  RowBox[{"\[ImaginaryI]", " ", "m", " ", "r", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", 
      SubscriptBox["t", "1"]}], "+", 
     SubscriptBox["t", "2"]}], ")"}]}], 
  RowBox[{"2", " ", "\[HBar]", " ", 
   SubscriptBox["t", "1"], " ", 
   SubscriptBox["t", "2"]}]]], "Output",
 CellChangeTimes->{3.551953217733287*^9, 3.552024500202115*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Gamma]", "=", 
  RowBox[{"\[Phi]", " ", 
   RowBox[{"(", 
    RowBox[{
     FractionBox[
      SuperscriptBox["r", "2"], "4"], "+", 
     SuperscriptBox["y", "2"]}], ")"}], 
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["t", "1"], "+", 
     SubscriptBox["t", "2"]}], ")"}]}]}]], "Input",
 CellChangeTimes->{{3.5519529688690557`*^9, 3.551952973426855*^9}, {
   3.55195305983759*^9, 3.551953089507929*^9}, 3.552024473043316*^9}],

Cell[BoxData[
 FractionBox[
  RowBox[{"\[ImaginaryI]", " ", "m", " ", 
   RowBox[{"(", 
    RowBox[{
     FractionBox[
      SuperscriptBox["r", "2"], "4"], "+", 
     SuperscriptBox["y", "2"]}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["t", "1"], "+", 
     SubscriptBox["t", "2"]}], ")"}]}], 
  RowBox[{"2", " ", "\[HBar]", " ", 
   SubscriptBox["t", "1"], " ", 
   SubscriptBox["t", "2"]}]]], "Output",
 CellChangeTimes->{3.551953218820652*^9, 3.552024500251218*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"f", "=", 
  RowBox[{
   RowBox[{"-", 
    SuperscriptBox[
     RowBox[{"(", 
      FractionBox["m", 
       RowBox[{"2", "\[Pi]", " ", "\[HBar]"}]], ")"}], "2"]}], 
   FractionBox["1", 
    RowBox[{
     SubscriptBox["t", "1"], " ", 
     SubscriptBox["t", "2"]}]], 
   FractionBox[
    RowBox[{"1", "-", "\[ImaginaryI]"}], "2"], 
   SqrtBox[
    FractionBox["\[Pi]", "\[Alpha]"]]}]}]], "Input",
 CellChangeTimes->{{3.552023801241637*^9, 3.552023845455145*^9}, {
  3.55202486759478*^9, 3.5520248689586697`*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      FractionBox["1", "4"], "-", 
      FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", 
    SuperscriptBox["m", "2"], " ", 
    SqrtBox[
     RowBox[{"-", 
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", "\[HBar]", " ", 
        SubscriptBox["t", "1"], " ", 
        SubscriptBox["t", "2"]}], 
       RowBox[{"m", " ", 
        RowBox[{"(", 
         RowBox[{
          SubscriptBox["t", "1"], "+", 
          SubscriptBox["t", "2"]}], ")"}]}]]}]]}], 
   RowBox[{
    SqrtBox["2"], " ", 
    SuperscriptBox["\[Pi]", 
     RowBox[{"3", "/", "2"}]], " ", 
    SuperscriptBox["\[HBar]", "2"], " ", 
    SubscriptBox["t", "1"], " ", 
    SubscriptBox["t", "2"]}]]}]], "Output",
 CellChangeTimes->{
  3.552023803803268*^9, {3.552023841705554*^9, 3.552023846205906*^9}, 
   3.552024500492016*^9, 3.552024869638657*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{"1", "-", "I"}], ")"}], "^", "2"}]], "Input",
 CellChangeTimes->{{3.552024999941248*^9, 3.5520250046079884`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "2"}], " ", "\[ImaginaryI]"}]], "Output",
 CellChangeTimes->{3.5520250055079536`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"e", "=", 
  RowBox[{"\[Gamma]", "-", 
   FractionBox[
    SuperscriptBox["\[Beta]", "2"], 
    RowBox[{"4", "\[Alpha]"}]]}]}]], "Input",
 CellChangeTimes->{{3.5520238062171917`*^9, 3.552023813008637*^9}, 
   3.5520238534977283`*^9, {3.55202426184826*^9, 3.552024262432806*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   FractionBox[
    RowBox[{"\[ImaginaryI]", " ", "m", " ", 
     SuperscriptBox["r", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         SubscriptBox["t", "1"]}], "+", 
        SubscriptBox["t", "2"]}], ")"}], "2"]}], 
    RowBox[{"8", " ", "\[HBar]", " ", 
     SubscriptBox["t", "1"], " ", 
     SubscriptBox["t", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["t", "1"], "+", 
       SubscriptBox["t", "2"]}], ")"}]}]]}], "+", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", "m", " ", 
    RowBox[{"(", 
     RowBox[{
      FractionBox[
       SuperscriptBox["r", "2"], "4"], "+", 
      SuperscriptBox["y", "2"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["t", "1"], "+", 
      SubscriptBox["t", "2"]}], ")"}]}], 
   RowBox[{"2", " ", "\[HBar]", " ", 
    SubscriptBox["t", "1"], " ", 
    SubscriptBox["t", "2"]}]]}]], "Output",
 CellChangeTimes->{3.552024500537015*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"u", "=", 
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"1", "+", "\[ImaginaryI]"}], "2"], " ", 
    FractionBox[
     RowBox[{"\[Beta]", "+", 
      RowBox[{"2", "\[Alpha]", " ", "x"}]}], 
     SqrtBox[
      RowBox[{"\[Pi]", " ", "\[Alpha]"}]]]}], "//", 
   "FullSimplify"}]}]], "Input",
 CellChangeTimes->{{3.5519531599548798`*^9, 3.551953223668189*^9}}],

Cell[BoxData[
 FractionBox[
  RowBox[{"\[ImaginaryI]", " ", "m", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", 
       RowBox[{"(", 
        RowBox[{"r", "-", 
         RowBox[{"2", " ", "x"}]}], ")"}]}], " ", 
      SubscriptBox["t", "1"]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"r", "+", 
        RowBox[{"2", " ", "x"}]}], ")"}], " ", 
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
       SubscriptBox["t", "2"]}], ")"}]}]]}]]], "Output",
 CellChangeTimes->{{3.5519532198066587`*^9, 3.551953224553713*^9}, 
   3.5520238571762877`*^9, 3.5520245009866877`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"int", "=", 
  RowBox[{"f", " ", 
   RowBox[{"Exp", "[", "e", "]"}], 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"FresnelC", "[", "u", "]"}], "-", 
     RowBox[{"\[ImaginaryI]", " ", 
      RowBox[{"FresnelS", "[", "u", "]"}]}]}], ")"}]}]}]], "Input",
 CellChangeTimes->{{3.551953108173874*^9, 3.551953158223126*^9}, {
  3.551953255581257*^9, 3.551953261348522*^9}, {3.551953531069394*^9, 
  3.5519535479617767`*^9}, {3.552021466118218*^9, 3.5520214857190638`*^9}, {
  3.55202383161202*^9, 3.552023864973091*^9}, {3.552026623204311*^9, 
  3.5520266342279587`*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SqrtBox["2"], " ", 
     SuperscriptBox["\[Pi]", 
      RowBox[{"3", "/", "2"}]], " ", 
     SuperscriptBox["\[HBar]", "2"], " ", 
     SubscriptBox["t", "1"], " ", 
     SubscriptBox["t", "2"]}]], 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      FractionBox["1", "4"], "-", 
      FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", 
    SuperscriptBox["\[ExponentialE]", 
     RowBox[{
      RowBox[{"-", 
       FractionBox[
        RowBox[{"\[ImaginaryI]", " ", "m", " ", 
         SuperscriptBox["r", "2"], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             SubscriptBox["t", "1"]}], "+", 
            SubscriptBox["t", "2"]}], ")"}], "2"]}], 
        RowBox[{"8", " ", "\[HBar]", " ", 
         SubscriptBox["t", "1"], " ", 
         SubscriptBox["t", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           SubscriptBox["t", "1"], "+", 
           SubscriptBox["t", "2"]}], ")"}]}]]}], "+", 
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", "m", " ", 
        RowBox[{"(", 
         RowBox[{
          FractionBox[
           SuperscriptBox["r", "2"], "4"], "+", 
          SuperscriptBox["y", "2"]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          SubscriptBox["t", "1"], "+", 
          SubscriptBox["t", "2"]}], ")"}]}], 
       RowBox[{"2", " ", "\[HBar]", " ", 
        SubscriptBox["t", "1"], " ", 
        SubscriptBox["t", "2"]}]]}]], " ", 
    SuperscriptBox["m", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"FresnelC", "[", 
        FractionBox[
         RowBox[{"m", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"-", 
              RowBox[{"(", 
               RowBox[{"r", "-", 
                RowBox[{"2", " ", "x"}]}], ")"}]}], " ", 
             SubscriptBox["t", "1"]}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"r", "+", 
               RowBox[{"2", " ", "x"}]}], ")"}], " ", 
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
              SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}]}], "-", 
      RowBox[{"FresnelS", "[", 
       FractionBox[
        RowBox[{"m", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             RowBox[{"(", 
              RowBox[{"r", "-", 
               RowBox[{"2", " ", "x"}]}], ")"}]}], " ", 
            SubscriptBox["t", "1"]}], "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"r", "+", 
              RowBox[{"2", " ", "x"}]}], ")"}], " ", 
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
             SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}]}], ")"}], " ", 
    SqrtBox[
     RowBox[{"-", 
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", "\[HBar]", " ", 
        SubscriptBox["t", "1"], " ", 
        SubscriptBox["t", "2"]}], 
       RowBox[{"m", " ", 
        RowBox[{"(", 
         RowBox[{
          SubscriptBox["t", "1"], "+", 
          SubscriptBox["t", "2"]}], ")"}]}]]}]]}]}]}]], "Output",
 CellChangeTimes->{{3.551953252164381*^9, 3.5519532634636717`*^9}, 
   3.551953549042313*^9, 3.552021490573935*^9, 3.552023865428446*^9, 
   3.55202450104016*^9, 3.552026636024589*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"defint", "=", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{"\[CapitalPsi]", "/.", 
      RowBox[{"x", "\[Rule]", 
       RowBox[{"l", "/", "2"}]}]}], ")"}], "-", 
    RowBox[{"(", 
     RowBox[{"\[CapitalPsi]", "/.", 
      RowBox[{"x", "\[Rule]", 
       RowBox[{
        RowBox[{"-", "l"}], "/", "2"}]}]}], ")"}]}], "//", 
   "FullSimplify"}]}]], "Input",
 CellChangeTimes->{{3.551953555528676*^9, 3.551953590673996*^9}, {
  3.552026640589198*^9, 3.552026641989265*^9}}],

Cell[BoxData[
 RowBox[{
  FractionBox["1", 
   RowBox[{"4", " ", 
    SuperscriptBox["\[Pi]", 
     RowBox[{"3", "/", "2"}]], " ", 
    SqrtBox[
     RowBox[{
      SuperscriptBox["\[HBar]", "3"], " ", 
      SubscriptBox["t", "1"], " ", 
      SubscriptBox["t", "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["t", "1"], "+", 
        SubscriptBox["t", "2"]}], ")"}]}]]}]], 
  RowBox[{
   SuperscriptBox["\[ExponentialE]", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SuperscriptBox["y", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           FractionBox["1", 
            SubscriptBox["t", "1"]], "+", 
           FractionBox["1", 
            SubscriptBox["t", "2"]]}], ")"}]}], "+", 
        FractionBox[
         SuperscriptBox["r", "2"], 
         RowBox[{
          SubscriptBox["t", "1"], "+", 
          SubscriptBox["t", "2"]}]]}], ")"}]}], 
     RowBox[{"2", " ", "\[HBar]"}]]], " ", 
   SuperscriptBox["m", 
    RowBox[{"3", "/", "2"}]], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"FresnelC", "[", 
      FractionBox[
       RowBox[{"m", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", 
            RowBox[{"(", 
             RowBox[{"l", "+", "r"}], ")"}]}], " ", 
           SubscriptBox["t", "1"]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "l"}], "+", "r"}], ")"}], " ", 
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
            SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}], "-", 
     RowBox[{"FresnelC", "[", 
      FractionBox[
       RowBox[{"m", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"l", "-", "r"}], ")"}], " ", 
           SubscriptBox["t", "1"]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"l", "+", "r"}], ")"}], " ", 
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
     RowBox[{"\[ImaginaryI]", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"FresnelS", "[", 
         FractionBox[
          RowBox[{"m", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", 
               RowBox[{"(", 
                RowBox[{"l", "+", "r"}], ")"}]}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "l"}], "+", "r"}], ")"}], " ", 
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
               SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}], "-", 
        RowBox[{"FresnelS", "[", 
         FractionBox[
          RowBox[{"m", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"l", "-", "r"}], ")"}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"l", "+", "r"}], ")"}], " ", 
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
               SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}]}], ")"}]}]}], 
    ")"}]}]}]], "Output",
 CellChangeTimes->{{3.551953584180092*^9, 3.551953593439599*^9}, 
   3.552021497565712*^9, 3.552024506091749*^9, 3.552026642556224*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"prob", "=", 
  RowBox[{
   SuperscriptBox[
    RowBox[{"Abs", "[", "defint", "]"}], "2"], "//", 
   "FullSimplify"}]}]], "Input",
 CellChangeTimes->{{3.552026644307025*^9, 3.552026658604581*^9}}],

Cell[BoxData[
 RowBox[{
  FractionBox["1", 
   RowBox[{"16", " ", 
    SuperscriptBox["\[Pi]", "3"], " ", 
    SuperscriptBox["\[HBar]", "3"], " ", 
    SubscriptBox["t", "1"], " ", 
    SubscriptBox["t", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["t", "1"], "+", 
      SubscriptBox["t", "2"]}], ")"}]}]], 
  RowBox[{
   SuperscriptBox["m", "3"], " ", 
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
              RowBox[{"-", 
               RowBox[{"(", 
                RowBox[{"l", "+", "r"}], ")"}]}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "l"}], "+", "r"}], ")"}], " ", 
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
               SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}], "-", 
        RowBox[{"FresnelC", "[", 
         FractionBox[
          RowBox[{"m", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"l", "-", "r"}], ")"}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"l", "+", "r"}], ")"}], " ", 
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
              RowBox[{"-", 
               RowBox[{"(", 
                RowBox[{"l", "+", "r"}], ")"}]}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "l"}], "+", "r"}], ")"}], " ", 
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
               SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}], "-", 
        RowBox[{"FresnelS", "[", 
         FractionBox[
          RowBox[{"m", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{"l", "-", "r"}], ")"}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"l", "+", "r"}], ")"}], " ", 
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
 CellChangeTimes->{{3.5520266521276827`*^9, 3.5520266671879663`*^9}}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Auto", "Subsection",
 CellChangeTimes->{{3.552021408577978*^9, 3.5520214090341873`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]", "=", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{
       RowBox[{"-", "l"}], "/", "2"}], 
      RowBox[{"l", "/", "2"}]], 
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
   3.551682113767642*^9, 3.551682115172903*^9}, {3.551952601512602*^9, 
   3.551952609376212*^9}}],

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
           SuperscriptBox["h", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             FractionBox["1", 
              SubscriptBox["t", "1"]], "+", 
             FractionBox["1", 
              SubscriptBox["t", "2"]]}], ")"}]}], "+", 
          FractionBox[
           SuperscriptBox["r", "2"], 
           RowBox[{
            SubscriptBox["t", "1"], "+", 
            SubscriptBox["t", "2"]}]]}], ")"}]}], 
       RowBox[{"2", " ", "\[HBar]"}]]], " ", 
     SuperscriptBox["m", "2"], " ", "\[HBar]", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"FresnelC", "[", 
        FractionBox[
         RowBox[{"m", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"l", "+", "r"}], ")"}], " ", 
             SubscriptBox["t", "1"]}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"l", "-", "r"}], ")"}], " ", 
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
              RowBox[{"l", "-", "r"}], ")"}], " ", 
             SubscriptBox["t", "1"]}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"l", "+", "r"}], ")"}], " ", 
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
       RowBox[{"\[ImaginaryI]", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"FresnelS", "[", 
           FractionBox[
            RowBox[{"m", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"l", "+", "r"}], ")"}], " ", 
                SubscriptBox["t", "1"]}], "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"l", "-", "r"}], ")"}], " ", 
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
                 RowBox[{"l", "-", "r"}], ")"}], " ", 
                SubscriptBox["t", "1"]}], "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"l", "+", "r"}], ")"}], " ", 
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
                 SubscriptBox["t", "2"]}], ")"}]}]]}]], "]"}]}], ")"}]}]}], 
      ")"}]}], ")"}], "/", 
   RowBox[{"(", 
    RowBox[{
     SqrtBox["2"], " ", 
     SuperscriptBox["\[Pi]", 
      RowBox[{"3", "/", "2"}]], " ", 
     SqrtBox[
      RowBox[{"m", " ", "\[HBar]", " ", 
       SubscriptBox["t", "1"], " ", 
       SubscriptBox["t", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["t", "1"], "+", 
         SubscriptBox["t", "2"]}], ")"}]}]]}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.551602029321262*^9, 3.55160204048833*^9}, 
   3.551602082000082*^9, {3.551602148182104*^9, 3.551602167285598*^9}, 
   3.5516025574346046`*^9, {3.5516041242279453`*^9, 3.551604152984858*^9}, 
   3.551606378423325*^9, 3.551682026163455*^9, 3.551682128112838*^9, 
   3.551952706709137*^9}]
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

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
  RowBox[{
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
         "2"]}], ")"}]}]}], 
   RowBox[{"\[DifferentialD]", "d"}]}]}]], "Output",
 CellChangeTimes->{3.551605204944695*^9, 3.5516052423725147`*^9, 
  3.5516055408618793`*^9, 3.5516826907497807`*^9}]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Experimental", "Section",
 CellChangeTimes->{{3.551602585376367*^9, 3.55160258721567*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  FractionBox["1", 
   RowBox[{"2", "\[Pi]"}]], 
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
   RowBox[{
    RowBox[{"Exp", "[", 
     RowBox[{"\[ImaginaryI]", " ", "x", " ", "t"}], "]"}], 
    RowBox[{"\[DifferentialD]", "t"}]}]}]}]], "Input",
 CellChangeTimes->{{3.552038875589938*^9, 3.5520389136439247`*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Integrate", "::", "idiv"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Integral of \[NoBreak]\\!\\(\[ExponentialE]\\^\\(\
\[ImaginaryI]\\\\ t\\\\ x\\)\\)\[NoBreak] does not converge on \
\[NoBreak]\\!\\({\\(\\(-\[Infinity]\\)\\), \[Infinity]}\\)\[NoBreak]. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/message/Integrate/idiv\\\", \
ButtonNote -> \\\"Integrate::idiv\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.552038917227578*^9}],

Cell[BoxData[
 FractionBox[
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
   RowBox[{
    SuperscriptBox["\[ExponentialE]", 
     RowBox[{"\[ImaginaryI]", " ", "t", " ", "x"}]], 
    RowBox[{"\[DifferentialD]", "t"}]}]}], 
  RowBox[{"2", " ", "\[Pi]"}]]], "Output",
 CellChangeTimes->{3.5520389172303534`*^9}]
}, Open  ]],

Cell[BoxData["DiracDelta"], "Input",
 CellChangeTimes->{{3.552038932293542*^9, 3.552038935593954*^9}}],

Cell[BoxData[
 RowBox[{"\[Gamma]", "-", 
  FractionBox[
   SuperscriptBox["\[Beta]", "2"], 
   RowBox[{"4", "\[Alpha]"}]]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"-", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m", " ", 
      SuperscriptBox["r", "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["t", "1"]}], "+", 
         SubscriptBox["t", "2"]}], ")"}], "2"]}], 
     RowBox[{"8", " ", "\[HBar]", " ", 
      SubscriptBox["t", "1"], " ", 
      SubscriptBox["t", "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["t", "1"], "+", 
        SubscriptBox["t", "2"]}], ")"}]}]]}], "+", 
   FractionBox[
    RowBox[{"\[ImaginaryI]", " ", "m", " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["y", "2"], "+", 
       FractionBox[
        SuperscriptBox["r", "2"], "4"]}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["t", "1"], "+", 
       SubscriptBox["t", "2"]}], ")"}]}], 
    RowBox[{"2", " ", "\[HBar]", " ", 
     SubscriptBox["t", "1"], " ", 
     SubscriptBox["t", "2"]}]]}], "//", "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.552023749373782*^9, 3.5520237606324387`*^9}, 
   3.552024472572541*^9}],

Cell[BoxData[
 FractionBox[
  RowBox[{"\[ImaginaryI]", " ", "m", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SuperscriptBox["h", "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        FractionBox["1", 
         SubscriptBox["t", "1"]], "+", 
        FractionBox["1", 
         SubscriptBox["t", "2"]]}], ")"}]}], "+", 
     FractionBox[
      SuperscriptBox["r", "2"], 
      RowBox[{
       SubscriptBox["t", "1"], "+", 
       SubscriptBox["t", "2"]}]]}], ")"}]}], 
  RowBox[{"2", " ", "\[HBar]"}]]], "Output",
 CellChangeTimes->{{3.5520237525117683`*^9, 3.552023761482445*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{"Expand", "[", 
    RowBox[{
     RowBox[{
      SuperscriptBox["y", "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        FractionBox["1", 
         SubscriptBox["t", "1"]], "+", 
        FractionBox["1", 
         SubscriptBox["t", "2"]]}], ")"}]}], "+", 
     FractionBox[
      SuperscriptBox["r", "2"], 
      RowBox[{
       SubscriptBox["t", "1"], "+", 
       SubscriptBox["t", "2"]}]]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     SubscriptBox["t", "1"], ",", 
     SubscriptBox["t", "2"]}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.552019975283112*^9, 3.552019989596533*^9}, {
   3.552020060352148*^9, 3.5520200701573687`*^9}, 3.552024472593987*^9}],

Cell[BoxData[
 RowBox[{
  FractionBox[
   SuperscriptBox["h", "2"], 
   SubscriptBox["t", "1"]], "+", 
  FractionBox[
   SuperscriptBox["h", "2"], 
   SubscriptBox["t", "2"]], "+", 
  FractionBox[
   SuperscriptBox["r", "2"], 
   RowBox[{
    SubscriptBox["t", "1"], "+", 
    SubscriptBox["t", "2"]}]]}]], "Output",
 CellChangeTimes->{{3.55201999521871*^9, 3.552020001412524*^9}, 
   3.5520200707361813`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   FractionBox[
    RowBox[{"1", "+", "\[ImaginaryI]"}], "2"], 
   SqrtBox[
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m"}], 
     RowBox[{"2", " ", "\[HBar]", " ", 
      SubscriptBox["t", "1"], " ", 
      SubscriptBox["t", "2"]}]]]}], "//", "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.551952139532991*^9, 3.551952175492776*^9}}],

Cell[BoxData[
 FractionBox[
  RowBox[{"\[ImaginaryI]", " ", "m"}], 
  RowBox[{"2", " ", 
   SqrtBox[
    RowBox[{"m", " ", "\[HBar]", " ", 
     SubscriptBox["t", "1"], " ", 
     SubscriptBox["t", "2"]}]]}]]], "Output",
 CellChangeTimes->{{3.5519521686670227`*^9, 3.551952176242614*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 SqrtBox["\[ImaginaryI]"]], "Input",
 CellChangeTimes->{{3.551951974281514*^9, 3.551951977991681*^9}}],

Cell[BoxData[
 SuperscriptBox[
  RowBox[{"(", 
   RowBox[{"-", "1"}], ")"}], 
  RowBox[{"1", "/", "4"}]]], "Output",
 CellChangeTimes->{3.5519519789124327`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    FractionBox[
     SqrtBox["\[Pi]"], 
     RowBox[{"2", 
      SqrtBox["\[Alpha]"]}]], 
    RowBox[{"Exp", "[", 
     RowBox[{"\[Gamma]", "-", 
      FractionBox[
       SuperscriptBox["\[Beta]", "2"], 
       RowBox[{"4", "\[Alpha]"}]]}], "]"}], " ", 
    RowBox[{"Erfi", "[", 
     FractionBox[
      RowBox[{"\[Beta]", "+", 
       RowBox[{"2", "\[Alpha]", " ", "z"}]}], 
      RowBox[{"2", 
       SqrtBox["\[Alpha]"]}]], "]"}]}], "/.", "toFresnel"}], "//", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.551950490797986*^9, 3.551950588788684*^9}, {
  3.551950631561517*^9, 3.551950632022917*^9}}],

Cell[BoxData[
 FractionBox[
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     FractionBox["1", "2"], "-", 
     FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", 
   SuperscriptBox["\[ExponentialE]", 
    RowBox[{
     RowBox[{"-", 
      FractionBox[
       SuperscriptBox["\[Beta]", "2"], 
       RowBox[{"4", " ", "\[Alpha]"}]]}], "+", "\[Gamma]"}]], " ", 
   SqrtBox["\[Pi]"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"FresnelC", "[", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          FractionBox["1", "2"], "+", 
          FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", " ", "z", " ", "\[Alpha]"}], "+", "\[Beta]"}], ")"}]}], 
       RowBox[{
        SqrtBox["\[Pi]"], " ", 
        SqrtBox["\[Alpha]"]}]], "]"}], "-", 
     RowBox[{"\[ImaginaryI]", " ", 
      RowBox[{"FresnelS", "[", 
       FractionBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           FractionBox["1", "2"], "+", 
           FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"2", " ", "z", " ", "\[Alpha]"}], "+", "\[Beta]"}], 
          ")"}]}], 
        RowBox[{
         SqrtBox["\[Pi]"], " ", 
         SqrtBox["\[Alpha]"]}]], "]"}]}]}], ")"}]}], 
  SqrtBox["\[Alpha]"]]], "Output",
 CellChangeTimes->{{3.551950564213326*^9, 3.5519505903250504`*^9}, 
   3.5519506325268507`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{
    FractionBox["1", "2"], "-", 
    FractionBox["\[ImaginaryI]", "2"]}], ")"}], "//", 
  "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.5519506447095127`*^9, 3.551950650061151*^9}}],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "2"], "-", 
  FractionBox["\[ImaginaryI]", "2"]}]], "Output",
 CellChangeTimes->{{3.551950642955874*^9, 3.551950650646497*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     FractionBox["1", "4"], "+", 
     FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"-", "1"}], ")"}], 
    RowBox[{"3", "/", "4"}]]}], "//", "Simplify"}]], "Input",
 CellChangeTimes->{{3.552021538581758*^9, 3.5520215426801033`*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox["1", 
   RowBox[{"2", " ", 
    SqrtBox["2"]}]]}]], "Output",
 CellChangeTimes->{3.552021543397932*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     FractionBox["1", "4"], "-", 
     FractionBox["\[ImaginaryI]", "4"]}], ")"}], 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"-", "1"}], ")"}], 
    RowBox[{"1", "/", "4"}]]}], "//", "Simplify"}]], "Input",
 CellChangeTimes->{{3.5516040875176077`*^9, 3.551604090090222*^9}, {
  3.551604121898017*^9, 3.551604122537463*^9}, {3.55168218016815*^9, 
  3.551682182274394*^9}, {3.552021557280695*^9, 3.552021558928446*^9}}],

Cell[BoxData[
 FractionBox["1", 
  RowBox[{"2", " ", 
   SqrtBox["2"]}]]], "Output",
 CellChangeTimes->{{3.5516040849639807`*^9, 3.551604090848412*^9}, 
   3.551604124338395*^9, 3.551682182810473*^9, 3.5520215598737373`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"(", 
  RowBox[{
   FractionBox["1", "4"], "-", 
   FractionBox["\[ImaginaryI]", "4"]}], ")"}]], "Input"],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "4"], "-", 
  FractionBox["\[ImaginaryI]", "4"]}]], "Output",
 CellChangeTimes->{3.552025042531065*^9}]
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
  RowBox[{"syarpSlit", "[", "x_", "]"}], ":=", 
  RowBox[{"Boole", "[", 
   RowBox[{
    RowBox[{"Abs", "[", "x", "]"}], "\[LessEqual]", "b"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551603043908372*^9, 3.551603059003343*^9}, {
   3.55160313355313*^9, 3.551603136157865*^9}, {3.5516031793700123`*^9, 
   3.5516031834310217`*^9}, {3.551603385680958*^9, 3.551603407471862*^9}, {
   3.5516034538058567`*^9, 3.551603457131587*^9}, 3.552024472607339*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["\[Psi]", "syarp"], "=", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      RowBox[{"syarpSlit", "[", "x", "]"}], 
      SubscriptBox["k", "1"], " ", 
      SubscriptBox["k", "2"], 
      RowBox[{"\[DifferentialD]", "x"}]}]}], "/.", "toFresnel"}], "//", 
   "FullSimplify"}]}]], "Input",
 CellChangeTimes->{{3.5516030308697987`*^9, 3.55160304072469*^9}, {
  3.551603693323537*^9, 3.551603704787202*^9}, {3.552024472609934*^9, 
  3.552024472611865*^9}}],

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
WindowMargins->{{Automatic, 10}, {Automatic, 0}},
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
Cell[1469, 40, 2021, 39, 46, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[3515, 83, 1865, 54, 58, "Input",
 InitializationCell->True],
Cell[5383, 139, 1581, 47, 94, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7001, 191, 1915, 57, 58, "Input",
 InitializationCell->True],
Cell[8919, 250, 1658, 51, 81, "Output"]
}, Open  ]],
Cell[10592, 304, 867, 27, 52, "Input",
 InitializationCell->True]
}, Open  ]],
Cell[CellGroupData[{
Cell[11496, 336, 90, 1, 34, "Subsection"],
Cell[CellGroupData[{
Cell[11611, 341, 418, 10, 44, "Input"],
Cell[12032, 353, 761, 21, 72, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[12830, 379, 477, 12, 44, "Input"],
Cell[13310, 393, 730, 20, 72, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14077, 418, 198, 5, 27, "Input"],
Cell[14278, 425, 1155, 34, 89, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[15482, 465, 94, 1, 34, "Subsection"],
Cell[CellGroupData[{
Cell[15601, 470, 265, 7, 49, "Input"],
Cell[15869, 479, 244, 6, 49, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16150, 490, 302, 8, 27, "Input"],
Cell[16455, 500, 351, 10, 49, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16843, 515, 321, 9, 27, "Input"],
Cell[17167, 526, 383, 11, 49, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17587, 542, 455, 13, 52, "Input"],
Cell[18045, 557, 489, 15, 63, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18571, 577, 535, 17, 54, "Input"],
Cell[19109, 596, 911, 29, 75, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20057, 630, 164, 4, 27, "Input"],
Cell[20224, 636, 124, 3, 27, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20385, 644, 301, 7, 50, "Input"],
Cell[20689, 653, 1008, 33, 63, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[21734, 691, 388, 12, 52, "Input"],
Cell[22125, 705, 840, 27, 56, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[23002, 737, 587, 13, 27, "Input"],
Cell[23592, 752, 3943, 118, 192, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[27572, 875, 506, 15, 27, "Input"],
Cell[28081, 892, 4579, 140, 194, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[32697, 1037, 219, 6, 30, "Input"],
Cell[32919, 1045, 4030, 120, 168, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[36998, 1171, 94, 1, 34, "Subsection"],
Cell[CellGroupData[{
Cell[37117, 1176, 852, 20, 46, "Input"],
Cell[37972, 1198, 5158, 148, 259, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[43167, 1351, 268, 7, 30, "Input"],
Cell[43438, 1360, 4017, 120, 240, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[47492, 1485, 294, 7, 45, "Input"],
Cell[47789, 1494, 4351, 124, 240, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[52201, 1625, 96, 1, 67, "Section"],
Cell[CellGroupData[{
Cell[52322, 1630, 391, 11, 48, "Input"],
Cell[52716, 1643, 571, 11, 25, "Message"],
Cell[53290, 1656, 362, 10, 53, "Output"]
}, Open  ]],
Cell[53667, 1669, 102, 1, 27, "Input"],
Cell[53772, 1672, 134, 4, 50, "Input"],
Cell[53909, 1678, 1125, 35, 63, "Input"],
Cell[55037, 1715, 593, 19, 61, "Output"],
Cell[CellGroupData[{
Cell[55655, 1738, 735, 23, 53, "Input"],
Cell[56393, 1763, 409, 14, 52, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[56839, 1782, 382, 11, 66, "Input"],
Cell[57224, 1795, 288, 8, 56, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[57549, 1808, 116, 2, 33, "Input"],
Cell[57668, 1812, 160, 5, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[57865, 1822, 653, 21, 56, "Input"],
Cell[58521, 1845, 1446, 46, 77, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[60004, 1896, 237, 7, 46, "Input"],
Cell[60244, 1905, 170, 4, 46, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[60451, 1914, 353, 11, 46, "Input"],
Cell[60807, 1927, 146, 5, 50, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[60990, 1937, 491, 13, 46, "Input"],
Cell[61484, 1952, 224, 5, 50, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[61745, 1962, 128, 4, 46, "Input"],
Cell[61876, 1968, 146, 4, 46, "Output"]
}, Open  ]],
Cell[62037, 1975, 355, 10, 50, "Input"],
Cell[62395, 1987, 475, 9, 27, "Input"],
Cell[CellGroupData[{
Cell[62895, 2000, 589, 16, 45, "Input"],
Cell[63487, 2018, 4163, 124, 244, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[67687, 2147, 496, 14, 45, "Input"],
Cell[68186, 2163, 1634, 50, 100, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[69857, 2218, 514, 12, 45, "Input"],
Cell[70374, 2232, 5327, 141, 254, "Output"]
}, Open  ]]
}, Open  ]],
Cell[75728, 2377, 88, 1, 67, "Section"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature oupbj4u8E3AM2D1synH@7V1X *)
