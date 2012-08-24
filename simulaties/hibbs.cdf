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
NotebookDataLength[    135274,       3398]
NotebookOptionsPosition[    132671,       3288]
NotebookOutlinePosition[    133048,       3305]
CellTagsIndexPosition[    133005,       3302]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Diffraction Through a Slit", "Title",
 CellChangeTimes->{{3.551534430234386*^9, 3.551534440824087*^9}}],

Cell["Hibbs & Feynman", "Subtitle",
 CellChangeTimes->{{3.551534453441029*^9, 3.551534461352312*^9}}],

Cell[CellGroupData[{

Cell["Transformations", "Section",
 CellChangeTimes->{{3.55159384279914*^9, 3.551593845163562*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"trans", "=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{
     RowBox[{"Erf", "[", "z_", "]"}], "->", 
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
     RowBox[{"Erfi", "[", "z_", "]"}], "->", 
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
 CellChangeTimes->{{3.551593753614284*^9, 3.551593810788485*^9}, {
  3.551593884127419*^9, 3.5515938892511263`*^9}, {3.551593944110471*^9, 
  3.551593962642502*^9}}],

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
 CellChangeTimes->{3.551593811388772*^9, 3.551593889990694*^9, 
  3.551593963337317*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Input", "Section",
 CellChangeTimes->{{3.55159385255866*^9, 3.551593853155671*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"$Assumptions", "=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"b", ">", "0"}], ",", 
    RowBox[{
     SubscriptBox["x", "0"], ">", "0"}], ",", 
    RowBox[{"x", ">", "0"}], ",", 
    RowBox[{"y", "\[Element]", "Reals"}], ",", 
    RowBox[{"\[HBar]", ">", "0"}], ",", 
    RowBox[{"m", ">", "0"}]}], "}"}]}]], "Input",
 CellChangeTimes->{{3.551538945000194*^9, 3.551538959567582*^9}, {
  3.551538996257161*^9, 3.5515390531392508`*^9}, {3.5515391430298357`*^9, 
  3.5515391448299627`*^9}, {3.551539243463632*^9, 3.551539247875576*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"b", ">", "0"}], ",", 
   RowBox[{
    SubscriptBox["x", "0"], ">", "0"}], ",", 
   RowBox[{"x", ">", "0"}], ",", 
   RowBox[{"y", "\[Element]", "Reals"}], ",", 
   RowBox[{"\[HBar]", ">", "0"}], ",", 
   RowBox[{"m", ">", "0"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.5515391256408052`*^9, 3.551539147843197*^9}, 
   3.5515392522602*^9, 3.5515402838374557`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["k", "1"], "=", 
  RowBox[{
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox[
      RowBox[{"2", " ", "\[Pi]", " ", "\[ImaginaryI]", " ", "\[HBar]", " ", 
       SubscriptBox["t", "1"]}], "m"], ")"}], 
    RowBox[{"-", 
     FractionBox["1", "2"]}]], 
   RowBox[{"Exp", "[", 
    RowBox[{
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m"}], 
      RowBox[{"2", " ", "\[HBar]", " ", 
       SubscriptBox["t", "1"]}]], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["x", "0"], "+", "y"}], ")"}], "2"]}], "]"}]}]}]], "Input",\

 CellChangeTimes->{{3.551534567692157*^9, 3.551534586158037*^9}, {
  3.551534639341687*^9, 3.551534666982778*^9}, {3.551534782927498*^9, 
  3.551534783197999*^9}, {3.551534842262969*^9, 3.551534847543182*^9}}],

Cell[BoxData[
 FractionBox[
  SuperscriptBox["\[ExponentialE]", 
   FractionBox[
    RowBox[{"\[ImaginaryI]", " ", "m", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"y", "+", 
        SubscriptBox["x", "0"]}], ")"}], "2"]}], 
    RowBox[{"2", " ", "\[HBar]", " ", 
     SubscriptBox["t", "1"]}]]], 
  RowBox[{
   SqrtBox[
    RowBox[{"2", " ", "\[Pi]"}]], " ", 
   SqrtBox[
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "\[HBar]", " ", 
      SubscriptBox["t", "1"]}], "m"]]}]]], "Output",
 CellChangeTimes->{3.551538856764764*^9, 3.551539127559236*^9, 
  3.5515402847908373`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["k", "2"], "=", 
  RowBox[{
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox[
      RowBox[{"2", " ", "\[Pi]", " ", "\[ImaginaryI]", " ", "\[HBar]", " ", 
       SubscriptBox["t", "2"]}], "m"], ")"}], 
    RowBox[{"-", 
     FractionBox["1", "2"]}]], 
   RowBox[{"Exp", "[", 
    RowBox[{
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m"}], 
      RowBox[{"2", " ", "\[HBar]"}]], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"x", "-", "y"}], ")"}], "2"]}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.551534629077635*^9, 3.5515346545896177`*^9}, {
  3.551534832135249*^9, 3.551534838479707*^9}, {3.5515349082455997`*^9, 
  3.551534910349193*^9}, {3.551540220639546*^9, 3.5515402624487762`*^9}}],

Cell[BoxData[
 FractionBox[
  SuperscriptBox["\[ExponentialE]", 
   FractionBox[
    RowBox[{"\[ImaginaryI]", " ", "m", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"x", "-", "y"}], ")"}], "2"]}], 
    RowBox[{"2", " ", "\[HBar]"}]]], 
  RowBox[{
   SqrtBox[
    RowBox[{"2", " ", "\[Pi]"}]], " ", 
   SqrtBox[
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "\[HBar]", " ", 
      SubscriptBox["t", "2"]}], "m"]]}]]], "Output",
 CellChangeTimes->{3.55153886139285*^9, 3.55153912866271*^9, 
  3.5515402862967453`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["k", "t"], "=", 
  RowBox[{
   SubscriptBox["k", "1"], " ", 
   SubscriptBox["k", "2"]}]}]], "Input",
 CellChangeTimes->{{3.5515352520646152`*^9, 3.551535270834043*^9}, {
  3.55153886920413*^9, 3.551538884747731*^9}, {3.551539130918647*^9, 
  3.5515391326778593`*^9}}],

Cell[BoxData[
 FractionBox[
  SuperscriptBox["\[ExponentialE]", 
   RowBox[{
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"x", "-", "y"}], ")"}], "2"]}], 
     RowBox[{"2", " ", "\[HBar]"}]], "+", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"y", "+", 
         SubscriptBox["x", "0"]}], ")"}], "2"]}], 
     RowBox[{"2", " ", "\[HBar]", " ", 
      SubscriptBox["t", "1"]}]]}]], 
  RowBox[{"2", " ", "\[Pi]", " ", 
   SqrtBox[
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "\[HBar]", " ", 
      SubscriptBox["t", "1"]}], "m"]], " ", 
   SqrtBox[
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "\[HBar]", " ", 
      SubscriptBox["t", "2"]}], "m"]]}]]], "Output",
 CellChangeTimes->{{3.551538862919084*^9, 3.5515388856924353`*^9}, 
   3.551539133304175*^9, 3.5515402881065283`*^9, {3.551591737630665*^9, 
   3.55159174191255*^9}, 3.551593658824832*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"-", "b"}], "b"], 
  RowBox[{
   SubscriptBox["k", "t"], 
   RowBox[{"\[DifferentialD]", "y"}]}]}]], "Input",
 CellChangeTimes->{{3.551534470064703*^9, 3.5515345843268423`*^9}, {
  3.551534706112687*^9, 3.551534720313466*^9}, {3.551535280209712*^9, 
  3.551535282890376*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"x", "+", 
          SubscriptBox["x", "0"]}], ")"}], "2"]}], 
      RowBox[{"2", " ", "\[HBar]", " ", 
       RowBox[{"(", 
        RowBox[{"1", "+", 
         SubscriptBox["t", "1"]}], ")"}]}]]], " ", "m", " ", 
    SqrtBox[
     FractionBox["\[HBar]", "m"]], " ", 
    SubscriptBox["t", "1"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"b", " ", 
       RowBox[{"Erf", "[", 
        FractionBox[
         SqrtBox[
          RowBox[{"-", 
           FractionBox[
            RowBox[{"\[ImaginaryI]", " ", "m", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"b", "+", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"b", "+", "x"}], ")"}], " ", 
                 SubscriptBox["t", "1"]}], "-", 
                SubscriptBox["x", "0"]}], ")"}], "2"]}], 
            RowBox[{"\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               SubscriptBox["t", "1"]}], ")"}]}]]}]], 
         SqrtBox["2"]], "]"}], " ", 
       SqrtBox[
        RowBox[{"-", 
         FractionBox[
          RowBox[{"\[ImaginaryI]", " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"b", "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"b", "+", "x"}], ")"}], " ", 
               SubscriptBox["t", "1"]}], "-", 
              SubscriptBox["x", "0"]}], ")"}], "2"]}], 
          RowBox[{
           SubscriptBox["t", "1"], " ", 
           RowBox[{"(", 
            RowBox[{"1", "+", 
             SubscriptBox["t", "1"]}], ")"}]}]]}]]}], "+", 
      RowBox[{
       RowBox[{"Erf", "[", 
        FractionBox[
         SqrtBox[
          RowBox[{"-", 
           FractionBox[
            RowBox[{"\[ImaginaryI]", " ", "m", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"b", "+", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"b", "+", "x"}], ")"}], " ", 
                 SubscriptBox["t", "1"]}], "-", 
                SubscriptBox["x", "0"]}], ")"}], "2"]}], 
            RowBox[{"\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               SubscriptBox["t", "1"]}], ")"}]}]]}]], 
         SqrtBox["2"]], "]"}], " ", 
       SqrtBox[
        RowBox[{"-", 
         FractionBox[
          RowBox[{"\[ImaginaryI]", " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"b", "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"b", "+", "x"}], ")"}], " ", 
               SubscriptBox["t", "1"]}], "-", 
              SubscriptBox["x", "0"]}], ")"}], "2"]}], 
          RowBox[{
           SubscriptBox["t", "1"], " ", 
           RowBox[{"(", 
            RowBox[{"1", "+", 
             SubscriptBox["t", "1"]}], ")"}]}]]}]], " ", 
       SubscriptBox["x", "0"]}], "+", 
      RowBox[{"b", " ", 
       RowBox[{"Erf", "[", 
        FractionBox[
         SqrtBox[
          RowBox[{"-", 
           FractionBox[
            RowBox[{"\[ImaginaryI]", " ", "m", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"b", "+", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"b", "-", "x"}], ")"}], " ", 
                 SubscriptBox["t", "1"]}], "+", 
                SubscriptBox["x", "0"]}], ")"}], "2"]}], 
            RowBox[{"\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               SubscriptBox["t", "1"]}], ")"}]}]]}]], 
         SqrtBox["2"]], "]"}], " ", 
       SqrtBox[
        RowBox[{"-", 
         FractionBox[
          RowBox[{"\[ImaginaryI]", " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"b", "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"b", "-", "x"}], ")"}], " ", 
               SubscriptBox["t", "1"]}], "+", 
              SubscriptBox["x", "0"]}], ")"}], "2"]}], 
          RowBox[{
           SubscriptBox["t", "1"], " ", 
           RowBox[{"(", 
            RowBox[{"1", "+", 
             SubscriptBox["t", "1"]}], ")"}]}]]}]]}], "-", 
      RowBox[{
       RowBox[{"Erf", "[", 
        FractionBox[
         SqrtBox[
          RowBox[{"-", 
           FractionBox[
            RowBox[{"\[ImaginaryI]", " ", "m", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"b", "+", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"b", "-", "x"}], ")"}], " ", 
                 SubscriptBox["t", "1"]}], "+", 
                SubscriptBox["x", "0"]}], ")"}], "2"]}], 
            RowBox[{"\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               SubscriptBox["t", "1"]}], ")"}]}]]}]], 
         SqrtBox["2"]], "]"}], " ", 
       SubscriptBox["x", "0"], " ", 
       SqrtBox[
        RowBox[{"-", 
         FractionBox[
          RowBox[{"\[ImaginaryI]", " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"b", "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"b", "-", "x"}], ")"}], " ", 
               SubscriptBox["t", "1"]}], "+", 
              SubscriptBox["x", "0"]}], ")"}], "2"]}], 
          RowBox[{
           SubscriptBox["t", "1"], " ", 
           RowBox[{"(", 
            RowBox[{"1", "+", 
             SubscriptBox["t", "1"]}], ")"}]}]]}]]}], "+", 
      RowBox[{
       SubscriptBox["t", "1"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{"b", "-", "x"}], ")"}], " ", 
          RowBox[{"Erf", "[", 
           FractionBox[
            SqrtBox[
             RowBox[{"-", 
              FractionBox[
               RowBox[{"\[ImaginaryI]", " ", "m", " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"b", "+", 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"b", "+", "x"}], ")"}], " ", 
                    SubscriptBox["t", "1"]}], "-", 
                   SubscriptBox["x", "0"]}], ")"}], "2"]}], 
               RowBox[{"\[HBar]", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  SubscriptBox["t", "1"]}], ")"}]}]]}]], 
            SqrtBox["2"]], "]"}], " ", 
          SqrtBox[
           RowBox[{"-", 
            FractionBox[
             RowBox[{"\[ImaginaryI]", " ", 
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{"b", "+", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"b", "+", "x"}], ")"}], " ", 
                  SubscriptBox["t", "1"]}], "-", 
                 SubscriptBox["x", "0"]}], ")"}], "2"]}], 
             RowBox[{
              SubscriptBox["t", "1"], " ", 
              RowBox[{"(", 
               RowBox[{"1", "+", 
                SubscriptBox["t", "1"]}], ")"}]}]]}]]}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"b", "+", "x"}], ")"}], " ", 
          RowBox[{"Erf", "[", 
           FractionBox[
            SqrtBox[
             RowBox[{"-", 
              FractionBox[
               RowBox[{"\[ImaginaryI]", " ", "m", " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"b", "+", 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"b", "-", "x"}], ")"}], " ", 
                    SubscriptBox["t", "1"]}], "+", 
                   SubscriptBox["x", "0"]}], ")"}], "2"]}], 
               RowBox[{"\[HBar]", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  SubscriptBox["t", "1"]}], ")"}]}]]}]], 
            SqrtBox["2"]], "]"}], " ", 
          SqrtBox[
           RowBox[{"-", 
            FractionBox[
             RowBox[{"\[ImaginaryI]", " ", 
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{"b", "+", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"b", "-", "x"}], ")"}], " ", 
                  SubscriptBox["t", "1"]}], "+", 
                 SubscriptBox["x", "0"]}], ")"}], "2"]}], 
             RowBox[{
              SubscriptBox["t", "1"], " ", 
              RowBox[{"(", 
               RowBox[{"1", "+", 
                SubscriptBox["t", "1"]}], ")"}]}]]}]]}]}], ")"}]}]}], ")"}]}],
    ")"}], "/", 
  RowBox[{"(", 
   RowBox[{"2", " ", 
    SqrtBox[
     RowBox[{"2", " ", "\[Pi]"}]], " ", "\[HBar]", " ", 
    SqrtBox[
     RowBox[{"\[ImaginaryI]", " ", 
      SubscriptBox["t", "1"]}]], " ", 
    SqrtBox[
     RowBox[{"\[ImaginaryI]", " ", 
      SubscriptBox["t", "2"]}]], " ", 
    RowBox[{"(", 
     RowBox[{"b", "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"b", "+", "x"}], ")"}], " ", 
       SubscriptBox["t", "1"]}], "-", 
      SubscriptBox["x", "0"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{"b", "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"b", "-", "x"}], ")"}], " ", 
       SubscriptBox["t", "1"]}], "+", 
      SubscriptBox["x", "0"]}], ")"}]}], ")"}]}]], "Output",
 CellChangeTimes->{3.551538922410824*^9, 3.551538959748754*^9, 
  3.551539146473589*^9, 3.551539208056011*^9, 3.5515392887191257`*^9, 
  3.551540320541706*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
  RowBox[{
   SubscriptBox["k", "t"], 
   RowBox[{"\[DifferentialD]", "y"}]}]}]], "Input",
 CellChangeTimes->{{3.551594029775016*^9, 3.551594034890388*^9}}],

Cell[BoxData[
 RowBox[{"ConditionalExpression", "[", 
  RowBox[{
   FractionBox[
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"x", "+", 
          SubscriptBox["x", "0"]}], ")"}], "2"]}], 
      RowBox[{"2", " ", "\[HBar]", " ", 
       RowBox[{"(", 
        RowBox[{"1", "+", 
         SubscriptBox["t", "1"]}], ")"}]}]]], 
    RowBox[{
     SqrtBox[
      RowBox[{"2", " ", "\[Pi]"}]], " ", 
     SqrtBox[
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", "\[HBar]", " ", 
        SubscriptBox["t", "1"]}], "m"]], " ", 
     SqrtBox[
      RowBox[{"-", 
       FractionBox[
        RowBox[{"\[ImaginaryI]", " ", "m", " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SubscriptBox["t", "1"]}], ")"}]}], 
        RowBox[{"\[HBar]", " ", 
         SubscriptBox["t", "1"]}]]}]], " ", 
     SqrtBox[
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", "\[HBar]", " ", 
        SubscriptBox["t", "2"]}], "m"]]}]], ",", 
   RowBox[{
    RowBox[{"Im", "[", 
     FractionBox[
      RowBox[{"m", " ", 
       RowBox[{"(", 
        RowBox[{"1", "+", 
         SubscriptBox["t", "1"]}], ")"}]}], 
      RowBox[{"\[HBar]", " ", 
       SubscriptBox["t", "1"]}]], "]"}], ">", "0"}]}], "]"}]], "Output",
 CellChangeTimes->{3.551594072357359*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Calculations", "Section",
 CellChangeTimes->{{3.5515938645491047`*^9, 3.551593867883751*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Out", "[", "5", "]"}], "//", "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.551539337312336*^9, 3.551539344649754*^9}, {
  3.551540330669186*^9, 3.551540331587308*^9}}],

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
      RowBox[{"\[ImaginaryI]", " ", "m", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"x", "+", 
          SubscriptBox["x", "0"]}], ")"}], "2"]}], 
      RowBox[{"2", " ", "\[HBar]", " ", 
       RowBox[{"(", 
        RowBox[{"1", "+", 
         SubscriptBox["t", "1"]}], ")"}]}]]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Erfi", "[", 
       FractionBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           FractionBox["1", "2"], "+", 
           FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", "m", " ", 
         RowBox[{"(", 
          RowBox[{"b", "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"b", "+", "x"}], ")"}], " ", 
            SubscriptBox["t", "1"]}], "-", 
           SubscriptBox["x", "0"]}], ")"}]}], 
        SqrtBox[
         RowBox[{"m", " ", "\[HBar]", " ", 
          SubscriptBox["t", "1"], " ", 
          RowBox[{"(", 
           RowBox[{"1", "+", 
            SubscriptBox["t", "1"]}], ")"}]}]]], "]"}], "+", 
      RowBox[{"Erfi", "[", 
       FractionBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           FractionBox["1", "2"], "+", 
           FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", "m", " ", 
         RowBox[{"(", 
          RowBox[{"b", "+", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"b", "-", "x"}], ")"}], " ", 
            SubscriptBox["t", "1"]}], "+", 
           SubscriptBox["x", "0"]}], ")"}]}], 
        SqrtBox[
         RowBox[{"m", " ", "\[HBar]", " ", 
          SubscriptBox["t", "1"], " ", 
          RowBox[{"(", 
           RowBox[{"1", "+", 
            SubscriptBox["t", "1"]}], ")"}]}]]], "]"}]}], ")"}], " ", 
    SqrtBox[
     RowBox[{"\[ImaginaryI]", " ", "m", " ", "\[HBar]", " ", 
      SubscriptBox["t", "1"]}]]}], 
   RowBox[{"2", " ", 
    SqrtBox[
     RowBox[{"2", " ", "\[Pi]"}]], " ", "\[HBar]", " ", 
    SqrtBox[
     RowBox[{
      SubscriptBox["t", "1"], " ", 
      RowBox[{"(", 
       RowBox[{"1", "+", 
        SubscriptBox["t", "1"]}], ")"}]}]], " ", 
    SqrtBox[
     RowBox[{"\[ImaginaryI]", " ", 
      SubscriptBox["t", "2"]}]]}]]}]], "Output",
 CellChangeTimes->{3.551539433488*^9, 3.551540415453124*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Out", "[", "6", "]"}], "/.", "trans"}]], "Input",
 CellChangeTimes->{{3.551593826008287*^9, 3.551593828045871*^9}, {
  3.5515938949849663`*^9, 3.5515938984383297`*^9}}],

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
       RowBox[{"\[ImaginaryI]", " ", "m", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "+", 
           SubscriptBox["x", "0"]}], ")"}], "2"]}], 
       RowBox[{"2", " ", "\[HBar]", " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SubscriptBox["t", "1"]}], ")"}]}]]], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", "\[ImaginaryI]"}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[ImaginaryI]", " ", 
           RowBox[{"FresnelC", "[", 
            FractionBox[
             RowBox[{"m", " ", 
              RowBox[{"(", 
               RowBox[{"b", "+", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"b", "+", "x"}], ")"}], " ", 
                 SubscriptBox["t", "1"]}], "-", 
                SubscriptBox["x", "0"]}], ")"}]}], 
             RowBox[{
              SqrtBox["\[Pi]"], " ", 
              SqrtBox[
               RowBox[{"m", " ", "\[HBar]", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}]}], "-", 
          RowBox[{"FresnelS", "[", 
           FractionBox[
            RowBox[{"m", " ", 
             RowBox[{"(", 
              RowBox[{"b", "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"b", "+", "x"}], ")"}], " ", 
                SubscriptBox["t", "1"]}], "-", 
               SubscriptBox["x", "0"]}], ")"}]}], 
            RowBox[{
             SqrtBox["\[Pi]"], " ", 
             SqrtBox[
              RowBox[{"m", " ", "\[HBar]", " ", 
               SubscriptBox["t", "1"], " ", 
               RowBox[{"(", 
                RowBox[{"1", "+", 
                 SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}]}], ")"}]}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", "\[ImaginaryI]"}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[ImaginaryI]", " ", 
           RowBox[{"FresnelC", "[", 
            FractionBox[
             RowBox[{"m", " ", 
              RowBox[{"(", 
               RowBox[{"b", "+", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"b", "-", "x"}], ")"}], " ", 
                 SubscriptBox["t", "1"]}], "+", 
                SubscriptBox["x", "0"]}], ")"}]}], 
             RowBox[{
              SqrtBox["\[Pi]"], " ", 
              SqrtBox[
               RowBox[{"m", " ", "\[HBar]", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}]}], "-", 
          RowBox[{"FresnelS", "[", 
           FractionBox[
            RowBox[{"m", " ", 
             RowBox[{"(", 
              RowBox[{"b", "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"b", "-", "x"}], ")"}], " ", 
                SubscriptBox["t", "1"]}], "+", 
               SubscriptBox["x", "0"]}], ")"}]}], 
            RowBox[{
             SqrtBox["\[Pi]"], " ", 
             SqrtBox[
              RowBox[{"m", " ", "\[HBar]", " ", 
               SubscriptBox["t", "1"], " ", 
               RowBox[{"(", 
                RowBox[{"1", "+", 
                 SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}]}], ")"}]}]}], 
      ")"}], " ", 
     SqrtBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", "\[HBar]", " ", 
       SubscriptBox["t", "1"]}]]}], ")"}], "/", 
   RowBox[{"(", 
    RowBox[{"2", " ", 
     SqrtBox[
      RowBox[{"2", " ", "\[Pi]"}]], " ", "\[HBar]", " ", 
     SqrtBox[
      RowBox[{
       SubscriptBox["t", "1"], " ", 
       RowBox[{"(", 
        RowBox[{"1", "+", 
         SubscriptBox["t", "1"]}], ")"}]}]], " ", 
     SqrtBox[
      RowBox[{"\[ImaginaryI]", " ", 
       SubscriptBox["t", "2"]}]]}], ")"}]}]}]], "Output",
 CellChangeTimes->{3.55159389895122*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Out", "[", "26", "]"}], "//", "Simplify"}]], "Input",
 CellChangeTimes->{{3.551593908384585*^9, 3.551593912446563*^9}}],

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
       RowBox[{"\[ImaginaryI]", " ", "m", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "+", 
           SubscriptBox["x", "0"]}], ")"}], "2"]}], 
       RowBox[{"2", " ", "\[HBar]", " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SubscriptBox["t", "1"]}], ")"}]}]]], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"FresnelC", "[", 
        FractionBox[
         RowBox[{"m", " ", 
          RowBox[{"(", 
           RowBox[{"b", "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"b", "+", "x"}], ")"}], " ", 
             SubscriptBox["t", "1"]}], "-", 
            SubscriptBox["x", "0"]}], ")"}]}], 
         RowBox[{
          SqrtBox["\[Pi]"], " ", 
          SqrtBox[
           RowBox[{"m", " ", "\[HBar]", " ", 
            SubscriptBox["t", "1"], " ", 
            RowBox[{"(", 
             RowBox[{"1", "+", 
              SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}], "+", 
       RowBox[{"FresnelC", "[", 
        FractionBox[
         RowBox[{"m", " ", 
          RowBox[{"(", 
           RowBox[{"b", "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"b", "-", "x"}], ")"}], " ", 
             SubscriptBox["t", "1"]}], "+", 
            SubscriptBox["x", "0"]}], ")"}]}], 
         RowBox[{
          SqrtBox["\[Pi]"], " ", 
          SqrtBox[
           RowBox[{"m", " ", "\[HBar]", " ", 
            SubscriptBox["t", "1"], " ", 
            RowBox[{"(", 
             RowBox[{"1", "+", 
              SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}], "+", 
       RowBox[{"\[ImaginaryI]", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"FresnelS", "[", 
           FractionBox[
            RowBox[{"m", " ", 
             RowBox[{"(", 
              RowBox[{"b", "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"b", "+", "x"}], ")"}], " ", 
                SubscriptBox["t", "1"]}], "-", 
               SubscriptBox["x", "0"]}], ")"}]}], 
            RowBox[{
             SqrtBox["\[Pi]"], " ", 
             SqrtBox[
              RowBox[{"m", " ", "\[HBar]", " ", 
               SubscriptBox["t", "1"], " ", 
               RowBox[{"(", 
                RowBox[{"1", "+", 
                 SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}], "+", 
          RowBox[{"FresnelS", "[", 
           FractionBox[
            RowBox[{"m", " ", 
             RowBox[{"(", 
              RowBox[{"b", "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"b", "-", "x"}], ")"}], " ", 
                SubscriptBox["t", "1"]}], "+", 
               SubscriptBox["x", "0"]}], ")"}]}], 
            RowBox[{
             SqrtBox["\[Pi]"], " ", 
             SqrtBox[
              RowBox[{"m", " ", "\[HBar]", " ", 
               SubscriptBox["t", "1"], " ", 
               RowBox[{"(", 
                RowBox[{"1", "+", 
                 SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}]}], ")"}]}]}], 
      ")"}], " ", 
     SqrtBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", "\[HBar]", " ", 
       SubscriptBox["t", "1"]}]]}], ")"}], "/", 
   RowBox[{"(", 
    RowBox[{
     SqrtBox[
      RowBox[{"2", " ", "\[Pi]"}]], " ", "\[HBar]", " ", 
     SqrtBox[
      RowBox[{
       SubscriptBox["t", "1"], " ", 
       RowBox[{"(", 
        RowBox[{"1", "+", 
         SubscriptBox["t", "1"]}], ")"}]}]], " ", 
     SqrtBox[
      RowBox[{"\[ImaginaryI]", " ", 
       SubscriptBox["t", "2"]}]]}], ")"}]}]}]], "Output",
 CellChangeTimes->{3.55159391323143*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"re", "=", 
  RowBox[{
   RowBox[{
    RowBox[{"Out", "[", "27", "]"}], "//", "Re"}], "//", 
   "Simplify"}]}]], "Input",
 CellChangeTimes->{{3.5515941948991413`*^9, 3.551594218848102*^9}}],

Cell[BoxData[
 RowBox[{
  FractionBox["1", 
   SqrtBox[
    RowBox[{"2", " ", "\[Pi]"}]]], 
  RowBox[{"Re", "[", 
   RowBox[{"-", 
    RowBox[{
     RowBox[{"1", "/", 
      RowBox[{"(", 
       RowBox[{"\[HBar]", " ", 
        SqrtBox[
         RowBox[{
          SubscriptBox["t", "1"], " ", 
          RowBox[{"(", 
           RowBox[{"1", "+", 
            SubscriptBox["t", "1"]}], ")"}]}]], " ", 
        SqrtBox[
         RowBox[{"\[ImaginaryI]", " ", 
          SubscriptBox["t", "2"]}]]}], ")"}]}], 
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
        RowBox[{"\[ImaginaryI]", " ", "m", " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"x", "+", 
            SubscriptBox["x", "0"]}], ")"}], "2"]}], 
        RowBox[{"2", " ", "\[HBar]", " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SubscriptBox["t", "1"]}], ")"}]}]]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"FresnelC", "[", 
         FractionBox[
          RowBox[{"m", " ", 
           RowBox[{"(", 
            RowBox[{"b", "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"b", "+", "x"}], ")"}], " ", 
              SubscriptBox["t", "1"]}], "-", 
             SubscriptBox["x", "0"]}], ")"}]}], 
          RowBox[{
           SqrtBox["\[Pi]"], " ", 
           SqrtBox[
            RowBox[{"m", " ", "\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}], "+", 
        RowBox[{"FresnelC", "[", 
         FractionBox[
          RowBox[{"m", " ", 
           RowBox[{"(", 
            RowBox[{"b", "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"b", "-", "x"}], ")"}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             SubscriptBox["x", "0"]}], ")"}]}], 
          RowBox[{
           SqrtBox["\[Pi]"], " ", 
           SqrtBox[
            RowBox[{"m", " ", "\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}], "+", 
        RowBox[{"\[ImaginaryI]", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"FresnelS", "[", 
            FractionBox[
             RowBox[{"m", " ", 
              RowBox[{"(", 
               RowBox[{"b", "+", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"b", "+", "x"}], ")"}], " ", 
                 SubscriptBox["t", "1"]}], "-", 
                SubscriptBox["x", "0"]}], ")"}]}], 
             RowBox[{
              SqrtBox["\[Pi]"], " ", 
              SqrtBox[
               RowBox[{"m", " ", "\[HBar]", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}], "+", 
           RowBox[{"FresnelS", "[", 
            FractionBox[
             RowBox[{"m", " ", 
              RowBox[{"(", 
               RowBox[{"b", "+", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"b", "-", "x"}], ")"}], " ", 
                 SubscriptBox["t", "1"]}], "+", 
                SubscriptBox["x", "0"]}], ")"}]}], 
             RowBox[{
              SqrtBox["\[Pi]"], " ", 
              SqrtBox[
               RowBox[{"m", " ", "\[HBar]", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}]}], ")"}]}]}], 
       ")"}], " ", 
      SqrtBox[
       RowBox[{"\[ImaginaryI]", " ", "m", " ", "\[HBar]", " ", 
        SubscriptBox["t", "1"]}]]}]}]}], "]"}]}]], "Output",
 CellChangeTimes->{{3.551594202577797*^9, 3.5515942197150908`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"im", "=", 
  RowBox[{
   RowBox[{
    RowBox[{"Out", "[", "27", "]"}], "//", "Im"}], "//", 
   "Simplify"}]}]], "Input",
 CellChangeTimes->{{3.551594205127639*^9, 3.551594226197179*^9}}],

Cell[BoxData[
 RowBox[{
  FractionBox["1", 
   SqrtBox[
    RowBox[{"2", " ", "\[Pi]"}]]], 
  RowBox[{"Im", "[", 
   RowBox[{"-", 
    RowBox[{
     RowBox[{"1", "/", 
      RowBox[{"(", 
       RowBox[{"\[HBar]", " ", 
        SqrtBox[
         RowBox[{
          SubscriptBox["t", "1"], " ", 
          RowBox[{"(", 
           RowBox[{"1", "+", 
            SubscriptBox["t", "1"]}], ")"}]}]], " ", 
        SqrtBox[
         RowBox[{"\[ImaginaryI]", " ", 
          SubscriptBox["t", "2"]}]]}], ")"}]}], 
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
        RowBox[{"\[ImaginaryI]", " ", "m", " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"x", "+", 
            SubscriptBox["x", "0"]}], ")"}], "2"]}], 
        RowBox[{"2", " ", "\[HBar]", " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SubscriptBox["t", "1"]}], ")"}]}]]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"FresnelC", "[", 
         FractionBox[
          RowBox[{"m", " ", 
           RowBox[{"(", 
            RowBox[{"b", "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"b", "+", "x"}], ")"}], " ", 
              SubscriptBox["t", "1"]}], "-", 
             SubscriptBox["x", "0"]}], ")"}]}], 
          RowBox[{
           SqrtBox["\[Pi]"], " ", 
           SqrtBox[
            RowBox[{"m", " ", "\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}], "+", 
        RowBox[{"FresnelC", "[", 
         FractionBox[
          RowBox[{"m", " ", 
           RowBox[{"(", 
            RowBox[{"b", "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"b", "-", "x"}], ")"}], " ", 
              SubscriptBox["t", "1"]}], "+", 
             SubscriptBox["x", "0"]}], ")"}]}], 
          RowBox[{
           SqrtBox["\[Pi]"], " ", 
           SqrtBox[
            RowBox[{"m", " ", "\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}], "+", 
        RowBox[{"\[ImaginaryI]", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"FresnelS", "[", 
            FractionBox[
             RowBox[{"m", " ", 
              RowBox[{"(", 
               RowBox[{"b", "+", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"b", "+", "x"}], ")"}], " ", 
                 SubscriptBox["t", "1"]}], "-", 
                SubscriptBox["x", "0"]}], ")"}]}], 
             RowBox[{
              SqrtBox["\[Pi]"], " ", 
              SqrtBox[
               RowBox[{"m", " ", "\[HBar]", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}], "+", 
           RowBox[{"FresnelS", "[", 
            FractionBox[
             RowBox[{"m", " ", 
              RowBox[{"(", 
               RowBox[{"b", "+", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"b", "-", "x"}], ")"}], " ", 
                 SubscriptBox["t", "1"]}], "+", 
                SubscriptBox["x", "0"]}], ")"}]}], 
             RowBox[{
              SqrtBox["\[Pi]"], " ", 
              SqrtBox[
               RowBox[{"m", " ", "\[HBar]", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}]}], ")"}]}]}], 
       ")"}], " ", 
      SqrtBox[
       RowBox[{"\[ImaginaryI]", " ", "m", " ", "\[HBar]", " ", 
        SubscriptBox["t", "1"]}]]}]}]}], "]"}]}]], "Output",
 CellChangeTimes->{{3.5515942098817883`*^9, 3.551594227161783*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{"re", ",", "im"}], "}"}], "/.", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"m", "\[Rule]", "1"}], ",", 
    RowBox[{
     SubscriptBox["x", "0"], "\[Rule]", "0"}], ",", 
    RowBox[{"x", "\[Rule]", "10"}], ",", 
    RowBox[{
     SubscriptBox["t", "1"], "\[Rule]", "10"}], ",", 
    RowBox[{
     SubscriptBox["t", "2"], "\[Rule]", "20"}], ",", 
    RowBox[{"\[HBar]", "\[Rule]", "1"}]}], "}"}]}]], "Input",
 CellChangeTimes->{{3.551594420403637*^9, 3.551594445601714*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    FractionBox["1", 
     SqrtBox[
      RowBox[{"110", " ", "\[Pi]"}]]], 
    RowBox[{"Re", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         FractionBox["1", "4"]}], "-", 
        FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"-", "1"}], ")"}], 
       RowBox[{"1", "/", "4"}]], " ", 
      SuperscriptBox["\[ExponentialE]", 
       FractionBox[
        RowBox[{"50", " ", "\[ImaginaryI]"}], "11"]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"FresnelC", "[", 
         FractionBox[
          RowBox[{
           RowBox[{"10", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "10"}], "+", "b"}], ")"}]}], "+", "b"}], 
          SqrtBox[
           RowBox[{"110", " ", "\[Pi]"}]]], "]"}], "+", 
        RowBox[{"FresnelC", "[", 
         FractionBox[
          RowBox[{"b", "+", 
           RowBox[{"10", " ", 
            RowBox[{"(", 
             RowBox[{"10", "+", "b"}], ")"}]}]}], 
          SqrtBox[
           RowBox[{"110", " ", "\[Pi]"}]]], "]"}], "+", 
        RowBox[{"\[ImaginaryI]", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"FresnelS", "[", 
            FractionBox[
             RowBox[{
              RowBox[{"10", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", "10"}], "+", "b"}], ")"}]}], "+", "b"}], 
             SqrtBox[
              RowBox[{"110", " ", "\[Pi]"}]]], "]"}], "+", 
           RowBox[{"FresnelS", "[", 
            FractionBox[
             RowBox[{"b", "+", 
              RowBox[{"10", " ", 
               RowBox[{"(", 
                RowBox[{"10", "+", "b"}], ")"}]}]}], 
             SqrtBox[
              RowBox[{"110", " ", "\[Pi]"}]]], "]"}]}], ")"}]}]}], ")"}]}], 
     "]"}]}], ",", 
   RowBox[{
    FractionBox["1", 
     SqrtBox[
      RowBox[{"110", " ", "\[Pi]"}]]], 
    RowBox[{"Im", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         FractionBox["1", "4"]}], "-", 
        FractionBox["\[ImaginaryI]", "4"]}], ")"}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"-", "1"}], ")"}], 
       RowBox[{"1", "/", "4"}]], " ", 
      SuperscriptBox["\[ExponentialE]", 
       FractionBox[
        RowBox[{"50", " ", "\[ImaginaryI]"}], "11"]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"FresnelC", "[", 
         FractionBox[
          RowBox[{
           RowBox[{"10", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "10"}], "+", "b"}], ")"}]}], "+", "b"}], 
          SqrtBox[
           RowBox[{"110", " ", "\[Pi]"}]]], "]"}], "+", 
        RowBox[{"FresnelC", "[", 
         FractionBox[
          RowBox[{"b", "+", 
           RowBox[{"10", " ", 
            RowBox[{"(", 
             RowBox[{"10", "+", "b"}], ")"}]}]}], 
          SqrtBox[
           RowBox[{"110", " ", "\[Pi]"}]]], "]"}], "+", 
        RowBox[{"\[ImaginaryI]", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"FresnelS", "[", 
            FractionBox[
             RowBox[{
              RowBox[{"10", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", "10"}], "+", "b"}], ")"}]}], "+", "b"}], 
             SqrtBox[
              RowBox[{"110", " ", "\[Pi]"}]]], "]"}], "+", 
           RowBox[{"FresnelS", "[", 
            FractionBox[
             RowBox[{"b", "+", 
              RowBox[{"10", " ", 
               RowBox[{"(", 
                RowBox[{"10", "+", "b"}], ")"}]}]}], 
             SqrtBox[
              RowBox[{"110", " ", "\[Pi]"}]]], "]"}]}], ")"}]}]}], ")"}]}], 
     "]"}]}]}], "}"}]], "Output",
 CellChangeTimes->{{3.551594415393046*^9, 3.551594446113871*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ParametricPlot", "[", 
  RowBox[{
   RowBox[{"Out", "[", "51", "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"b", ",", 
     RowBox[{"-", "10"}], ",", "10"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.551594230062475*^9, 3.551594408145803*^9}, {
  3.551594460737597*^9, 3.551594464040792*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwUl3c81f8Xx6VQVoUKLSPqa+/NsWXvve69Lq69V8a9KGWPpEQppFBSirRO
SYkQqVBElJUoDSPjd39/3cfrcc59f97vz+ec93k9BUkhNt6MDAwM71kZGP7/
q2B98e+G0hk4u9h9K/BeIuwmyh7N5DsD4T9HxyYHE0HA3Dd7bK0QRKeGFws2
JcH5s4+tZL8UwszrxPRQqST48vN36fnOQrBvuCYf4pkExw4eDFJpKoSzXA4C
waeTYPCSl97eykIIZ9nXq9OeBBbVS5PGpwtheNNm7uaNJNhn7GL99Hgh1LUX
sJQrUkGmY/1uZGwhEF+8kHztRwXFsYNt5sGFYKFVa7+vhAqv41O4JX0KocL3
jV/ESyrE6VPzZjwL4V514UrPDyoYlM0ZOrgWQskTbo3KbTQ4eZtJUNWpEMYq
17cc30ODDread/YOhZBX0bZ8Q5AGnIdNv/vZF8JcrfXDgcM0kKsd/ShF12fL
Ks53/kfXaxRxV7oOyN4WSqbH/3s+e6uCro/UjirnCNDAqPNn10O69u4ctTTd
RYOq6COV/88XDNzmV89Eg3YpQWdlu0K4Xudq2TFOBekDszqsNoXQtW9oyvAO
FVYl65lPWxQCD6sPY1AiFeTCT9w+Y1wI7OQN9l9ABf9rsteHdOnxwoOJ11eT
YNdM+2lVtUKobTxnnHYnCeq8bm1Kky4En89CjKmUJCB0zQtXChXCMT2RnEa+
JGhy8lOmchdCmnfTFZ32RGD24v/IxlgIHFsn95jHJkLdCq/G0bnTcK1nx8KW
I4nATmvh0xg4Db/zTpWeHkyAuruC5Ut4GhJ+TjLsz0mA8iatw+eu0PPrD3Y3
GyZAwnhtnWb6abAZGPweviUBeAW13HkCTkPqryFNzZfxcLI57KmF6WnQiP5z
8U9BPJRVHd8QETsNPmaxfu7e8ZD+tX1sgOU0cJEf2+/Rjofc0UMDNV8KYO8R
9q+VwvHgOPr33diTApi5o2pP3hEPleI7lTpKC8B44r/Duczx4M8ZmVYbS89f
vqepStcm+a32vXYF8FbX+pzV9njIGglhOCFbAORPr6svCMaDHkNgKsf2Aug9
/sm4VSMeaif9nOu+5wPrsSANA0I8YOp+36qufIisLjhKy4wH233rK1I386E6
49W7xkfxUOKS/eVYQT5MuFC3bP8bD7p/uqvuxuRDoO5NhbPyCVDFcaSd0TMf
+O9umzWOSoCTl92NE4/mQ+ODfWxc9xMAlUZklBXyIddVUvs1QyL0WC5ZqArl
Q9kX8ysuRxPhcMMMbypXPnxuuB6dmZsIUZmO9axM+UAjP+tSf5cIv4OfbH+0
nAfC0uwW5rxJ8O6buVvSjzzI3S9Tf8OR3o+dYa5i03kwKaTO51qQBPaG/qxn
xvNgbd9RCUpbEijOCNlnjuSB7jHdFxt/kkADw6f7hvLgoNVLO8p+Kpj5hJrv
+ZgHV+7JZFrR6++9tgm/8Yc8MH64fiPGkQrCzP/ittP1plM//0V4U2H66KVv
HHTtxPy1kYPerxY7xdcnBvNAwNmCS5tEhXe3Azm16PqqhLmUqjUVCg1lGJr7
8yDfRUbAWYkK7TtlZza9y4Mes24OGS4q9LzecuNlTx6kXo70jv+aBBndCUGt
HXngy0TSFrqVBHlDud/utOTB36grm2Sjk6DQKeem17084PneafhWMQk290lu
vVKbBxPRC7q2PxNB5v6nt06leRCU6lW2rSYRfnEP8AZk5EHzhOEGgZgIJ0st
7N5G5cGBLm2DDt5EiG0llBd75EGcIf+Dxt4E+N3lUtKpT49fHVHPz04A+dgd
qxlH8kBi8CGtyTwBWFgP8qxvy4NgJ/76CO4EuLtr9l/Dm1wQ8xUx/zsSD1cC
Nhs3Z+eCytFtlVZ34uG6VIxSsUEuzKU0dYbkx8N/+iGl8ys54JCq5cobGw8H
LP4IkOtyICXMp3eMEg9749YPXCXkAKW19rMKOR4EnDJ8grly4Cm1LdfWPx5c
h5S+hrVmQ9nHASW1+HiQomw1osRkg9g4c1xLUTwUNamWbZbIBotwUd78h/T1
nt46MjeWBRHsdbf3zsZDig1ItpVmwQ9lPrfaQ/R6Pf1HUMAlC5pvjm8meCdA
eP8a07G9WXBqf9Z5hRsJEGA1v13vcyZYmlwd3fwvAY6U6N55W5sJlUIs7dnm
idDU38kRHp8Jkwoku8SKRIiWcLtpaJUJlKlXHcH/EkH9zcVxb7FM2PTgjuJf
2ySgWsd4dGzLhCSevatXapPA5V8XwWEuA3RXeFJ2baJCU/4H87f9GWAdNnN9
0oYKBxX76hafZwDPSpFkbxm9XjJ+lHncywBz49uRFyeokNjSV3a6LgN2lymf
38dNA1P78/e2X8uAkY7nte+laLDyzW5JozIDGLntancb0uDOkqxkXHkG7Pyt
M5vhRIPzZOoAL113l0UbLnnTYJ9ro4k/XbP5zvGrB9NgqpXnwz26TrfZ9M0o
jAZO8kOHrP6fP7aZJh5Cnw+hh62ol+iabaqclUIDsVEfhdLSDLB5c8pb0I0G
s/mLFOaiDDh6xGBTiykN1sfmBMSyMsDzUZSVrTINfkzydaYkZcDvFzwzFgdp
IFVlGXohMAMkpIqmtLbQQEY/o57fIQMsYt51RndRwU0RY+vVMmCT9kTM6xwq
DA3yGYnzZ0Dev8g9I+ZU+KrAwhHyOx2mc8ztWdipwDHqVRnTnk6vn5dfbnQk
ATmCs9+pOB345sz4lDKT4CKX3X/TvunwtYuybcAmCYpcfGbs5dKhf09Ap8uB
JPhVXdH4ZekUPEziC3o0lwjbAo8fm3lwCn6bDhz71poIWXmu/B3xp+B7qLxv
8+VEMOANH19QOQW9/8g6n08kQptrf+enXyfh6Xja0EZYIpCkl3N23DgJ9fP+
AQU+ibCzuqF4p/dJ+HpdqeS3VyKIvWD6GbLvJKifGZP39E+EAPy99KAvDdKf
lutNxiXCXwWSalpmGhio7RpILEiE7a/rhdz10+Dfm08GPxro2phlqGP9BDxS
llibGk6E7+F9wrYPTsAzAdLkj+1J8Dn6k0nYsRPwlUHqaJhxEnxaf2NdpHEC
Uo8c4W9MTwKDs2kyhxlPgDqz8/CP10lgqn3dPP7Vccjcp9GpvpcKY+a9Eh/P
0fWijf8Ffyo8vVzjSPU/DgN3mT3YH1HhbnhHWq72cdAx0HrWvJUGh/4Msgvt
PQ4KCQUHXOVp8MHAP019JRV2P+d1/uBOg3lO4uvu4VQwfUD879pJGjBV/9J8
9DwVVJlecqvU06BHlluo/1YqbP8ans3YTwN1F8GTQ5dTARmaWE/+o0FRYatC
0plUePbl4w/z/cnQdfvxjEdWKnirtnrNqCfDbO6LNzxpqXB/OGPqn0MyZAaf
FRJPSYX999+9lw5Ohp1WtyeFaalw1sb7tG5yMmzY3foTR02F1Ze6uQx5yTAW
kz1fTtdFNwZZjM4nw3rwO6+d9HwKg/6JLZeSget0wS8lum4z3rlL9XIy8O6L
iU+j52PToPbfC8nwWvuHUnRiKjjcWnziUZQMloXv3ybHpcJ7/fbZKxnJkPGw
MUoiIhV4DT/OcMYng40sWxajfyqsrNtXfvNNhvNU9bMl7qnw1uEbtcQ6GYQy
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
W9S0BfuHK7KmiySoawjuYnCygfnImY9yGo7AVsbFF5lnDYOalF/0tDprMXgy
1rNiBdxKVjue57mCaFXDsNxRK5BUtiLm17vDn1IxMWNpKzhgprla0OAJ722W
bhkuWMJg7wNb0XxvcJW9LrD41hJeXqt93OjvC8KiwHKfxi06y+2Xf2aRQeTZ
nFDFb0sQTOvzM6FxnfjAMTcbcSuo686kc99NhcFGrlxePyv4l/yXkXSHChad
4tV8LVaw84NU4TuCHzBquVUq01nD9+2Za6THfrCAL9uuOFkDnbJQsbmyP8xP
aO29X2cNQ812LmE5/rD+JCflxZo19Ny05M546w/bvW2S/xFsYMhzXDCRPQBW
uySGjmfYgNXi0n5j3QDwPqTFln3HBooUw4OXHALgQ9gou+OoDSgWvtR/5h4A
euwZ5funbcC49e6LraQAuDkz9CT+NS2fEMFph0YArCfuYxuqsQHeJ9VBniwB
8Nnb4tyyuw2cmgn/lPnaHwxvFp0d+mYN2luILyDbH57vjH5b6GgNiybyTqQ3
fqCpODkzXG8JpzNWX5GDaHyheoyyJ88Ctlas0VN+UqG/NqHtri0R9ljnCZlM
UmBxgcn3uKoZXOTo07K0osBXb28xMS8TOBzwTyGjhQxzX464qjkagXSEb2XU
sA/cKSq+/sFTG+a1Y8M2T3pDw6ln+qGSarDh3lynquwFVWPDgRf2y0Oq81DX
1ePuEPzri4AikR7s2j3NHBXdgJ1pW+HP4t2YPrr24dCkC2hFz5bM0klihQRe
nnZygvRXl3LiDmtjpy9r/JSgI3B+Hviz7bghRmWc77q0YA+8I1VvK8imyBdl
cyRziATB8lf1jUhEvOsaXr6SaQcp66d/udhY4/DUho7KaRsY03WvLJAmof+d
lqqmBlpdRF2wj1FwwPXL+98ZuRHB1UZNbJeaC16WDj9s95kAVdMbZ+8quqFS
RFjqyUIzODZ4KtZE3APpYo4MfjxoChsTR5fEWLwwIyIoYeOACdyYx9PjX7yx
pbBq+64sY3AT0GvZcsMXT30vHP/SZwRCZxZM+G+R8UXLLOcWFSOoMqeT4T9N
wbgLPtGx7YbQbEP98t2eirsNRt7vcDGEI6V8V0+x+uF38r07GnsMweS2nfe/
Dj+8Qbh4zfwZQNjxjvPhXv5Yk/NPNaoQgNUyVJjlpz9a3k+1McoEuFascU0y
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
zMSEne4SD0eBTxr+xrTYwLvUKxXPgsIRodOC5iNlB33mKx1NreHIzyD6UNwF
ezgnpcLUwBiBYoQXednqHcBDavbjR6MIpLEyaDMIjsD69rC8eW4Eatf98GO1
yQl2lAh4aAxFoOyvZ1kWEp2hXmDsS9vhSOQQFGpaesoFwq/q9u+0i0SmPseO
GQ24gNHnU3dMMiPRltejP5mWOLjw06ll/EkkKpzf3MLdx0GXpoQa649IdPrY
absNRldY/tHbfIorCjVaOv6a///vSJYS+r8pRKEPWpuFjG6ukO+5g7XCIApd
dHI5iqJdgTd5g4vFOgrxkYI2++NdYaGzlnvcPgopJ2cK8Ce5wuVR35RlbP2B
K6cvPQHTTRluQ8rnopDDgNNQKt0Vdv5ncLVWKQp9d71t1YrpTLjXVxrJHYV2
mdGSkhKx56d8iH+7EInEuDK6CHmu4G/fIL4LIpGk7QRbQYMrGD5fqKQkR6Lh
A5lphkOuQHneKgvnI9HqocBGVRY8nL0BkTZMkYilqIR7TAkPlsmy2zPtEahv
565cC288xFzYYJYNiECvY45cu1WFh639T0K+8UQgYd1nf1/+xvyu4A/1HxCO
1mkjNaE2bqCbBjsOeYajti47klKnG/j/ZHfU3RuOKuqHpDy1CODsZPXPviYM
2TIStpVfEeCdy5V/2sZhiFrzCRV5ukObTsjXzz9CEaPYCo/tAQ94d6K//1Bu
KJrGH1HZ6vYAzmH1D4Dlc925Y0w/sz0hMbtus+ZrCJpVFs139vaCxOqnK8XZ
Iei0HtNfQ0NviHF5GXJWLwTxdTN4Zqv6QM8ay7r5JhEJFP0rn5b1hX3ZE6/O
tRERQ8MV2RFZP3iZz/1hKYaI1PRm662N/EFoyfLMdR0i0vjO/mBXcADU5iS/
beMgojeFXkH3LweCW1EBz0x/MOITeREi8jgIrNbQ4VcFwaiafTj4N+YrM9O/
L+3GdA1F7rR3SBIRPpg2eWpaBCNTudPNPTwhMJJbuPOJQTC6w9R7mFgZAk73
XZNuGwWjxyNs9uePh0L+IklrBBeMTroUUB0bQsGeouAxRg5Gw9xbL+5Kh8EN
0W0P3ppg9HKbykYrCQOljYi1jvFg9Hc/bd9e5nDg23Be82MjotykQ2J1/uGQ
+v3kJxE5Ipo9O/lo8Wk4tHA2yQSYE9HW0yq5WO4IaOPLDhYNI6JH0bOHuB0j
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
GMif6y3HSaBsUbr2TzUfCn6/vRPQSoL/Ae5mUzo=
     "]]}},
  Axes->True,
  AxesOrigin->{0, 0},
  PlotRange->{{-0.009255289866773693, 
   0.009249218344788377}, {-0.0090284888633757, 0.009029224284524802}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{{3.551594272395151*^9, 3.551594289418919*^9}, {
   3.5515943226999397`*^9, 3.5515943469396048`*^9}, {3.551594388158248*^9, 
   3.5515944090384274`*^9}, 3.551594473879216*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{
   RowBox[{"Out", "[", "27", "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "\[Infinity]"}], ",", "\[Infinity]"}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.551594566132937*^9, 3.551594576645743*^9}}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
  RowBox[{
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
         RowBox[{"\[ImaginaryI]", " ", "m", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"x", "+", 
             SubscriptBox["x", "0"]}], ")"}], "2"]}], 
         RowBox[{"2", " ", "\[HBar]", " ", 
          RowBox[{"(", 
           RowBox[{"1", "+", 
            SubscriptBox["t", "1"]}], ")"}]}]]], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"FresnelC", "[", 
          FractionBox[
           RowBox[{"m", " ", 
            RowBox[{"(", 
             RowBox[{"b", "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"b", "+", "x"}], ")"}], " ", 
               SubscriptBox["t", "1"]}], "-", 
              SubscriptBox["x", "0"]}], ")"}]}], 
           RowBox[{
            SqrtBox["\[Pi]"], " ", 
            SqrtBox[
             RowBox[{"m", " ", "\[HBar]", " ", 
              SubscriptBox["t", "1"], " ", 
              RowBox[{"(", 
               RowBox[{"1", "+", 
                SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}], "+", 
         RowBox[{"FresnelC", "[", 
          FractionBox[
           RowBox[{"m", " ", 
            RowBox[{"(", 
             RowBox[{"b", "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"b", "-", "x"}], ")"}], " ", 
               SubscriptBox["t", "1"]}], "+", 
              SubscriptBox["x", "0"]}], ")"}]}], 
           RowBox[{
            SqrtBox["\[Pi]"], " ", 
            SqrtBox[
             RowBox[{"m", " ", "\[HBar]", " ", 
              SubscriptBox["t", "1"], " ", 
              RowBox[{"(", 
               RowBox[{"1", "+", 
                SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}], "+", 
         RowBox[{"\[ImaginaryI]", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"FresnelS", "[", 
             FractionBox[
              RowBox[{"m", " ", 
               RowBox[{"(", 
                RowBox[{"b", "+", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"b", "+", "x"}], ")"}], " ", 
                  SubscriptBox["t", "1"]}], "-", 
                 SubscriptBox["x", "0"]}], ")"}]}], 
              RowBox[{
               SqrtBox["\[Pi]"], " ", 
               SqrtBox[
                RowBox[{"m", " ", "\[HBar]", " ", 
                 SubscriptBox["t", "1"], " ", 
                 RowBox[{"(", 
                  RowBox[{"1", "+", 
                   SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}], "+", 
            RowBox[{"FresnelS", "[", 
             FractionBox[
              RowBox[{"m", " ", 
               RowBox[{"(", 
                RowBox[{"b", "+", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{"b", "-", "x"}], ")"}], " ", 
                  SubscriptBox["t", "1"]}], "+", 
                 SubscriptBox["x", "0"]}], ")"}]}], 
              RowBox[{
               SqrtBox["\[Pi]"], " ", 
               SqrtBox[
                RowBox[{"m", " ", "\[HBar]", " ", 
                 SubscriptBox["t", "1"], " ", 
                 RowBox[{"(", 
                  RowBox[{"1", "+", 
                   SubscriptBox["t", "1"]}], ")"}]}]]}]], "]"}]}], ")"}]}]}], 
        ")"}], " ", 
       SqrtBox[
        RowBox[{"\[ImaginaryI]", " ", "m", " ", "\[HBar]", " ", 
         SubscriptBox["t", "1"]}]]}], ")"}], "/", 
     RowBox[{"(", 
      RowBox[{
       SqrtBox[
        RowBox[{"2", " ", "\[Pi]"}]], " ", "\[HBar]", " ", 
       SqrtBox[
        RowBox[{
         SubscriptBox["t", "1"], " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SubscriptBox["t", "1"]}], ")"}]}]], " ", 
       SqrtBox[
        RowBox[{"\[ImaginaryI]", " ", 
         SubscriptBox["t", "2"]}]]}], ")"}]}]}], 
   RowBox[{"\[DifferentialD]", "x"}]}]}]], "Output",
 CellChangeTimes->{3.551594578210815*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Out", "[", "5", "]"}], "/.", 
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
          RowBox[{"Sqrt", "[", "Pi", "]"}]}], "]"}]}]}], ")"}]}]}]}], "//", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.551593574160475*^9, 3.5515936178931932`*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       FractionBox["1", "2"], "-", 
       FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", 
     SuperscriptBox["\[ExponentialE]", 
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", "m", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"x", "+", 
           SubscriptBox["x", "0"]}], ")"}], "2"]}], 
       RowBox[{"2", " ", "\[HBar]", " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SubscriptBox["t", "1"]}], ")"}]}]]], " ", 
     SqrtBox[
      RowBox[{"\[ImaginaryI]", " ", 
       SubscriptBox["t", "1"]}]], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\[ImaginaryI]", " ", 
        RowBox[{"FresnelC", "[", 
         RowBox[{"-", 
          FractionBox[
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "\[ImaginaryI]"}], ")"}], " ", 
            SqrtBox[
             RowBox[{"-", 
              FractionBox[
               RowBox[{"\[ImaginaryI]", " ", "m", " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"b", "+", 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"b", "+", "x"}], ")"}], " ", 
                    SubscriptBox["t", "1"]}], "-", 
                   SubscriptBox["x", "0"]}], ")"}], "2"]}], 
               RowBox[{"\[HBar]", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  SubscriptBox["t", "1"]}], ")"}]}]]}]]}], 
           SqrtBox[
            RowBox[{"2", " ", "\[Pi]"}]]]}], "]"}], " ", 
        SqrtBox[
         RowBox[{"-", 
          FractionBox[
           RowBox[{"\[ImaginaryI]", " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"b", "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"b", "+", "x"}], ")"}], " ", 
                SubscriptBox["t", "1"]}], "-", 
               SubscriptBox["x", "0"]}], ")"}], "2"]}], 
           RowBox[{
            SubscriptBox["t", "1"], " ", 
            RowBox[{"(", 
             RowBox[{"1", "+", 
              SubscriptBox["t", "1"]}], ")"}]}]]}]], " ", 
        RowBox[{"(", 
         RowBox[{"b", "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"b", "-", "x"}], ")"}], " ", 
           SubscriptBox["t", "1"]}], "+", 
          SubscriptBox["x", "0"]}], ")"}]}], "+", 
       RowBox[{
        RowBox[{"FresnelS", "[", 
         RowBox[{"-", 
          FractionBox[
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", "\[ImaginaryI]"}], ")"}], " ", 
            SqrtBox[
             RowBox[{"-", 
              FractionBox[
               RowBox[{"\[ImaginaryI]", " ", "m", " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"b", "+", 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"b", "+", "x"}], ")"}], " ", 
                    SubscriptBox["t", "1"]}], "-", 
                   SubscriptBox["x", "0"]}], ")"}], "2"]}], 
               RowBox[{"\[HBar]", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  SubscriptBox["t", "1"]}], ")"}]}]]}]]}], 
           SqrtBox[
            RowBox[{"2", " ", "\[Pi]"}]]]}], "]"}], " ", 
        SqrtBox[
         RowBox[{"-", 
          FractionBox[
           RowBox[{"\[ImaginaryI]", " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"b", "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"b", "+", "x"}], ")"}], " ", 
                SubscriptBox["t", "1"]}], "-", 
               SubscriptBox["x", "0"]}], ")"}], "2"]}], 
           RowBox[{
            SubscriptBox["t", "1"], " ", 
            RowBox[{"(", 
             RowBox[{"1", "+", 
              SubscriptBox["t", "1"]}], ")"}]}]]}]], " ", 
        RowBox[{"(", 
         RowBox[{"b", "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"b", "-", "x"}], ")"}], " ", 
           SubscriptBox["t", "1"]}], "+", 
          SubscriptBox["x", "0"]}], ")"}]}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[ImaginaryI]", " ", 
           RowBox[{"FresnelC", "[", 
            RowBox[{"-", 
             FractionBox[
              RowBox[{
               RowBox[{"(", 
                RowBox[{"1", "-", "\[ImaginaryI]"}], ")"}], " ", 
               SqrtBox[
                RowBox[{"-", 
                 FractionBox[
                  RowBox[{"\[ImaginaryI]", " ", "m", " ", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"b", "+", 
                    RowBox[{"b", " ", 
                    SubscriptBox["t", "1"]}], "-", 
                    RowBox[{"x", " ", 
                    SubscriptBox["t", "1"]}], "+", 
                    SubscriptBox["x", "0"]}], ")"}], "2"]}], 
                  RowBox[{"\[HBar]", " ", 
                   RowBox[{"(", 
                    RowBox[{
                    SubscriptBox["t", "1"], "+", 
                    SubsuperscriptBox["t", "1", "2"]}], ")"}]}]]}]]}], 
              SqrtBox[
               RowBox[{"2", " ", "\[Pi]"}]]]}], "]"}]}], "+", 
          RowBox[{"FresnelS", "[", 
           RowBox[{"-", 
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{"1", "-", "\[ImaginaryI]"}], ")"}], " ", 
              SqrtBox[
               RowBox[{"-", 
                FractionBox[
                 RowBox[{"\[ImaginaryI]", " ", "m", " ", 
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"b", "+", 
                    RowBox[{"b", " ", 
                    SubscriptBox["t", "1"]}], "-", 
                    RowBox[{"x", " ", 
                    SubscriptBox["t", "1"]}], "+", 
                    SubscriptBox["x", "0"]}], ")"}], "2"]}], 
                 RowBox[{"\[HBar]", " ", 
                  RowBox[{"(", 
                   RowBox[{
                    SubscriptBox["t", "1"], "+", 
                    SubsuperscriptBox["t", "1", "2"]}], ")"}]}]]}]]}], 
             SqrtBox[
              RowBox[{"2", " ", "\[Pi]"}]]]}], "]"}]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{"b", "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"b", "+", "x"}], ")"}], " ", 
           SubscriptBox["t", "1"]}], "-", 
          SubscriptBox["x", "0"]}], ")"}], " ", 
        SqrtBox[
         RowBox[{"-", 
          FractionBox[
           RowBox[{"\[ImaginaryI]", " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"b", "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"b", "-", "x"}], ")"}], " ", 
                SubscriptBox["t", "1"]}], "+", 
               SubscriptBox["x", "0"]}], ")"}], "2"]}], 
           RowBox[{
            SubscriptBox["t", "1"], " ", 
            RowBox[{"(", 
             RowBox[{"1", "+", 
              SubscriptBox["t", "1"]}], ")"}]}]]}]]}]}], ")"}]}], ")"}], "/", 
   
   RowBox[{"(", 
    RowBox[{
     SqrtBox[
      RowBox[{"2", " ", "\[Pi]"}]], " ", 
     SqrtBox[
      FractionBox["\[HBar]", "m"]], " ", 
     SqrtBox[
      RowBox[{"\[ImaginaryI]", " ", 
       SubscriptBox["t", "2"]}]], " ", 
     RowBox[{"(", 
      RowBox[{"b", "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"b", "+", "x"}], ")"}], " ", 
        SubscriptBox["t", "1"]}], "-", 
       SubscriptBox["x", "0"]}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{"b", "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"b", "-", "x"}], ")"}], " ", 
        SubscriptBox["t", "1"]}], "+", 
       SubscriptBox["x", "0"]}], ")"}]}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.551593594469331*^9, 3.551593622353593*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"s", "[", "z_", "]"}], "=", 
  RowBox[{
   FractionBox[
    RowBox[{"1", "+", "\[ImaginaryI]"}], "4"], 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"Erf", "[", 
      RowBox[{
       FractionBox[
        RowBox[{"1", "+", "\[ImaginaryI]"}], "2"], 
       SqrtBox["\[Pi]"], "z"}], "]"}], "-", 
     RowBox[{"\[ImaginaryI]", " ", 
      RowBox[{"Erf", "[", 
       RowBox[{
        FractionBox[
         RowBox[{"1", "-", "\[ImaginaryI]"}], "2"], 
        SqrtBox["\[Pi]"], " ", "z"}], "]"}]}]}], ")"}]}]}]], "Input",
 CellChangeTimes->{{3.55159301261554*^9, 3.551593071694704*^9}}],

Cell[BoxData[
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
      SqrtBox["\[Pi]"], " ", "z"}], "]"}]}], ")"}]}]], "Output",
 CellChangeTimes->{3.5515930730844393`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
  RowBox[{
   SubscriptBox["k", "t"], 
   RowBox[{"\[DifferentialD]", "y"}]}]}]], "Input",
 CellChangeTimes->{{3.5515347343610563`*^9, 3.55153473871285*^9}, {
  3.551535287593505*^9, 3.551535289738455*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"p", "=", 
  RowBox[{
   RowBox[{
    FractionBox["m", 
     RowBox[{"2", "\[Pi]", " ", "\[HBar]", " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["t", "1"], "+", 
        SubscriptBox["t", "2"]}], ")"}]}]], 
    FractionBox["1", "2"], 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{"FresnelC", "[", 
        SubscriptBox["u", "1"], "]"}], "-", 
       RowBox[{"FresnelC", "[", 
        SubscriptBox["u", "2"], "]"}]}], ")"}], "2"]}], "+", 
   RowBox[{
    FractionBox["1", "2"], 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{"FresnelS", "[", 
        SubscriptBox["u", "1"], "]"}], "-", 
       RowBox[{"FresnelS", "[", 
        SubscriptBox["u", "2"], "]"}]}], ")"}], "2"]}]}]}]], "Input",
 CellChangeTimes->{{3.551541880816804*^9, 3.551541973062331*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   FractionBox["1", "2"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{
      RowBox[{"FresnelS", "[", 
       SubscriptBox["u", "1"], "]"}], "-", 
      RowBox[{"FresnelS", "[", 
       SubscriptBox["u", "2"], "]"}]}], ")"}], "2"]}], "+", 
  FractionBox[
   RowBox[{"m", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{"FresnelC", "[", 
        SubscriptBox["u", "1"], "]"}], "-", 
       RowBox[{"FresnelC", "[", 
        SubscriptBox["u", "2"], "]"}]}], ")"}], "2"]}], 
   RowBox[{"4", " ", "\[Pi]", " ", "\[HBar]", " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["t", "1"], "+", 
      SubscriptBox["t", "2"]}], ")"}]}]]}]], "Output",
 CellChangeTimes->{3.551541976969635*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["u", "1"], "=", 
  FractionBox[
   RowBox[{"x", "-", 
    RowBox[{
     SubscriptBox["t", "1"], " ", "v"}], "-", 
    RowBox[{"b", 
     RowBox[{"(", 
      RowBox[{"1", "+", 
       FractionBox[
        SubscriptBox["t", "1"], 
        SubscriptBox["t", "2"]]}], ")"}]}]}], 
   RowBox[{
    FractionBox[
     RowBox[{"\[Pi]", " ", "\[HBar]", " ", 
      SubscriptBox["t", "1"]}], "m"], 
    RowBox[{"(", 
     RowBox[{"1", "+", 
      FractionBox[
       SubscriptBox["t", "1"], 
       SubscriptBox["t", "2"]]}], ")"}]}]]}]], "Input",
 CellChangeTimes->{{3.551541990665312*^9, 3.551542054176581*^9}}],

Cell[BoxData[
 FractionBox[
  RowBox[{"m", " ", 
   RowBox[{"(", 
    RowBox[{"x", "-", 
     RowBox[{"v", " ", 
      SubscriptBox["t", "1"]}], "-", 
     RowBox[{"b", " ", 
      RowBox[{"(", 
       RowBox[{"1", "+", 
        FractionBox[
         SubscriptBox["t", "1"], 
         SubscriptBox["t", "2"]]}], ")"}]}]}], ")"}]}], 
  RowBox[{"\[Pi]", " ", "\[HBar]", " ", 
   SubscriptBox["t", "1"], " ", 
   RowBox[{"(", 
    RowBox[{"1", "+", 
     FractionBox[
      SubscriptBox["t", "1"], 
      SubscriptBox["t", "2"]]}], ")"}]}]]], "Output",
 CellChangeTimes->{3.551542056772676*^9, 3.55159397359667*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubscriptBox["u", "2"], "=", 
  FractionBox[
   RowBox[{"x", "-", 
    RowBox[{
     SubscriptBox["t", "1"], " ", "v"}], "+", 
    RowBox[{"b", 
     RowBox[{"(", 
      RowBox[{"1", "+", 
       FractionBox[
        SubscriptBox["t", "1"], 
        SubscriptBox["t", "2"]]}], ")"}]}]}], 
   RowBox[{
    FractionBox[
     RowBox[{"\[Pi]", " ", "\[HBar]", " ", 
      SubscriptBox["t", "1"]}], "m"], 
    RowBox[{"(", 
     RowBox[{"1", "+", 
      FractionBox[
       SubscriptBox["t", "1"], 
       SubscriptBox["t", "2"]]}], ")"}]}]]}]], "Input",
 CellChangeTimes->{{3.551542068598383*^9, 3.5515420714134817`*^9}}],

Cell[BoxData[
 FractionBox[
  RowBox[{"m", " ", 
   RowBox[{"(", 
    RowBox[{"x", "-", 
     RowBox[{"v", " ", 
      SubscriptBox["t", "1"]}], "+", 
     RowBox[{"b", " ", 
      RowBox[{"(", 
       RowBox[{"1", "+", 
        FractionBox[
         SubscriptBox["t", "1"], 
         SubscriptBox["t", "2"]]}], ")"}]}]}], ")"}]}], 
  RowBox[{"\[Pi]", " ", "\[HBar]", " ", 
   SubscriptBox["t", "1"], " ", 
   RowBox[{"(", 
    RowBox[{"1", "+", 
     FractionBox[
      SubscriptBox["t", "1"], 
      SubscriptBox["t", "2"]]}], ")"}]}]]], "Output",
 CellChangeTimes->{3.551542072579976*^9, 3.551593975205048*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  FractionBox[
   RowBox[{"m", " ", 
    RowBox[{"(", 
     RowBox[{"b", "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"b", "+", "x"}], ")"}], " ", 
       SubscriptBox["t", "1"]}], "-", 
      SubscriptBox["x", "0"]}], ")"}]}], 
   RowBox[{
    SqrtBox["\[Pi]"], " ", 
    SqrtBox[
     RowBox[{"m", " ", "\[HBar]", " ", 
      SubscriptBox["t", "1"], " ", 
      RowBox[{"(", 
       RowBox[{"1", "+", 
        SubscriptBox["t", "1"]}], ")"}]}]]}]], "===", 
  SubscriptBox["u", "1"]}]], "Input",
 CellChangeTimes->{{3.551593976719915*^9, 3.5515939939651737`*^9}}],

Cell[BoxData["False"], "Output",
 CellChangeTimes->{{3.551593979650054*^9, 3.551593994353588*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData["p"], "Input",
 CellChangeTimes->{3.551542073989303*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   FractionBox["1", "2"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{
      RowBox[{"FresnelS", "[", 
       FractionBox[
        RowBox[{"m", " ", 
         RowBox[{"(", 
          RowBox[{"x", "-", 
           RowBox[{"v", " ", 
            SubscriptBox["t", "1"]}], "-", 
           RowBox[{"b", " ", 
            RowBox[{"(", 
             RowBox[{"1", "+", 
              FractionBox[
               SubscriptBox["t", "1"], 
               SubscriptBox["t", "2"]]}], ")"}]}]}], ")"}]}], 
        RowBox[{"\[Pi]", " ", "\[HBar]", " ", 
         SubscriptBox["t", "1"], " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", 
           FractionBox[
            SubscriptBox["t", "1"], 
            SubscriptBox["t", "2"]]}], ")"}]}]], "]"}], "-", 
      RowBox[{"FresnelS", "[", 
       FractionBox[
        RowBox[{"m", " ", 
         RowBox[{"(", 
          RowBox[{"x", "-", 
           RowBox[{"v", " ", 
            SubscriptBox["t", "1"]}], "+", 
           RowBox[{"b", " ", 
            RowBox[{"(", 
             RowBox[{"1", "+", 
              FractionBox[
               SubscriptBox["t", "1"], 
               SubscriptBox["t", "2"]]}], ")"}]}]}], ")"}]}], 
        RowBox[{"\[Pi]", " ", "\[HBar]", " ", 
         SubscriptBox["t", "1"], " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", 
           FractionBox[
            SubscriptBox["t", "1"], 
            SubscriptBox["t", "2"]]}], ")"}]}]], "]"}]}], ")"}], "2"]}], "+", 
  
  FractionBox[
   RowBox[{"m", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{"FresnelC", "[", 
        FractionBox[
         RowBox[{"m", " ", 
          RowBox[{"(", 
           RowBox[{"x", "-", 
            RowBox[{"v", " ", 
             SubscriptBox["t", "1"]}], "-", 
            RowBox[{"b", " ", 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               FractionBox[
                SubscriptBox["t", "1"], 
                SubscriptBox["t", "2"]]}], ")"}]}]}], ")"}]}], 
         RowBox[{"\[Pi]", " ", "\[HBar]", " ", 
          SubscriptBox["t", "1"], " ", 
          RowBox[{"(", 
           RowBox[{"1", "+", 
            FractionBox[
             SubscriptBox["t", "1"], 
             SubscriptBox["t", "2"]]}], ")"}]}]], "]"}], "-", 
       RowBox[{"FresnelC", "[", 
        FractionBox[
         RowBox[{"m", " ", 
          RowBox[{"(", 
           RowBox[{"x", "-", 
            RowBox[{"v", " ", 
             SubscriptBox["t", "1"]}], "+", 
            RowBox[{"b", " ", 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               FractionBox[
                SubscriptBox["t", "1"], 
                SubscriptBox["t", "2"]]}], ")"}]}]}], ")"}]}], 
         RowBox[{"\[Pi]", " ", "\[HBar]", " ", 
          SubscriptBox["t", "1"], " ", 
          RowBox[{"(", 
           RowBox[{"1", "+", 
            FractionBox[
             SubscriptBox["t", "1"], 
             SubscriptBox["t", "2"]]}], ")"}]}]], "]"}]}], ")"}], "2"]}], 
   RowBox[{"4", " ", "\[Pi]", " ", "\[HBar]", " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["t", "1"], "+", 
      SubscriptBox["t", "2"]}], ")"}]}]]}]], "Output",
 CellChangeTimes->{3.551542074640532*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{"p", ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "\[Infinity]"}], ",", "\[Infinity]"}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.551542076997231*^9, 3.551542084627368*^9}}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      FractionBox["1", "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"FresnelS", "[", 
          FractionBox[
           RowBox[{"m", " ", 
            RowBox[{"(", 
             RowBox[{"x", "-", 
              RowBox[{"v", " ", 
               SubscriptBox["t", "1"]}], "-", 
              RowBox[{"b", " ", 
               RowBox[{"(", 
                RowBox[{"1", "+", 
                 FractionBox[
                  SubscriptBox["t", "1"], 
                  SubscriptBox["t", "2"]]}], ")"}]}]}], ")"}]}], 
           RowBox[{"\[Pi]", " ", "\[HBar]", " ", 
            SubscriptBox["t", "1"], " ", 
            RowBox[{"(", 
             RowBox[{"1", "+", 
              FractionBox[
               SubscriptBox["t", "1"], 
               SubscriptBox["t", "2"]]}], ")"}]}]], "]"}], "-", 
         RowBox[{"FresnelS", "[", 
          FractionBox[
           RowBox[{"m", " ", 
            RowBox[{"(", 
             RowBox[{"x", "-", 
              RowBox[{"v", " ", 
               SubscriptBox["t", "1"]}], "+", 
              RowBox[{"b", " ", 
               RowBox[{"(", 
                RowBox[{"1", "+", 
                 FractionBox[
                  SubscriptBox["t", "1"], 
                  SubscriptBox["t", "2"]]}], ")"}]}]}], ")"}]}], 
           RowBox[{"\[Pi]", " ", "\[HBar]", " ", 
            SubscriptBox["t", "1"], " ", 
            RowBox[{"(", 
             RowBox[{"1", "+", 
              FractionBox[
               SubscriptBox["t", "1"], 
               SubscriptBox["t", "2"]]}], ")"}]}]], "]"}]}], ")"}], "2"]}], 
     "+", 
     FractionBox[
      RowBox[{"m", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"FresnelC", "[", 
           FractionBox[
            RowBox[{"m", " ", 
             RowBox[{"(", 
              RowBox[{"x", "-", 
               RowBox[{"v", " ", 
                SubscriptBox["t", "1"]}], "-", 
               RowBox[{"b", " ", 
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  FractionBox[
                   SubscriptBox["t", "1"], 
                   SubscriptBox["t", "2"]]}], ")"}]}]}], ")"}]}], 
            RowBox[{"\[Pi]", " ", "\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               FractionBox[
                SubscriptBox["t", "1"], 
                SubscriptBox["t", "2"]]}], ")"}]}]], "]"}], "-", 
          RowBox[{"FresnelC", "[", 
           FractionBox[
            RowBox[{"m", " ", 
             RowBox[{"(", 
              RowBox[{"x", "-", 
               RowBox[{"v", " ", 
                SubscriptBox["t", "1"]}], "+", 
               RowBox[{"b", " ", 
                RowBox[{"(", 
                 RowBox[{"1", "+", 
                  FractionBox[
                   SubscriptBox["t", "1"], 
                   SubscriptBox["t", "2"]]}], ")"}]}]}], ")"}]}], 
            RowBox[{"\[Pi]", " ", "\[HBar]", " ", 
             SubscriptBox["t", "1"], " ", 
             RowBox[{"(", 
              RowBox[{"1", "+", 
               FractionBox[
                SubscriptBox["t", "1"], 
                SubscriptBox["t", "2"]]}], ")"}]}]], "]"}]}], ")"}], "2"]}], 
      RowBox[{"4", " ", "\[Pi]", " ", "\[HBar]", " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["t", "1"], "+", 
         SubscriptBox["t", "2"]}], ")"}]}]]}], ")"}], 
   RowBox[{"\[DifferentialD]", "x"}]}]}]], "Output",
 CellChangeTimes->{3.551543448772806*^9}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{736, 683},
WindowMargins->{{Automatic, 81}, {Automatic, 0}},
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
Cell[1257, 32, 109, 1, 76, "Title"],
Cell[1369, 35, 101, 1, 46, "Subtitle"],
Cell[CellGroupData[{
Cell[1495, 40, 99, 1, 67, "Section"],
Cell[CellGroupData[{
Cell[1619, 45, 1727, 52, 58, "Input"],
Cell[3349, 99, 1536, 47, 94, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[4934, 152, 89, 1, 67, "Section"],
Cell[CellGroupData[{
Cell[5048, 157, 557, 13, 27, "Input"],
Cell[5608, 172, 416, 11, 27, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[6061, 188, 824, 24, 54, "Input"],
Cell[6888, 214, 603, 19, 91, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7528, 238, 763, 21, 51, "Input"],
Cell[8294, 261, 538, 17, 87, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[8869, 283, 307, 8, 27, "Input"],
Cell[9179, 293, 1019, 29, 91, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[10235, 327, 346, 9, 46, "Input"],
Cell[10584, 338, 9814, 285, 567, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20435, 628, 266, 7, 45, "Input"],
Cell[20704, 637, 1383, 44, 92, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[22136, 687, 99, 1, 67, "Section"],
Cell[CellGroupData[{
Cell[22260, 692, 206, 4, 27, "Input"],
Cell[22469, 698, 2447, 76, 86, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[24953, 779, 203, 4, 27, "Input"],
Cell[25159, 785, 4249, 123, 237, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[29445, 913, 154, 3, 27, "Input"],
Cell[29602, 918, 3929, 118, 237, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[33568, 1041, 212, 6, 27, "Input"],
Cell[33783, 1049, 4144, 121, 175, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[37964, 1175, 210, 6, 27, "Input"],
Cell[38177, 1183, 4144, 121, 175, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[42358, 1309, 522, 15, 27, "Input"],
Cell[42883, 1326, 3843, 119, 178, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[46763, 1450, 319, 8, 27, "Input"],
Cell[47085, 1460, 58043, 957, 366, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[105165, 2422, 286, 8, 27, "Input"],
Cell[105454, 2432, 4314, 123, 237, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[109805, 2560, 880, 27, 58, "Input"],
Cell[110688, 2589, 8000, 227, 616, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[118725, 2821, 613, 19, 46, "Input"],
Cell[119341, 2842, 665, 22, 46, "Output"]
}, Open  ]],
Cell[120021, 2867, 316, 8, 45, "Input"],
Cell[CellGroupData[{
Cell[120362, 2879, 842, 27, 49, "Input"],
Cell[121207, 2908, 762, 25, 52, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[122006, 2938, 641, 22, 77, "Input"],
Cell[122650, 2962, 612, 20, 76, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[123299, 2987, 643, 22, 77, "Input"],
Cell[123945, 3011, 613, 20, 76, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[124595, 3036, 601, 20, 53, "Input"],
Cell[125199, 3058, 98, 1, 27, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[125334, 3064, 69, 1, 27, "Input"],
Cell[125406, 3067, 3233, 98, 159, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[128676, 3170, 254, 7, 27, "Input"],
Cell[128933, 3179, 3698, 104, 238, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ev0MWh1BHPn8VA14oR5LQquA *)
