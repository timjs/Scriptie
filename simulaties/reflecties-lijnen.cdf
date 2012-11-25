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
NotebookDataLength[     23788,        693]
NotebookOptionsPosition[     22371,        627]
NotebookOutlinePosition[     22744,        644]
CellTagsIndexPosition[     22701,        641]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Init", "Subsection",
 CellChangeTimes->{{3.55133869148853*^9, 3.551338691790309*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"$Assumptions", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"r", ">", "0"}], ",", 
     RowBox[{"d", ">", "0"}], ",", 
     RowBox[{"x", ">", 
      FractionBox["d", "2"]}], ",", 
     RowBox[{"m", ">", "0"}], ",", 
     RowBox[{"\[HBar]", ">", "0"}], ",", 
     RowBox[{"t", ">", "0"}]}], "}"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5510775425480137`*^9, 3.551077563712881*^9}, 
   3.5510776024904137`*^9, {3.5511834797319603`*^9, 3.551183484026222*^9}, {
   3.551187940048133*^9, 3.551187946215797*^9}, {3.551262812505662*^9, 
   3.5512628156150303`*^9}, {3.551262875355905*^9, 3.551262933533289*^9}, {
   3.551263014228035*^9, 3.55126303062221*^9}, {3.551338736564938*^9, 
   3.5513387406747713`*^9}, {3.551338821374385*^9, 3.551338828941968*^9}, {
   3.5513391405950613`*^9, 3.55133914700152*^9}, {3.551339537570304*^9, 
   3.551339554023868*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"l1", "=", 
   SqrtBox[
    RowBox[{
     SuperscriptBox["x", "2"], "+", 
     SuperscriptBox["r", "2"]}]]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551075665751157*^9, 3.551075734857787*^9}, 
   3.551076897527008*^9, 3.551077464373508*^9, 3.551077604513599*^9, {
   3.5511832476406593`*^9, 3.551183248504424*^9}, {3.551183366509122*^9, 
   3.551183369421276*^9}, {3.551262947741582*^9, 3.551262957533267*^9}, {
   3.551263012050643*^9, 3.55126302373973*^9}, {3.55133967583462*^9, 
   3.5513396760502567`*^9}, 3.551339740213923*^9, 3.551339790887616*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"l2", "=", 
   SqrtBox[
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"d", "-", "x"}], ")"}], "2"], "+", 
     SuperscriptBox["r", "2"]}]]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5510757415250063`*^9, 3.551075759441263*^9}, 
   3.551076900230318*^9, 3.551077466385137*^9, {3.551077605985506*^9, 
   3.5510776277483177`*^9}, {3.551183254489072*^9, 3.5511832550806828`*^9}, {
   3.551183374509471*^9, 3.5511833768615093`*^9}, {3.551262960661985*^9, 
   3.551262972225856*^9}, {3.551263011563506*^9, 3.55126304142209*^9}, 
   3.5513397406620817`*^9, 3.551339791680078*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"l", "=", 
   RowBox[{"l1", "+", "l2"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551262983669705*^9, 3.551262986273654*^9}, 
   3.5512630252113028`*^9, 3.551339741445385*^9, 3.551339793311198*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"v", "=", 
   FractionBox["l", "t"]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551075769395814*^9, 3.55107580068187*^9}, 
   3.551076902357929*^9, 3.551077468112509*^9, 3.551077615576807*^9, {
   3.551262975217978*^9, 3.551263025803503*^9}, 3.551339742054139*^9, 
   3.551339794303384*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"t1", "=", 
   FractionBox["l1", "v"]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551075810631466*^9, 3.551075835553138*^9}, {
   3.551075870954132*^9, 3.551075876145719*^9}, {3.5510759488629217`*^9, 
   3.5510759523786583`*^9}, 3.5510769048136263`*^9, {3.551077470920434*^9, 
   3.5510774968176603`*^9}, {3.55107754993676*^9, 3.551077571056786*^9}, 
   3.551077617512641*^9, {3.551262998746717*^9, 3.5512630266674356`*^9}, 
   3.55133974282159*^9, 3.551339795327362*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"t2", "=", 
   FractionBox["l2", "v"]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551075839958846*^9, 3.551075868601898*^9}, {
   3.5510759547980547`*^9, 3.551075955378613*^9}, 3.551076907949839*^9, 
   3.551077473616342*^9, 3.5510776204167147`*^9, {3.551262999570614*^9, 
   3.55126302769145*^9}, 3.551339743693678*^9, 3.5513397962715178`*^9}],

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
 CellChangeTimes->{{3.551339216516294*^9, 3.551339219099997*^9}, {
  3.551340789036077*^9, 3.5513407891396523`*^9}, {3.551341946342881*^9, 
  3.5513419491480703`*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", "m", " ", 
    RowBox[{"(", 
     RowBox[{
      SqrtBox[
       RowBox[{
        SuperscriptBox["r", "2"], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"d", "-", "x"}], ")"}], "2"]}]], "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["r", "2"], "+", 
        SuperscriptBox["x", "2"]}]]}], ")"}]}], 
   RowBox[{"2", " ", "\[Pi]", " ", "t", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"d", "-", "x"}], ")"}], "2"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox["x", "2"]}], ")"}]}], ")"}], 
     RowBox[{"1", "/", "4"}]], " ", "\[HBar]"}]]}]], "Output",
 InitializationCell->True,
 CellChangeTimes->{
  3.551263154355825*^9, 3.55126400974505*^9, 3.551339161891955*^9, 
   3.551339219690881*^9, 3.551339509552267*^9, {3.5513395460114822`*^9, 
   3.5513395581966257`*^9}, 3.551339687576833*^9, {3.5513397192289267`*^9, 
   3.551339748048071*^9}, {3.5513398013207617`*^9, 3.55133981921732*^9}, 
   3.551340795228479*^9}]
}, Open  ]],

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
 CellChangeTimes->{{3.551339576812089*^9, 3.551339580802305*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SuperscriptBox["\[ExponentialE]", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         SqrtBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"d", "-", "x"}], ")"}], "2"]}]], "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox["x", "2"]}]]}], ")"}], "2"]}], 
     RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], "5", "ghjm"}], ","}]], "Input",
 CellChangeTimes->{{3.551426075209692*^9, 3.55142607554583*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]", "=", 
  RowBox[{"c", " ", "e"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551256538959104*^9, 3.551256656150732*^9}, 
   3.551256694985333*^9, {3.5512624578837557`*^9, 3.551262458632937*^9}, {
   3.551339258518702*^9, 3.551339259101165*^9}, {3.551339490901475*^9, 
   3.551339504901896*^9}, 3.551339584714419*^9}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          SqrtBox[
           RowBox[{
            SuperscriptBox["r", "2"], "+", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"d", "-", "x"}], ")"}], "2"]}]], "+", 
          SqrtBox[
           RowBox[{
            SuperscriptBox["r", "2"], "+", 
            SuperscriptBox["x", "2"]}]]}], ")"}], "2"]}], 
      RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m", " ", 
    RowBox[{"(", 
     RowBox[{
      SqrtBox[
       RowBox[{
        SuperscriptBox["r", "2"], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"d", "-", "x"}], ")"}], "2"]}]], "+", 
      SqrtBox[
       RowBox[{
        SuperscriptBox["r", "2"], "+", 
        SuperscriptBox["x", "2"]}]]}], ")"}]}], 
   RowBox[{"2", " ", "\[Pi]", " ", "t", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"d", "-", "x"}], ")"}], "2"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox["x", "2"]}], ")"}]}], ")"}], 
     RowBox[{"1", "/", "4"}]], " ", "\[HBar]"}]]}]], "Output",
 InitializationCell->True,
 CellChangeTimes->{{3.551256656602957*^9, 3.551256667867934*^9}, 
   3.551256699831943*^9, 3.5512576092295*^9, 3.551257727987011*^9, 
   3.551259115639222*^9, 3.551262459200899*^9, 3.551262587671245*^9, 
   3.551262682847084*^9, {3.551262724273506*^9, 3.551262753968471*^9}, 
   3.55126285754064*^9, 3.551263154392112*^9, 3.551264009779584*^9, 
   3.551339161930641*^9, 3.5513392238349037`*^9, 3.5513392612333384`*^9, {
   3.5513394919417963`*^9, 3.551339509854344*^9}, {3.55133954664622*^9, 
   3.551339585660722*^9}, 3.551339687621661*^9, {3.551339719263554*^9, 
   3.55133974809352*^9}, {3.551339801354437*^9, 3.551339819486393*^9}, 
   3.551340795508521*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Calc", "Subsection",
 CellChangeTimes->{{3.551338699004993*^9, 3.551338702151379*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   FractionBox["d", "2"], "\[Infinity]"], 
  RowBox[{"e", 
   RowBox[{"\[DifferentialD]", "x"}]}]}]], "Input",
 CellChangeTimes->{{3.551339591530745*^9, 3.551339635977727*^9}, {
  3.551339835369276*^9, 3.551339835439941*^9}}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   FractionBox["d", "2"], "\[Infinity]"], 
  RowBox[{
   SuperscriptBox["\[ExponentialE]", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         SqrtBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"d", "-", "x"}], ")"}], "2"]}]], "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox["x", "2"]}]]}], ")"}], "2"]}], 
     RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], 
   RowBox[{"\[DifferentialD]", "x"}]}]}]], "Output",
 CellChangeTimes->{3.551339679853038*^9, 3.55133983385063*^9, 
  3.551339945882024*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   FractionBox["d", "2"], "\[Infinity]"], 
  RowBox[{"c", 
   RowBox[{"\[DifferentialD]", "x"}]}]}]], "Input",
 CellChangeTimes->{{3.551340014465013*^9, 3.551340014555586*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Integrate", "::", "idiv"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Integral of \
\[NoBreak]\\!\\(\\(\\(-\\(\\(\\(\[ImaginaryI]\\\\ m\\)\\/\\(2\\\\ \[Pi]\\\\ t\
\\\\ \[HBar]\\)\\)\\)\\)\\) - \\(\[ImaginaryI]\\\\ m\\\\ \\@\\(1 + \\(d\\\\ \
\\(\\((d - \\(\\(2\\\\ x\\)\\))\\)\\)\\)\\/\\(r\\^2 + x\\^2\\)\\)\\)\\/\\(2\\\
\\ \[Pi]\\\\ t\\\\ \[HBar]\\)\\)\[NoBreak] does not converge on \[NoBreak]\\!\
\\({d\\/2, \[Infinity]}\\)\[NoBreak]. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\
\\\", ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Integrate/idiv\\\", ButtonNote -> \
\\\"Integrate::idiv\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.55134001532441*^9}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   FractionBox["d", "2"], "\[Infinity]"], 
  RowBox[{
   RowBox[{"-", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", "m", " ", 
      RowBox[{"(", 
       RowBox[{"1", "+", 
        SqrtBox[
         RowBox[{"1", "+", 
          FractionBox[
           RowBox[{"d", " ", 
            RowBox[{"(", 
             RowBox[{"d", "-", 
              RowBox[{"2", " ", "x"}]}], ")"}]}], 
           RowBox[{
            SuperscriptBox["r", "2"], "+", 
            SuperscriptBox["x", "2"]}]]}]]}], ")"}]}], 
     RowBox[{"2", " ", "\[Pi]", " ", "t", " ", "\[HBar]"}]]}], 
   RowBox[{"\[DifferentialD]", "x"}]}]}]], "Output",
 CellChangeTimes->{3.551340015326808*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]", "//", "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.5513391717587013`*^9, 3.551339175008766*^9}, {
  3.551339521621572*^9, 3.551339522357362*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          SqrtBox[
           RowBox[{
            SuperscriptBox["d", "2"], "+", 
            SuperscriptBox["r", "2"]}]], "+", 
          SqrtBox[
           RowBox[{
            SuperscriptBox["r", "2"], "+", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"d", "-", "x"}], ")"}], "2"]}]]}], ")"}], "2"]}], 
      RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m", " ", 
    RowBox[{"(", 
     RowBox[{"1", "+", 
      SqrtBox[
       FractionBox[
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"d", "-", "x"}], ")"}], "2"]}], 
        RowBox[{
         SuperscriptBox["d", "2"], "+", 
         SuperscriptBox["r", "2"]}]]]}], ")"}]}], 
   RowBox[{"2", " ", "\[Pi]", " ", "t", " ", "\[HBar]"}]]}]], "Output",
 CellChangeTimes->{3.551339176154007*^9, 3.551339524133828*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]", "=", 
  RowBox[{"Series", "[", 
   RowBox[{"\[Psi]", ",", 
    RowBox[{"{", 
     RowBox[{"r", ",", "0", ",", "1"}], "}"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551263107737871*^9, 3.551263117791061*^9}, {
  3.551263262678059*^9, 3.551263262748028*^9}}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", 
      SuperscriptBox["\[ExponentialE]", 
       FractionBox[
        RowBox[{"\[ImaginaryI]", " ", "m", " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            SqrtBox[
             SuperscriptBox["d", "2"]], "+", 
            SqrtBox[
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"d", "-", "x"}], ")"}], "2"]]}], ")"}], "2"]}], 
        RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m"}], 
     RowBox[{"2", " ", "\[Pi]", " ", 
      SqrtBox[
       FractionBox[
        RowBox[{
         SuperscriptBox["d", "2"], " ", 
         SuperscriptBox["t", "2"]}], 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           SqrtBox[
            SuperscriptBox["d", "2"]], "+", 
           SqrtBox[
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"d", "-", "x"}], ")"}], "2"]]}], ")"}], "2"]]], " ", 
      "\[HBar]"}]]}], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", "r", "]"}], "2"],
    SeriesData[$CellContext`r, 0, {}, 0, 2, 1],
    Editable->False]}],
  SeriesData[$CellContext`r, 0, {Complex[0, 
      Rational[-1, 2]] E^(Complex[0, 
        Rational[
        1, 2]] $CellContext`m $CellContext`t^(-1) (($CellContext`d^2)^
         Rational[1, 2] + (($CellContext`d - $CellContext`x)^2)^
         Rational[1, 2])^2/$CellContext`\[HBar]) $CellContext`m 
    Pi^(-1) ($CellContext`d^2 $CellContext`t^2 (($CellContext`d^2)^
         Rational[1, 2] + (($CellContext`d - $CellContext`x)^2)^
         Rational[1, 2])^(-2))^Rational[-1, 2]/$CellContext`\[HBar]}, 0, 2, 1],
  Editable->False]], "Output",
 CellChangeTimes->{3.551263154611167*^9, 3.5512632632465878`*^9, 
  3.55126400990639*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
  RowBox[{
   SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
   RowBox[{"\[Psi]", 
    RowBox[{"\[DifferentialD]", "x"}], 
    RowBox[{"\[DifferentialD]", "d"}]}]}]}]], "Input",
 CellChangeTimes->{{3.551263981808402*^9, 3.551263998054439*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Integrate", "::", "idiv"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Integral of \
\[NoBreak]\\!\\(\\*InterpretationBox[\\(\\(\\(-\\(\\(\\(\[ImaginaryI]\\\\ \
\[ExponentialE]\\^\\(\\(\[ImaginaryI]\\\\ m\\\\ \\((d + \\(\\(\[LeftSkeleton] \
1 \[RightSkeleton]\\)\\))\\)\\^2\\)\\/\\(2\\\\ t\\\\ \[HBar]\\)\\)\\\\ m\\\\ \
\\(\\((d + \\(\\(Abs[\\(\\(\\(\\(-d\\)\\) + x\\)\\)]\\)\\))\\)\\)\\)\\/\\(2\\\
\\ d\\\\ \[Pi]\\\\ t\\\\ \[HBar]\\)\\)\\)\\)\\) + \
\\*InterpretationBox[\\(\\(O[r]\\)\\^2\\), SeriesData[r, 0, List[], 0, 2, 1], \
Rule[Editable, False]]\\), SeriesData[r, 0, List[Times[Complex[0, \
Rational[-1, 2]], Power[d, -1], Power[E, Times[Complex[0, Rational[1, 2]], m, \
Power[t, -1], Power[\\\\[HBar], -1], Power[Plus[d, Abs[Skeleton[1]]], 2]]], \
m, Power[Pi, -1], Power[t, -1], Power[\\\\[HBar], -1], Plus[d, \
Abs[Plus[Times[-1, d], x]]]]], 0, 2, 1], Rule[Editable, False]]\\)\[NoBreak] \
does not converge on \[NoBreak]\\!\\({0, \[Infinity]}\\)\[NoBreak]. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/message/Integrate/idiv\\\", \
ButtonNote -> \\\"Integrate::idiv\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.551264031156356*^9}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Integrate", "::", "idiv"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Integral of \
\[NoBreak]\\!\\(\\*InterpretationBox[\\(\\(\\(-\\(\\(\\(\[ImaginaryI]\\\\ \
\[ExponentialE]\\^\\(\\(\[ImaginaryI]\\\\ m\\\\ \\((d + \\(\\(\[LeftSkeleton] \
1 \[RightSkeleton]\\)\\))\\)\\^2\\)\\/\\(2\\\\ t\\\\ \[HBar]\\)\\)\\\\ m\\\\ \
\\(\\((d + \\(\\(Abs[\\(\\(\\(\\(-d\\)\\) + x\\)\\)]\\)\\))\\)\\)\\)\\/\\(2\\\
\\ d\\\\ \[Pi]\\\\ t\\\\ \[HBar]\\)\\)\\)\\)\\) + \
\\*InterpretationBox[\\(\\(O[r]\\)\\^2\\), SeriesData[r, 0, List[], 0, 2, 1], \
Rule[Editable, False]]\\), SeriesData[r, 0, List[Times[Complex[0, \
Rational[-1, 2]], Power[d, -1], Power[E, Times[Complex[0, Rational[1, 2]], m, \
Power[t, -1], Power[\\\\[HBar], -1], Power[Plus[d, Abs[Skeleton[1]]], 2]]], \
m, Power[Pi, -1], Power[t, -1], Power[\\\\[HBar], -1], Plus[d, \
Abs[Plus[Times[-1, d], x]]]]], 0, 2, 1], Rule[Editable, False]]\\)\[NoBreak] \
does not converge on \[NoBreak]\\!\\({0, \[Infinity]}\\)\[NoBreak]. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/message/Integrate/idiv\\\", \
ButtonNote -> \\\"Integrate::idiv\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.551264068968198*^9}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
  RowBox[{
   SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
   RowBox[{
    RowBox[{"(", 
     InterpretationBox[
      RowBox[{
       RowBox[{"-", 
        FractionBox[
         RowBox[{"\[ImaginaryI]", " ", 
          SuperscriptBox["\[ExponentialE]", 
           FractionBox[
            RowBox[{"\[ImaginaryI]", " ", "m", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"d", "+", 
                RowBox[{"Abs", "[", 
                 RowBox[{"d", "-", "x"}], "]"}]}], ")"}], "2"]}], 
            RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m", " ", 
          RowBox[{"(", 
           RowBox[{"d", "+", 
            RowBox[{"Abs", "[", 
             RowBox[{"d", "-", "x"}], "]"}]}], ")"}]}], 
         RowBox[{"2", " ", "d", " ", "\[Pi]", " ", "t", " ", "\[HBar]"}]]}], 
       "+", 
       InterpretationBox[
        SuperscriptBox[
         RowBox[{"O", "[", "r", "]"}], "2"],
        SeriesData[$CellContext`r, 0, {}, 0, 2, 1],
        Editable->False]}],
      SeriesData[$CellContext`r, 0, {Complex[0, 
          Rational[-1, 2]] $CellContext`d^(-1) E^(Complex[0, 
            Rational[
            1, 2]] $CellContext`m $CellContext`t^(-1) \
$CellContext`\[HBar]^(-1) ($CellContext`d + 
            Abs[$CellContext`d - $CellContext`x])^2) $CellContext`m 
        Pi^(-1) $CellContext`t^(-1) $CellContext`\[HBar]^(-1) ($CellContext`d + 
         Abs[$CellContext`d - $CellContext`x])}, 0, 2, 1],
      Editable->False], ")"}], 
    RowBox[{"\[DifferentialD]", "x"}], 
    RowBox[{"\[DifferentialD]", "d"}]}]}]}]], "Output",
 CellChangeTimes->{3.551264070971406*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Series", "[", 
  RowBox[{
   RowBox[{"Sqrt", "[", 
    RowBox[{"1", "+", "x"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", "0", ",", "1"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.551340103362802*^9, 3.551340121930601*^9}}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"1", "+", 
   FractionBox["x", "2"], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", "x", "]"}], "2"],
    SeriesData[$CellContext`x, 0, {}, 0, 2, 1],
    Editable->False]}],
  SeriesData[$CellContext`x, 0, {1, 
    Rational[1, 2]}, 0, 2, 1],
  Editable->False]], "Output",
 CellChangeTimes->{{3.5513401170334797`*^9, 3.551340122398543*^9}}]
}, Open  ]]
}, Open  ]]
},
WindowToolbars->{},
WindowSize->{763, 683},
WindowMargins->{{4, Automatic}, {Automatic, 0}},
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
Cell[1257, 32, 91, 1, 34, "Subsection"],
Cell[1351, 35, 921, 20, 46, "Input",
 InitializationCell->True],
Cell[2275, 57, 615, 13, 39, "Input",
 InitializationCell->True],
Cell[2893, 72, 655, 15, 39, "Input",
 InitializationCell->True],
Cell[3551, 89, 258, 6, 27, "Input",
 InitializationCell->True],
Cell[3812, 97, 349, 8, 46, "Input",
 InitializationCell->True],
Cell[4164, 107, 530, 10, 46, "Input",
 InitializationCell->True],
Cell[4697, 119, 403, 8, 46, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[5125, 131, 451, 12, 52, "Input",
 InitializationCell->True],
Cell[5579, 145, 1266, 37, 69, "Output",
 InitializationCell->True]
}, Open  ]],
Cell[6860, 185, 359, 11, 49, "Input",
 InitializationCell->True],
Cell[7222, 198, 671, 20, 56, InheritFromParent],
Cell[CellGroupData[{
Cell[7918, 222, 366, 7, 27, "Input",
 InitializationCell->True],
Cell[8287, 231, 2155, 58, 86, "Output",
 InitializationCell->True]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[10491, 295, 92, 1, 34, "Subsection"],
Cell[CellGroupData[{
Cell[10608, 300, 285, 7, 50, "Input"],
Cell[10896, 309, 795, 24, 68, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[11728, 338, 236, 6, 50, "Input"],
Cell[11967, 346, 751, 14, 61, "Message"],
Cell[12721, 362, 725, 22, 77, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13483, 389, 183, 3, 27, "Input"],
Cell[13669, 394, 1131, 34, 86, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14837, 433, 292, 7, 27, "Input"],
Cell[15132, 442, 1844, 51, 109, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17013, 498, 332, 8, 45, "Input"],
Cell[17348, 508, 1283, 21, 56, "Message"],
Cell[18634, 531, 1283, 21, 56, "Message"],
Cell[19920, 554, 1711, 43, 75, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[21668, 602, 264, 7, 27, "Input"],
Cell[21935, 611, 408, 12, 44, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 5u0hDixpp9QOhAglaeJISrTG *)
