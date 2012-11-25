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
NotebookDataLength[     66946,       2017]
NotebookOptionsPosition[     63288,       1871]
NotebookOutlinePosition[     63685,       1889]
CellTagsIndexPosition[     63642,       1886]
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
     RowBox[{"x", "\[Element]", "Reals"}], ",", 
     RowBox[{"m", ">", "0"}], ",", 
     RowBox[{"\[HBar]", ">", "0"}], ",", 
     RowBox[{"t", ">", "0"}], ",", 
     RowBox[{"z", ">", "0"}]}], "}"}]}], ";"}]], "Input",
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
   3.551456396948758*^9, 3.551456414223942*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"l1", "=", 
   SqrtBox[
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"x", "+", 
        FractionBox["d", "2"]}], ")"}], "2"], "+", 
     SuperscriptBox["r", "2"]}]]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551075665751157*^9, 3.551075734857787*^9}, 
   3.551076897527008*^9, 3.551077464373508*^9, 3.551077604513599*^9, {
   3.5511832476406593`*^9, 3.551183248504424*^9}, {3.551183366509122*^9, 
   3.551183369421276*^9}, {3.551262947741582*^9, 3.551262957533267*^9}, {
   3.551263012050643*^9, 3.55126302373973*^9}, {3.551338959462515*^9, 
   3.551338961346423*^9}, {3.551339050114523*^9, 3.5513390503513107`*^9}, {
   3.551340156315729*^9, 3.5513401593332443`*^9}, {3.551340347076888*^9, 
   3.551340357118476*^9}, {3.551340473855487*^9, 3.551340495615728*^9}, {
   3.551340596447105*^9, 3.551340601772328*^9}, {3.55134065877526*^9, 
   3.551340661318357*^9}, 3.551442076557827*^9, {3.551443079794524*^9, 
   3.551443082886826*^9}, {3.55144499054809*^9, 3.5514449995800867`*^9}, {
   3.5514560836760473`*^9, 3.551456084869577*^9}, {3.5514563864129457`*^9, 
   3.551456388965102*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"l2", "=", 
   SqrtBox[
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"x", "-", 
        FractionBox["d", "2"]}], ")"}], "2"], "+", 
     SuperscriptBox["r", "2"]}]]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5510757415250063`*^9, 3.551075759441263*^9}, 
   3.551076900230318*^9, 3.551077466385137*^9, {3.551077605985506*^9, 
   3.5510776277483177`*^9}, {3.551183254489072*^9, 3.5511832550806828`*^9}, {
   3.551183374509471*^9, 3.5511833768615093`*^9}, {3.551262960661985*^9, 
   3.551262972225856*^9}, {3.551263011563506*^9, 3.55126304142209*^9}, {
   3.551339052775392*^9, 3.55133905298211*^9}, {3.551340166681505*^9, 
   3.5513401714127493`*^9}, 3.551340375822535*^9, 3.551340409342279*^9, {
   3.551340478719557*^9, 3.5513405115922813`*^9}, {3.551340607348624*^9, 
   3.551340608099842*^9}, {3.551340664351054*^9, 3.551340664526331*^9}, 
   3.5514420766141167`*^9, {3.551445004204393*^9, 3.551445014444014*^9}, {
   3.551456093250342*^9, 3.551456093790586*^9}, {3.551456391168201*^9, 
   3.551456391436811*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"l", "=", 
  RowBox[{"l1", "+", "l2"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551262983669705*^9, 3.551262986273654*^9}, 
   3.5512630252113028`*^9, {3.55134034710905*^9, 3.551340375853732*^9}, 
   3.551340411707952*^9, {3.551340667582192*^9, 3.5513406986227407`*^9}, 
   3.551340742962265*^9, 3.551441826080467*^9}],

Cell[BoxData[
 RowBox[{
  SqrtBox[
   RowBox[{
    SuperscriptBox["r", "2"], "+", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["d", "2"]}], "+", "x"}], ")"}], "2"]}]], "+", 
  SqrtBox[
   RowBox[{
    SuperscriptBox["r", "2"], "+", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{
       FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}]]}]], "Output",
 CellChangeTimes->{3.551441826529015*^9, 3.5514420827299623`*^9, 
  3.551442571105835*^9, 3.55144312288807*^9, 3.551443157064937*^9, 
  3.5514434889743147`*^9, 3.551443947835989*^9, 3.551445024722703*^9, 
  3.551456124674624*^9, 3.551456426297925*^9, 3.551463870009783*^9, 
  3.5515311131680937`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"v", "=", 
   FractionBox["l", "t"]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551075769395814*^9, 3.55107580068187*^9}, 
   3.551076902357929*^9, 3.551077468112509*^9, 3.551077615576807*^9, {
   3.551262975217978*^9, 3.551263025803503*^9}, 3.551441803499743*^9, 
   3.5514418358799334`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"t1", "=", 
   FractionBox["l1", "v"]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551075810631466*^9, 3.551075835553138*^9}, {
   3.551075870954132*^9, 3.551075876145719*^9}, {3.5510759488629217`*^9, 
   3.5510759523786583`*^9}, 3.5510769048136263`*^9, {3.551077470920434*^9, 
   3.5510774968176603`*^9}, {3.55107754993676*^9, 3.551077571056786*^9}, 
   3.551077617512641*^9, {3.551262998746717*^9, 3.5512630266674356`*^9}, {
   3.551340347140627*^9, 3.551340414064994*^9}, {3.551340672000053*^9, 
   3.551340689030733*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"t2", "=", 
   FractionBox["l2", "v"]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551075839958846*^9, 3.551075868601898*^9}, {
   3.5510759547980547`*^9, 3.551075955378613*^9}, 3.551076907949839*^9, 
   3.551077473616342*^9, 3.5510776204167147`*^9, {3.551262999570614*^9, 
   3.55126302769145*^9}, {3.5513403757880697`*^9, 3.5513404159611807`*^9}, {
   3.551340637214752*^9, 3.551340654295395*^9}, {3.551340684422742*^9, 
   3.5513407016631203`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"c", "=", 
  RowBox[{
   FractionBox["m", 
    RowBox[{"2", " ", "\[Pi]", " ", "\[ImaginaryI]", " ", "\[HBar]"}]], 
   FractionBox["1", 
    RowBox[{" ", 
     SqrtBox[
      RowBox[{"t1", " ", "t2"}]]}]]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551339004604628*^9, 3.5513390081649437`*^9}, {
   3.551340194582389*^9, 3.551340197462447*^9}, {3.551340385803956*^9, 
   3.551340432390667*^9}, {3.5513407163298807`*^9, 3.551340718465193*^9}, {
   3.551340785747919*^9, 3.551340785851452*^9}, {3.551340947882918*^9, 
   3.551340959342025*^9}, {3.5513419294951057`*^9, 3.5513419318996468`*^9}, 
   3.551443483141239*^9}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", "m"}], 
   RowBox[{"2", " ", "\[Pi]", " ", 
    SqrtBox[
     FractionBox[
      RowBox[{
       SuperscriptBox["t", "2"], " ", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             FractionBox["d", "2"]}], "+", "x"}], ")"}], "2"]}]], " ", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}]]}], 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         SqrtBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", 
               FractionBox["d", "2"]}], "+", "x"}], ")"}], "2"]}]], "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}]]}], ")"}], 
       "2"]]], " ", "\[HBar]"}]]}]], "Output",
 InitializationCell->True,
 CellChangeTimes->{
  3.551263154355825*^9, 3.55126400974505*^9, 3.5513389824958153`*^9, 
   3.551339061486587*^9, 3.551340182410478*^9, 3.551340229003804*^9, {
   3.5513404589785843`*^9, 3.551340487658297*^9}, 3.551340519324514*^9, 
   3.551340615890727*^9, {3.55134070810017*^9, 3.551340745847019*^9}, 
   3.551340796078163*^9, 3.551341374623157*^9, {3.551341934296606*^9, 
   3.5513419393816032`*^9}, 3.551344277079126*^9, 3.551344324806664*^9, 
   3.551344551680707*^9, 3.5513446036796227`*^9, 3.55144181318429*^9, 
   3.55144208345217*^9, 3.5514425712583303`*^9, 3.55144315809321*^9, {
   3.5514434835910597`*^9, 3.551443489124295*^9}, 3.551443947985305*^9, 
   3.551445024873398*^9, 3.551456124915266*^9, 3.551456426447847*^9, 
   3.551463870161175*^9, 3.551531113384741*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"e", "=", " ", 
  RowBox[{"Exp", "[", 
   RowBox[{
    FractionBox["\[ImaginaryI]", "\[HBar]"], 
    FractionBox[
     RowBox[{"m", " ", 
      SuperscriptBox["v", "2"]}], "2"], "t"}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.5513402048084373`*^9, 3.551340224093834*^9}, {
  3.551443477840169*^9, 3.551443478564445*^9}}],

Cell[BoxData[
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
           RowBox[{
            RowBox[{"-", 
             FractionBox["d", "2"]}], "+", "x"}], ")"}], "2"]}]], "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}]]}], ")"}], 
     "2"]}], 
   RowBox[{"2", " ", "t", " ", "\[HBar]"}]]]], "Output",
 CellChangeTimes->{
  3.551340229257306*^9, {3.551340459016773*^9, 3.551340487976614*^9}, 
   3.551340519405341*^9, 3.551340616110629*^9, {3.5513407081797733`*^9, 
   3.5513407458867197`*^9}, 3.551340796113083*^9, 3.551341374660625*^9, 
   3.551341939555757*^9, 3.5513442772562532`*^9, 3.5513443251918783`*^9, 
   3.5513445517199183`*^9, 3.551344603982959*^9, 3.55144181340891*^9, 
   3.551442083726618*^9, 3.5514425713103037`*^9, 3.5514431585367937`*^9, {
   3.5514434790811253`*^9, 3.551443489177202*^9}, 3.551443948037251*^9, 
   3.551445024924008*^9, 3.551456125005369*^9, 3.551456426499536*^9, 
   3.551463870212349*^9, 3.551531113434287*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]", "=", 
  RowBox[{"c", " ", "e"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551256538959104*^9, 3.551256656150732*^9}, 
   3.551256694985333*^9, {3.5512624578837557`*^9, 3.551262458632937*^9}, {
   3.551340203727051*^9, 3.551340215068975*^9}}],

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
              RowBox[{
               RowBox[{"-", 
                FractionBox["d", "2"]}], "+", "x"}], ")"}], "2"]}]], "+", 
          SqrtBox[
           RowBox[{
            SuperscriptBox["r", "2"], "+", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}]]}], ")"}], 
        "2"]}], 
      RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m"}], 
   RowBox[{"2", " ", "\[Pi]", " ", 
    SqrtBox[
     FractionBox[
      RowBox[{
       SuperscriptBox["t", "2"], " ", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             FractionBox["d", "2"]}], "+", "x"}], ")"}], "2"]}]], " ", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}]]}], 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         SqrtBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", 
               FractionBox["d", "2"]}], "+", "x"}], ")"}], "2"]}]], "+", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}]]}], ")"}], 
       "2"]]], " ", "\[HBar]"}]]}]], "Output",
 InitializationCell->True,
 CellChangeTimes->{{3.551256656602957*^9, 3.551256667867934*^9}, 
   3.551256699831943*^9, 3.5512576092295*^9, 3.551257727987011*^9, 
   3.551259115639222*^9, 3.551262459200899*^9, 3.551262587671245*^9, 
   3.551262682847084*^9, {3.551262724273506*^9, 3.551262753968471*^9}, 
   3.55126285754064*^9, 3.551263154392112*^9, 3.551264009779584*^9, 
   3.551338982531171*^9, 3.551339061522168*^9, 3.551340182445986*^9, 
   3.551340229293256*^9, {3.551340459051157*^9, 3.551340488017722*^9}, 
   3.551340519442792*^9, 3.5513406161776876`*^9, {3.5513407082235413`*^9, 
   3.5513407459188433`*^9}, 3.55134079615143*^9, 3.551341374713133*^9, 
   3.551341939600667*^9, 3.551344277303217*^9, 3.551344325263748*^9, 
   3.551344551758706*^9, 3.551344604014243*^9, 3.551441813488697*^9, 
   3.5514420838093224`*^9, 3.5514425713584843`*^9, 3.551443158584278*^9, 
   3.551443489227325*^9, 3.551443948087236*^9, 3.551445024975402*^9, 
   3.551456125069083*^9, 3.551456426572422*^9, 3.551463870263385*^9, 
   3.551531113485261*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Handwerk", "Subsection",
 CellChangeTimes->{{3.5514614198200407`*^9, 3.551461422251522*^9}}],

Cell[BoxData[
 FractionBox["m", 
  RowBox[{"2", " ", "\[HBar]", " ", "T"}]]], "Input",
 CellChangeTimes->{{3.551531873602695*^9, 3.551531880782383*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
  RowBox[{
   SqrtBox[
    FractionBox[
     RowBox[{"y", "+", 
      SuperscriptBox["d", "2"], "+", 
      RowBox[{"4", 
       SuperscriptBox["r", "2"]}]}], 
     RowBox[{"y", 
      RowBox[{"(", 
       RowBox[{"y", "+", 
        RowBox[{"4", 
         SuperscriptBox["r", "2"]}]}], ")"}]}]]], 
   RowBox[{"Exp", "[", 
    RowBox[{"\[ImaginaryI]", " ", "\[Omega]", " ", "y"}], "]"}], 
   RowBox[{"\[DifferentialD]", "y"}]}]}]], "Input",
 CellChangeTimes->{{3.55153115404502*^9, 3.551531206118473*^9}, {
  3.5515313164959507`*^9, 3.5515313172635183`*^9}}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
  RowBox[{
   RowBox[{
    SuperscriptBox["\[ExponentialE]", 
     RowBox[{"\[ImaginaryI]", " ", "y", " ", "\[Omega]"}]], " ", 
    SqrtBox[
     FractionBox[
      RowBox[{
       SuperscriptBox["d", "2"], "+", 
       RowBox[{"4", " ", 
        SuperscriptBox["r", "2"]}], "+", "y"}], 
      RowBox[{"y", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"4", " ", 
          SuperscriptBox["r", "2"]}], "+", "y"}], ")"}]}]]]}], 
   RowBox[{"\[DifferentialD]", "y"}]}]}]], "Output",
 CellChangeTimes->{3.5515312269026213`*^9, 3.55153134800294*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
  RowBox[{
   FractionBox[
    RowBox[{"Exp", "[", 
     RowBox[{"\[ImaginaryI]", " ", "u"}], "]"}], 
    SqrtBox["u"]], 
   RowBox[{"\[DifferentialD]", "u"}]}]}]], "Input",
 CellChangeTimes->{{3.551531296366555*^9, 3.5515313338226833`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{"1", "+", "\[ImaginaryI]"}], ")"}], " ", 
  SqrtBox[
   FractionBox["\[Pi]", "2"]]}]], "Output",
 CellChangeTimes->{3.5515313741386557`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  FractionBox[
   RowBox[{"2", " ", "\[Omega]"}], 
   RowBox[{"\[ImaginaryI]", " ", "\[Pi]"}]], 
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{
     RowBox[{"4", 
      SuperscriptBox["r", "2"]}], "+", 
     SuperscriptBox["d", "2"]}], "\[Infinity]"], 
   RowBox[{
    SqrtBox[
     FractionBox["z", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"z", "-", 
         SuperscriptBox["d", "2"], "-", 
         RowBox[{"4", 
          SuperscriptBox["r", "2"]}]}], ")"}], 
       RowBox[{"(", 
        RowBox[{"z", "-", 
         SuperscriptBox["d", "2"]}], ")"}]}]]], 
    RowBox[{"Exp", "[", 
     RowBox[{"\[ImaginaryI]", " ", "\[Omega]", " ", "z"}], "]"}], 
    RowBox[{"\[DifferentialD]", "z"}]}]}]}]], "Input",
 CellChangeTimes->{{3.551461426589983*^9, 3.55146151085108*^9}, {
  3.551531969482719*^9, 3.5515319705386677`*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"2", " ", "\[ImaginaryI]", " ", "\[Omega]", " ", 
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{
       SuperscriptBox["d", "2"], "+", 
       RowBox[{"4", " ", 
        SuperscriptBox["r", "2"]}]}], "\[Infinity]"], 
     RowBox[{
      RowBox[{
       SuperscriptBox["\[ExponentialE]", 
        RowBox[{"\[ImaginaryI]", " ", "z", " ", "\[Omega]"}]], " ", 
       SqrtBox[
        FractionBox["z", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             SuperscriptBox["d", "2"]}], "+", "z"}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             SuperscriptBox["d", "2"]}], "-", 
            RowBox[{"4", " ", 
             SuperscriptBox["r", "2"]}], "+", "z"}], ")"}]}]]]}], 
      RowBox[{"\[DifferentialD]", "z"}]}]}]}], "\[Pi]"]}]], "Output",
 CellChangeTimes->{3.551461649580418*^9, 3.5515319788418503`*^9, 
  3.5515320353923798`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"NIntegrate", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     FractionBox[
      RowBox[{"2", " ", "\[Omega]"}], 
      RowBox[{"\[ImaginaryI]", " ", "\[Pi]"}]], 
     SqrtBox[
      FractionBox["z", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"z", "-", 
          SuperscriptBox["d", "2"], "-", 
          RowBox[{"4", 
           SuperscriptBox["r", "2"]}]}], ")"}], 
        RowBox[{"(", 
         RowBox[{"z", "-", 
          SuperscriptBox["d", "2"]}], ")"}]}]]], 
     RowBox[{"Exp", "[", 
      RowBox[{"\[ImaginaryI]", " ", "\[Omega]", " ", "z"}], "]"}]}], "/.", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"r", "\[Rule]", "5"}], ",", 
      RowBox[{"d", "\[Rule]", "10"}], ",", 
      RowBox[{"\[Omega]", "\[Rule]", "0.04621279981286688"}]}], "}"}]}], ",", 
   
   RowBox[{"{", 
    RowBox[{"z", ",", 
     RowBox[{
      RowBox[{"4", "*", 
       SuperscriptBox["5", "2"]}], "+", 
      SuperscriptBox["10", "2"]}], ",", "\[Infinity]"}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.551461426589983*^9, 3.55146151085108*^9}, {
  3.551531772760106*^9, 3.551531851922328*^9}, {3.55153194146996*^9, 
  3.551531947715694*^9}, {3.551531982068499*^9, 3.551531983156206*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "0.18648225212671019`"}], "+", 
  RowBox[{"0.2855263522666949`", " ", "\[ImaginaryI]"}]}]], "Output",
 CellChangeTimes->{3.551531808449297*^9, 3.551531852799931*^9, 
  3.551531950083128*^9, 3.55153198419731*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"a", "+", "b"}], "\[Infinity]"], 
  RowBox[{
   SqrtBox[
    FractionBox["z", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"z", "-", "a"}], ")"}], 
      RowBox[{"(", 
       RowBox[{"z", "-", "b"}], ")"}]}]]], 
   RowBox[{"Exp", "[", 
    RowBox[{"\[ImaginaryI]", " ", "z"}], "]"}], 
   RowBox[{"\[DifferentialD]", "z"}]}]}]], "Input",
 CellChangeTimes->{{3.551463779432251*^9, 3.5514638128119907`*^9}, {
  3.551463858186452*^9, 3.551463861475319*^9}, {3.551532064514146*^9, 
  3.551532066545918*^9}}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"a", "+", "b"}], "\[Infinity]"], 
  RowBox[{
   RowBox[{
    SuperscriptBox["\[ExponentialE]", 
     RowBox[{"\[ImaginaryI]", " ", "z"}]], " ", 
    SqrtBox[
     FractionBox["z", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "a"}], "+", "z"}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "b"}], "+", "z"}], ")"}]}]]]}], 
   RowBox[{"\[DifferentialD]", "z"}]}]}]], "Output",
 CellChangeTimes->{3.551464316648964*^9, 3.551532944346418*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FourierTransform", "[", 
  RowBox[{
   SqrtBox[
    FractionBox["z", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"z", "-", 
        SuperscriptBox["d", "2"], "-", 
        RowBox[{"4", 
         SuperscriptBox["r", "2"]}]}], ")"}], 
      RowBox[{"(", 
       RowBox[{"z", "-", 
        SuperscriptBox["d", "2"]}], ")"}]}]]], ",", "z", ",", "\[Zeta]"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.5514617430083714`*^9, 3.5514617700089684`*^9}}],

Cell[BoxData[
 RowBox[{"FourierTransform", "[", 
  RowBox[{
   SqrtBox[
    FractionBox["z", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox["d", "2"]}], "+", "z"}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox["d", "2"]}], "-", 
        RowBox[{"4", " ", 
         SuperscriptBox["r", "2"]}], "+", "z"}], ")"}]}]]], ",", "z", ",", 
   "\[Zeta]"}], "]"}]], "Output",
 CellChangeTimes->{3.551461887871317*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{
    SqrtBox[
     FractionBox["z", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox["d", "2"]}], "+", "z"}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox["d", "2"]}], "-", 
         RowBox[{"4", " ", 
          SuperscriptBox["r", "2"]}], "+", "z"}], ")"}]}]]], "/.", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"d", "\[Rule]", "1"}], ",", 
      RowBox[{"r", "\[Rule]", "1"}]}], "}"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"z", ",", 
     RowBox[{
      RowBox[{"4", "*", 
       SuperscriptBox["1", "2"]}], "+", 
      SuperscriptBox["1", "2"]}], ",", "100"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.551461902470125*^9, 3.551461935275288*^9}, {
  3.551461973949376*^9, 3.551462135293207*^9}, {3.5514622429486628`*^9, 
  3.551462308014373*^9}, {3.551462344517852*^9, 3.5514623448882427`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1:eJwVlPk/lAkcgK100HS340iSIzRhjKEM+n4pCZVr5MXuKoyzQ7JRKcuaEDq0
0aaLrDubapPXPUiimMaMGaxbUnYJyRFt+8PzeT7PP/Bs9jruxJGWkpIK/8b/
1jhyyilPpIGr2WWZVv92QpY5+6xZoiZS5/y7eVMdQA+WDpNL00QXzv23I/0d
QGY8DBHnauJwrF+WKb8DmpeuCAyt10Qp18BzVgUdMM2vIwqkt6B68sCOBe8O
sPPdbqx8eguWNG8/ki1ph7FLSh/nOFqoyLTvtumQwJnqFyMNoVrY9Ldbl02T
BGQmT71L/VUL+fcsNL3LJaDoJug2TNfCia/1oT13JWCpnvg6qFMLtVc+Ihc4
ErhePJ/f4aSNPQXasslTYmD19PiWgg6uV+6ZidISw8HVFrdf2uugd2JZHE1J
DCGYLpB46qCCyc6k9xQx5N07jNOROlgz9vr7nPE2UDrcp2hUpYMUca3Whso2
mOvtbyrErch3PNf22KMNyvrfMjIsaFi+6lCXb4YIxOusA4ocaWivdNTdM1UE
k7uy71YdpuGId2WCX6IItmX6UbqjaCjdOHo265QIbvm8G9zAo6F3g25Bu50I
IgaHb1y33IbQF8tdmBaC+dDIQtwuXbR0Drvi/qMQ9MIjxFynb73IzDuXLQRV
Wcqj6MO6aNYffU16nxBkaDRORKQuHtVJLxWwhPDyWEDj8VJdzMqy/vqvghCI
qcHUg4Z6+KXZPGda1Aqhi7vpGur6WEbp+tzp1gq+KcfkNjP0USdv06SzUysQ
Wgv9Gy30sXP9XjWBbSuY2mxMlffUxxqfDsmwaStIJ3nMy6XpY2BPnUaYSivs
lRsZCJel4x/jyasXDwpAeNW/yDOKjisVtJf+FiYAqlt86fl4OlLmQuYCggVA
qObV3b5KR67cuSLrAAF0Fn6QdKTTsW+siKbkIYC+xmPSBI+OtROGXYoggLHF
Pzs7LDJAW0x4E75MAJQzUZ+Qa4DvzOkdnvfewC6vmyZq8Qw0hCFqZB8fVk6a
u224ykDlWodxmb/50M7tDV//OwMTNppUX27jQ0iu9rMluQz8RJdXftLEh4yx
p8YfXjAwqtluzriYD9KRAsMnywxRnXHdZFMSH6rSKHp74gyRfJrrYmfGBzPh
ebXAWCY+C3AYfZ7VAiflyXXtl5j4Q6ZALTOjBfLcPsnYpjBx/9j9QzF3WkC+
K2hI5w8m9q8KGdmf0gLjb4mCYR4TFXmy3TIXWiBnmmEcsMDE1CNS1K+cFlin
PGTj/7MRhuSv1Vyh3QLvvexP+Hob40Sj6Yp6v2ZoyfCkXvTbgYGiCt2F/FcQ
OO+x2cuGhSks93+cbZrgyqxcUuVmMzQ/NVjCVWyEf3JnDuxW24kUXaVA988N
IMUKLN0phVjt9TCiZ0kDaIaHzR5bZIFrYwe5Jza+gMtLu4Z7v7NEV0vhKlf7
emBnsij6o5ZomGenfvneczBSKpZcHtuF7D7Ti1YTdRB8W6f9Zc9u1H+1pLj2
pzqonynlKg5aYb6MVCHnZS14Z2f35g3sQSPFgUTxrlpw94oPpgqs0UM7a2B9
cw0cnbqYd124F4OSWoqniBpoT42WH31ugx6jw36vPvIg6aKAmfDYFl21zP3y
knnww8Hd86wndhikkhHENeABVz9/uvb+PrSPrDywtLMaXvYa3PXK3o8xyy30
zsRUA3twzZRl1gGcG7rgbmpYDSZTQ5Hz1+wx6ifbVLsPVbBx7Fj7oK0DljEN
ulTTq6Dxg89KVo3Dt38pxuzwrIINV2Jv6ps4YqgYHpzbXAUzqqwveiWOeLWC
/XieVwkxz/zC0uhOeIPq9LHeoRJum2m+WPPICdeqxO3Y2V4BPvU/Mj5tdcZq
2iYrWnAFvJrlTZ5Od0afIl2OMaUCapWeJS5TY+PWoMwGmcxy8LfQ3ilzk42L
K6arz+8ph5ts7TpZZRc8zvS4Nj5QBsdXu2Q+THPBgtflDxriyuDjmy+3atce
REcq9YLEqAy+i2YG9V07iAU51OJl3aVQsX3I6SjFFf1heUrFlVJQSXme/Hu0
K9a0RQwH7ykFSq9RTrM0gctc9JKDpknIZqi2hZwh0Gzk1/cjRST0bb2/PD6C
QAnULSl+SIKK+ha8e57Aww3q+6P+JOG3ddtyG6MJfOO1lqA+IOGXye1nNRII
nEjN51jmkOD+1H6TKI3AkC2xrhl3SKCwIv1Mygk8csKaHZVAgjVD+pZ9JYFW
iePpDhdJiN7KbeFUE2iTd1lBNZ6EGaUEk+Q6Aqf3nf2l8gIJb+dSln94RWC5
mwJLKpqEyvLCP291EehsH7ovPpyE2b8MBh71EGgUPKvhEUaCceEThYY+ArWc
ezV1T5FQcIeM+vSWwNITD+7xT5JwI/K584FRAiP0d59WPk6CIMwmzucjgd8H
Ca+NHiVhZXBT2ZkJAg1FkSLeERK4h95oZn8mMDzriyAgkIQqwsW9fIZA3Ft+
yTyAhC8O4kuCOQL5ySdPrPEnYbuNR83wPIGu+dSIQV8SQiy6Pn/9SmBDye3C
Eg4J/wFMTY5R
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{20., 0.1},
  PlotRange->{{5, 100}, {0.10311470521057865`, 0.45204297149149486`}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output",
 CellChangeTimes->{
  3.551461937219905*^9, {3.5514619991829777`*^9, 3.551462021059667*^9}, {
   3.551462055225795*^9, 3.55146213595665*^9}, {3.551462243946352*^9, 
   3.551462308546152*^9}, 3.551462345533328*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Eulers Trick", "Subsection",
 CellChangeTimes->{{3.551441845382165*^9, 3.551441848068541*^9}, {
  3.5514420767534323`*^9, 3.551442122203999*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"substitutie", "=", 
  RowBox[{"Solve", "[", 
   RowBox[{
    RowBox[{"z", "\[Equal]", 
     SuperscriptBox["l", "2"]}], ",", "x"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5514418950610867`*^9, 3.5514419191743507`*^9}, {
  3.551442760779745*^9, 3.5514428586043863`*^9}, {3.551443023724587*^9, 
  3.5514430591059847`*^9}, {3.55144316814461*^9, 3.551443170328867*^9}, {
  3.5514437418772717`*^9, 3.5514437620447483`*^9}, {3.551444432849279*^9, 
  3.551444433397339*^9}, {3.551459846462582*^9, 3.551459854431699*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", 
     RowBox[{"-", 
      FractionBox[
       RowBox[{
        SqrtBox["z"], " ", 
        SqrtBox[
         RowBox[{
          RowBox[{"-", 
           SuperscriptBox["d", "2"]}], "-", 
          RowBox[{"4", " ", 
           SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
       SqrtBox[
        RowBox[{
         RowBox[{
          RowBox[{"-", "4"}], " ", 
          SuperscriptBox["d", "2"]}], "+", 
         RowBox[{"4", " ", "z"}]}]]]}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", 
     FractionBox[
      RowBox[{
       SqrtBox["z"], " ", 
       SqrtBox[
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox["d", "2"]}], "-", 
         RowBox[{"4", " ", 
          SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
      SqrtBox[
       RowBox[{
        RowBox[{
         RowBox[{"-", "4"}], " ", 
         SuperscriptBox["d", "2"]}], "+", 
        RowBox[{"4", " ", "z"}]}]]]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.551441900317919*^9, 3.551441919853236*^9}, 
   3.5514426060566463`*^9, 3.551442773732704*^9, {3.551442830844191*^9, 
   3.551442859347722*^9}, {3.5514430374542427`*^9, 3.551443059812212*^9}, 
   3.551443171260919*^9, 3.551443781393821*^9, 3.551443956389523*^9, 
   3.551444434189946*^9, 3.551445029388831*^9, 3.5514564413174343`*^9, {
   3.55145985068361*^9, 3.551459855867298*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"afgeleide", "=", 
  RowBox[{
   SubscriptBox["\[PartialD]", "x"], 
   SuperscriptBox["l", "2"]}]}]], "Input",
 CellChangeTimes->{{3.551442685575953*^9, 3.551442749155698*^9}, {
  3.5514431840970297`*^9, 3.551443186824429*^9}, {3.5514437516209373`*^9, 
  3.5514437650367317`*^9}, {3.551444443132783*^9, 3.551444471678537*^9}}],

Cell[BoxData[
 RowBox[{"2", " ", 
  RowBox[{"(", 
   RowBox[{
    FractionBox[
     RowBox[{
      RowBox[{"-", 
       FractionBox["d", "2"]}], "+", "x"}], 
     SqrtBox[
      RowBox[{
       SuperscriptBox["r", "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", 
           FractionBox["d", "2"]}], "+", "x"}], ")"}], "2"]}]]], "+", 
    FractionBox[
     RowBox[{
      FractionBox["d", "2"], "+", "x"}], 
     SqrtBox[
      RowBox[{
       SuperscriptBox["r", "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}]]]}], ")"}], " ", 
  RowBox[{"(", 
   RowBox[{
    SqrtBox[
     RowBox[{
      SuperscriptBox["r", "2"], "+", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          FractionBox["d", "2"]}], "+", "x"}], ")"}], "2"]}]], "+", 
    SqrtBox[
     RowBox[{
      SuperscriptBox["r", "2"], "+", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}]]}], 
   ")"}]}]], "Output",
 CellChangeTimes->{{3.551442709814581*^9, 3.551442731124834*^9}, 
   3.551442864343164*^9, {3.5514431774551373`*^9, 3.5514431887876883`*^9}, 
   3.551443784092883*^9, 3.5514439601167307`*^9, {3.551444445198645*^9, 
   3.551444472180543*^9}, 3.551445031159973*^9, 3.551456447236137*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"exponent", "=", 
  RowBox[{"e", "/.", 
   RowBox[{
    SuperscriptBox["l", "2"], "\[Rule]", "z"}]}]}]], "Input",
 CellChangeTimes->{{3.551443768832058*^9, 3.551443804102747*^9}, {
  3.551444482589819*^9, 3.551444482770956*^9}}],

Cell[BoxData[
 SuperscriptBox["\[ExponentialE]", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", "m", " ", "z"}], 
   RowBox[{"2", " ", "t", " ", "\[HBar]"}]]]], "Output",
 CellChangeTimes->{{3.551443787262869*^9, 3.551443804498844*^9}, 
   3.5514439601914387`*^9, 3.551444483512402*^9, 3.5514450373764277`*^9, 
   3.551456453213792*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"functie", "=", 
  RowBox[{
   RowBox[{"exponent", " ", 
    FractionBox["1", "afgeleide"]}], "/.", "substitutie"}]}]], "Input",
 CellChangeTimes->{{3.551443806449102*^9, 3.5514438255112886`*^9}, {
  3.551443866236014*^9, 3.551443898180388*^9}, {3.5514442890061817`*^9, 
  3.551444295258629*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", "z"}], 
      RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], "/", 
    RowBox[{"(", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        FractionBox[
         RowBox[{
          RowBox[{"-", 
           FractionBox["d", "2"]}], "-", 
          FractionBox[
           RowBox[{
            SqrtBox["z"], " ", 
            SqrtBox[
             RowBox[{
              RowBox[{"-", 
               SuperscriptBox["d", "2"]}], "-", 
              RowBox[{"4", " ", 
               SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
           SqrtBox[
            RowBox[{
             RowBox[{
              RowBox[{"-", "4"}], " ", 
              SuperscriptBox["d", "2"]}], "+", 
             RowBox[{"4", " ", "z"}]}]]]}], 
         SqrtBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", 
               FractionBox["d", "2"]}], "-", 
              FractionBox[
               RowBox[{
                SqrtBox["z"], " ", 
                SqrtBox[
                 RowBox[{
                  RowBox[{"-", 
                   SuperscriptBox["d", "2"]}], "-", 
                  RowBox[{"4", " ", 
                   SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
               SqrtBox[
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "4"}], " ", 
                  SuperscriptBox["d", "2"]}], "+", 
                 RowBox[{"4", " ", "z"}]}]]]}], ")"}], "2"]}]]], "+", 
        FractionBox[
         RowBox[{
          FractionBox["d", "2"], "-", 
          FractionBox[
           RowBox[{
            SqrtBox["z"], " ", 
            SqrtBox[
             RowBox[{
              RowBox[{"-", 
               SuperscriptBox["d", "2"]}], "-", 
              RowBox[{"4", " ", 
               SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
           SqrtBox[
            RowBox[{
             RowBox[{
              RowBox[{"-", "4"}], " ", 
              SuperscriptBox["d", "2"]}], "+", 
             RowBox[{"4", " ", "z"}]}]]]}], 
         SqrtBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              FractionBox["d", "2"], "-", 
              FractionBox[
               RowBox[{
                SqrtBox["z"], " ", 
                SqrtBox[
                 RowBox[{
                  RowBox[{"-", 
                   SuperscriptBox["d", "2"]}], "-", 
                  RowBox[{"4", " ", 
                   SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
               SqrtBox[
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "4"}], " ", 
                  SuperscriptBox["d", "2"]}], "+", 
                 RowBox[{"4", " ", "z"}]}]]]}], ")"}], "2"]}]]]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        SqrtBox[
         RowBox[{
          SuperscriptBox["r", "2"], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              FractionBox["d", "2"]}], "-", 
             FractionBox[
              RowBox[{
               SqrtBox["z"], " ", 
               SqrtBox[
                RowBox[{
                 RowBox[{"-", 
                  SuperscriptBox["d", "2"]}], "-", 
                 RowBox[{"4", " ", 
                  SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
              SqrtBox[
               RowBox[{
                RowBox[{
                 RowBox[{"-", "4"}], " ", 
                 SuperscriptBox["d", "2"]}], "+", 
                RowBox[{"4", " ", "z"}]}]]]}], ")"}], "2"]}]], "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["r", "2"], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             FractionBox["d", "2"], "-", 
             FractionBox[
              RowBox[{
               SqrtBox["z"], " ", 
               SqrtBox[
                RowBox[{
                 RowBox[{"-", 
                  SuperscriptBox["d", "2"]}], "-", 
                 RowBox[{"4", " ", 
                  SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
              SqrtBox[
               RowBox[{
                RowBox[{
                 RowBox[{"-", "4"}], " ", 
                 SuperscriptBox["d", "2"]}], "+", 
                RowBox[{"4", " ", "z"}]}]]]}], ")"}], "2"]}]]}], ")"}]}], 
     ")"}]}], ",", 
   RowBox[{
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "m", " ", "z"}], 
      RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], "/", 
    RowBox[{"(", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        FractionBox[
         RowBox[{
          RowBox[{"-", 
           FractionBox["d", "2"]}], "+", 
          FractionBox[
           RowBox[{
            SqrtBox["z"], " ", 
            SqrtBox[
             RowBox[{
              RowBox[{"-", 
               SuperscriptBox["d", "2"]}], "-", 
              RowBox[{"4", " ", 
               SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
           SqrtBox[
            RowBox[{
             RowBox[{
              RowBox[{"-", "4"}], " ", 
              SuperscriptBox["d", "2"]}], "+", 
             RowBox[{"4", " ", "z"}]}]]]}], 
         SqrtBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", 
               FractionBox["d", "2"]}], "+", 
              FractionBox[
               RowBox[{
                SqrtBox["z"], " ", 
                SqrtBox[
                 RowBox[{
                  RowBox[{"-", 
                   SuperscriptBox["d", "2"]}], "-", 
                  RowBox[{"4", " ", 
                   SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
               SqrtBox[
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "4"}], " ", 
                  SuperscriptBox["d", "2"]}], "+", 
                 RowBox[{"4", " ", "z"}]}]]]}], ")"}], "2"]}]]], "+", 
        FractionBox[
         RowBox[{
          FractionBox["d", "2"], "+", 
          FractionBox[
           RowBox[{
            SqrtBox["z"], " ", 
            SqrtBox[
             RowBox[{
              RowBox[{"-", 
               SuperscriptBox["d", "2"]}], "-", 
              RowBox[{"4", " ", 
               SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
           SqrtBox[
            RowBox[{
             RowBox[{
              RowBox[{"-", "4"}], " ", 
              SuperscriptBox["d", "2"]}], "+", 
             RowBox[{"4", " ", "z"}]}]]]}], 
         SqrtBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              FractionBox["d", "2"], "+", 
              FractionBox[
               RowBox[{
                SqrtBox["z"], " ", 
                SqrtBox[
                 RowBox[{
                  RowBox[{"-", 
                   SuperscriptBox["d", "2"]}], "-", 
                  RowBox[{"4", " ", 
                   SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
               SqrtBox[
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "4"}], " ", 
                  SuperscriptBox["d", "2"]}], "+", 
                 RowBox[{"4", " ", "z"}]}]]]}], ")"}], "2"]}]]]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        SqrtBox[
         RowBox[{
          SuperscriptBox["r", "2"], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              FractionBox["d", "2"]}], "+", 
             FractionBox[
              RowBox[{
               SqrtBox["z"], " ", 
               SqrtBox[
                RowBox[{
                 RowBox[{"-", 
                  SuperscriptBox["d", "2"]}], "-", 
                 RowBox[{"4", " ", 
                  SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
              SqrtBox[
               RowBox[{
                RowBox[{
                 RowBox[{"-", "4"}], " ", 
                 SuperscriptBox["d", "2"]}], "+", 
                RowBox[{"4", " ", "z"}]}]]]}], ")"}], "2"]}]], "+", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["r", "2"], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             FractionBox["d", "2"], "+", 
             FractionBox[
              RowBox[{
               SqrtBox["z"], " ", 
               SqrtBox[
                RowBox[{
                 RowBox[{"-", 
                  SuperscriptBox["d", "2"]}], "-", 
                 RowBox[{"4", " ", 
                  SuperscriptBox["r", "2"]}], "+", "z"}]]}], 
              SqrtBox[
               RowBox[{
                RowBox[{
                 RowBox[{"-", "4"}], " ", 
                 SuperscriptBox["d", "2"]}], "+", 
                RowBox[{"4", " ", "z"}]}]]]}], ")"}], "2"]}]]}], ")"}]}], 
     ")"}]}]}], "}"}]], "Output",
 CellChangeTimes->{{3.5514438140237827`*^9, 3.5514438267962713`*^9}, {
   3.551443878317995*^9, 3.551443884520061*^9}, 3.551443944344624*^9, 
   3.551444177900463*^9, 3.5514444899484777`*^9, 3.55144503905772*^9, 
   3.5514564576189957`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"c", " ", 
   RowBox[{"functie", "[", 
    RowBox[{"[", "1", "]"}], "]"}]}], "//", "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.5514452831202087`*^9, 3.551445314420787*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"\[ImaginaryI]", " ", 
     SuperscriptBox["\[ExponentialE]", 
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", "m", " ", "z"}], 
       RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m", " ", 
     RowBox[{"(", 
      RowBox[{
       SqrtBox[
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             FractionBox["d", "2"]}], "+", "x"}], ")"}], "2"]}]], "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}]]}], ")"}]}], 
    ")"}], "/", 
   RowBox[{"(", 
    RowBox[{"4", " ", "\[Pi]", " ", "t", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["r", "2"], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              FractionBox["d", "2"]}], "+", "x"}], ")"}], "2"]}], ")"}], " ", 
        
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["r", "2"], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             FractionBox["d", "2"], "+", "x"}], ")"}], "2"]}], ")"}]}], ")"}], 
      RowBox[{"1", "/", "4"}]], " ", 
     RowBox[{"(", 
      RowBox[{
       FractionBox[
        RowBox[{"d", "-", 
         FractionBox[
          SqrtBox[
           RowBox[{"z", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", 
               SuperscriptBox["d", "2"]}], "-", 
              RowBox[{"4", " ", 
               SuperscriptBox["r", "2"]}], "+", "z"}], ")"}]}]], 
          SqrtBox[
           RowBox[{
            RowBox[{"-", 
             SuperscriptBox["d", "2"]}], "+", "z"}]]]}], 
        RowBox[{"2", " ", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["r", "2"], "+", 
           RowBox[{
            FractionBox["1", "4"], " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"d", "-", 
               FractionBox[
                SqrtBox[
                 RowBox[{"z", " ", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox["d", "2"]}], "-", 
                    RowBox[{"4", " ", 
                    SuperscriptBox["r", "2"]}], "+", "z"}], ")"}]}]], 
                SqrtBox[
                 RowBox[{
                  RowBox[{"-", 
                   SuperscriptBox["d", "2"]}], "+", "z"}]]]}], ")"}], 
             "2"]}]}]]}]], "+", 
       FractionBox[
        RowBox[{
         RowBox[{"-", 
          FractionBox["d", "2"]}], "-", 
         FractionBox[
          SqrtBox[
           RowBox[{"z", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", 
               SuperscriptBox["d", "2"]}], "-", 
              RowBox[{"4", " ", 
               SuperscriptBox["r", "2"]}], "+", "z"}], ")"}]}]], 
          RowBox[{"2", " ", 
           SqrtBox[
            RowBox[{
             RowBox[{"-", 
              SuperscriptBox["d", "2"]}], "+", "z"}]]}]]}], 
        SqrtBox[
         RowBox[{
          SuperscriptBox["r", "2"], "+", 
          RowBox[{
           FractionBox["1", "4"], " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"d", "+", 
              FractionBox[
               SqrtBox[
                RowBox[{"z", " ", 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"-", 
                    SuperscriptBox["d", "2"]}], "-", 
                   RowBox[{"4", " ", 
                    SuperscriptBox["r", "2"]}], "+", "z"}], ")"}]}]], 
               SqrtBox[
                RowBox[{
                 RowBox[{"-", 
                  SuperscriptBox["d", "2"]}], "+", "z"}]]]}], ")"}], 
            "2"]}]}]]]}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       SqrtBox[
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         RowBox[{
          FractionBox["1", "4"], " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"d", "-", 
             FractionBox[
              SqrtBox[
               RowBox[{"z", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"-", 
                   SuperscriptBox["d", "2"]}], "-", 
                  RowBox[{"4", " ", 
                   SuperscriptBox["r", "2"]}], "+", "z"}], ")"}]}]], 
              SqrtBox[
               RowBox[{
                RowBox[{"-", 
                 SuperscriptBox["d", "2"]}], "+", "z"}]]]}], ")"}], "2"]}]}]],
        "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["r", "2"], "+", 
         RowBox[{
          FractionBox["1", "4"], " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"d", "+", 
             FractionBox[
              SqrtBox[
               RowBox[{"z", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"-", 
                   SuperscriptBox["d", "2"]}], "-", 
                  RowBox[{"4", " ", 
                   SuperscriptBox["r", "2"]}], "+", "z"}], ")"}]}]], 
              SqrtBox[
               RowBox[{
                RowBox[{"-", 
                 SuperscriptBox["d", "2"]}], "+", "z"}]]]}], ")"}], 
           "2"]}]}]]}], ")"}], " ", "\[HBar]"}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.551445285142591*^9, 3.551445309162327*^9}, 
   3.551445477261763*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"grens", "=", 
  RowBox[{
   RowBox[{
    SuperscriptBox["l", "2"], "/.", 
    RowBox[{"x", "\[Rule]", "0"}]}], "//", "Simplify"}]}]], "Input",
 CellChangeTimes->{{3.551444006084875*^9, 3.5514440168045588`*^9}, {
  3.5514445081981153`*^9, 3.551444515059216*^9}}],

Cell[BoxData[
 RowBox[{
  SuperscriptBox["d", "2"], "+", 
  RowBox[{"4", " ", 
   SuperscriptBox["r", "2"]}]}]], "Output",
 CellChangeTimes->{
  3.551444177968555*^9, {3.551444509101698*^9, 3.551444515609385*^9}, 
   3.551445058604534*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"bovengrens", "=", 
  RowBox[{"Limit", "[", 
   RowBox[{
    SuperscriptBox["l", "2"], ",", 
    RowBox[{"x", "\[Rule]", "\[Infinity]"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551445153847582*^9, 3.551445201428385*^9}}],

Cell[BoxData["\[Infinity]"], "Output",
 CellChangeTimes->{{3.551445163375368*^9, 3.551445176843176*^9}, 
   3.5514452076307917`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ondergrens", "=", 
  RowBox[{"Limit", "[", 
   RowBox[{
    SuperscriptBox["l", "2"], ",", 
    RowBox[{"x", "\[Rule]", "0"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551445100109694*^9, 3.551445108937772*^9}, {
  3.551445142332326*^9, 3.551445149818244*^9}, {3.5514451937168427`*^9, 
  3.551445211980764*^9}}],

Cell[BoxData[
 RowBox[{
  SuperscriptBox["d", "2"], "+", 
  RowBox[{"4", " ", 
   SuperscriptBox["r", "2"]}]}]], "Output",
 CellChangeTimes->{{3.551445103412301*^9, 3.551445109856041*^9}, 
   3.5514451508847113`*^9, {3.5514451974175787`*^9, 3.551445212539564*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", "ondergrens", "bovengrens"], 
  RowBox[{
   RowBox[{"functie", "[", 
    RowBox[{"[", "1", "]"}], "]"}], 
   RowBox[{"\[DifferentialD]", "z"}]}]}]], "Input",
 CellChangeTimes->{{3.551443975834749*^9, 3.551444022596901*^9}, {
  3.551444546827982*^9, 3.5514445476518803`*^9}, {3.551445216237412*^9, 
  3.551445220148644*^9}}],

Cell[BoxData["$Aborted"], "Output",
 CellChangeTimes->{3.551444423893675*^9, 3.551445018990259*^9, 
  3.551445096235504*^9, 3.55144527760623*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    FractionBox["1", 
     RowBox[{
      SubscriptBox["\[PartialD]", "x"], "l"}]], "e"}], "/.", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{"z", "\[Equal]", "l"}], ",", "x"}], "]"}]}], "//", 
  "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.5514428905002003`*^9, 3.5514429483714733`*^9}, {
  3.551443438203253*^9, 3.551443455538754*^9}, {3.551443610879052*^9, 
  3.5514437036690617`*^9}}],

Cell[BoxData["$Aborted"], "Output",
 CellChangeTimes->{{3.551443441220243*^9, 3.551443456385625*^9}, 
   3.5514435017017393`*^9, {3.551443613745946*^9, 3.55144366740751*^9}, 
   3.551443699337377*^9, 3.551443778375307*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Calc", "Subsection",
 CellChangeTimes->{{3.551338699004993*^9, 3.551338702151379*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"rExpan", 
   OverscriptBox["d", "_"], "ie"}], "=", 
  RowBox[{
   RowBox[{"Serie", 
    RowBox[{
     OverscriptBox["d", "_"], "[", 
     RowBox[{"\[Psi]", ",", 
      RowBox[{"{", 
       RowBox[{"r", ",", "0", ",", "1"}], "}"}]}], "]"}]}], "//", 
   "FullSimplify"}]}]], "Input",
 CellChangeTimes->{{3.551263107737871*^9, 3.551263117791061*^9}, {
   3.551263262678059*^9, 3.551263262748028*^9}, 3.551344518944845*^9, {
   3.551344621546618*^9, 3.5513446238088512`*^9}, {3.551344712086792*^9, 
   3.5513447143169537`*^9}, {3.55134474674232*^9, 3.551344753198277*^9}, {
   3.5514420768605337`*^9, 3.551442076928673*^9}}],

Cell[BoxData[
 InterpretationBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", 
      SuperscriptBox["\[ExponentialE]", 
       FractionBox[
        RowBox[{"\[ImaginaryI]", " ", "m", " ", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["s", "2"], "+", 
           SuperscriptBox["x", "2"], "+", 
           RowBox[{"Abs", "[", 
            RowBox[{
             SuperscriptBox["s", "2"], "-", 
             SuperscriptBox["x", "2"]}], "]"}]}], ")"}]}], 
        RowBox[{"t", " ", "\[HBar]"}]]], " ", "m", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Abs", "[", 
         RowBox[{"s", "-", "x"}], "]"}], "+", 
        RowBox[{"Abs", "[", 
         RowBox[{"s", "+", "x"}], "]"}]}], ")"}]}], 
     RowBox[{"2", " ", "\[Pi]", " ", "t", " ", "\[HBar]", " ", 
      SqrtBox[
       RowBox[{"Abs", "[", 
        RowBox[{
         SuperscriptBox["s", "2"], "-", 
         SuperscriptBox["x", "2"]}], "]"}]]}]]}], "+", 
   InterpretationBox[
    SuperscriptBox[
     RowBox[{"O", "[", "r", "]"}], "2"],
    SeriesData[$CellContext`r, 0, {}, 0, 2, 1],
    Editable->False]}],
  SeriesData[$CellContext`r, 0, {((((((Complex[0, 
            Rational[-1, 2]] 
          E^((((Complex[
                0, 1] $CellContext`m)/$CellContext`t)/$CellContext`\[HBar]) \
($CellContext`s^2 + $CellContext`x^2 + 
             Abs[$CellContext`s^2 - $CellContext`x^2]))) $CellContext`m)/
        Pi)/$CellContext`t)/$CellContext`\[HBar]) (
      Abs[$CellContext`s - $CellContext`x] + 
      Abs[$CellContext`s + $CellContext`x])) 
    Abs[$CellContext`s^2 - $CellContext`x^2]^Rational[-1, 2]}, 0, 2, 1],
  Editable->False]], "Output",
 CellChangeTimes->{
  3.551263154611167*^9, 3.5512632632465878`*^9, 3.55126400990639*^9, 
   3.551340182586399*^9, {3.551344618463517*^9, 3.5513446267258663`*^9}, 
   3.551344714735216*^9, 3.551344759046177*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"rNul", "=", 
  RowBox[{"FullSimplify", "[", 
   RowBox[{"\[Psi]", "/.", 
    RowBox[{"r", "\[Rule]", "0"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.551344729693536*^9, 3.551344757221798*^9}, {
  3.5513447962485113`*^9, 3.55134480605577*^9}}],

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
          RowBox[{"Abs", "[", 
           RowBox[{"s", "-", "x"}], "]"}], "+", 
          RowBox[{"Abs", "[", 
           RowBox[{"s", "+", "x"}], "]"}]}], ")"}], "2"]}], 
      RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{"s", "-", "x"}], "]"}], "+", 
      RowBox[{"Abs", "[", 
       RowBox[{"s", "+", "x"}], "]"}]}], ")"}]}], 
   RowBox[{"2", " ", "\[Pi]", " ", "t", " ", "\[HBar]", " ", 
    SqrtBox[
     RowBox[{"Abs", "[", 
      RowBox[{
       SuperscriptBox["s", "2"], "-", 
       SuperscriptBox["x", "2"]}], "]"}]]}]]}]], "Output",
 CellChangeTimes->{
  3.551344731150407*^9, {3.5513447612317657`*^9, 3.551344808157846*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"\[Psi]Expan", 
   OverscriptBox["d", "_"], "ie"}], "=", 
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
   RowBox[{"rExpan", 
    OverscriptBox["d", "_"], "ie", 
    RowBox[{"\[DifferentialD]", "x"}]}]}]}]], "Input",
 CellChangeTimes->{{3.551342047992229*^9, 3.551342066033317*^9}, {
   3.55134428820113*^9, 3.551344289549593*^9}, 3.551344375387022*^9, {
   3.551344892778907*^9, 3.5513449005473757`*^9}, {3.551442077114805*^9, 
   3.551442077178754*^9}}],

Cell[BoxData[
 TagBox[GridBox[{
    {"\[Piecewise]", GridBox[{
       {
        FractionBox[
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            FractionBox["1", "2"], "-", 
            FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", 
          SuperscriptBox["\[ExponentialE]", 
           FractionBox[
            RowBox[{"2", " ", "\[ImaginaryI]", " ", "m", " ", 
             SuperscriptBox["s", "2"]}], 
            RowBox[{"t", " ", "\[HBar]"}]]], " ", "m"}], 
         RowBox[{
          SqrtBox["\[Pi]"], " ", 
          SqrtBox[
           RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]], 
        RowBox[{"s", "\[Equal]", "0"}]},
       {
        FractionBox[
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            FractionBox["1", "2"], "+", 
            FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", 
          SuperscriptBox["\[ExponentialE]", 
           FractionBox[
            RowBox[{"2", " ", "\[ImaginaryI]", " ", "m", " ", 
             SuperscriptBox["s", "2"]}], 
            RowBox[{"t", " ", "\[HBar]"}]]], " ", "m", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"-", "\[ImaginaryI]"}], " ", "t", " ", "\[HBar]"}], "+", 
            
            RowBox[{
             RowBox[{"(", 
              RowBox[{"1", "+", "\[ImaginaryI]"}], ")"}], " ", 
             SqrtBox["\[Pi]"], " ", "s", " ", 
             SqrtBox[
              RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]}], ")"}]}], 
         RowBox[{
          SqrtBox["\[Pi]"], " ", "t", " ", "\[HBar]", " ", 
          SqrtBox[
           RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]], 
        RowBox[{"s", "<", "0"}]},
       {
        RowBox[{"-", 
         FractionBox[
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             FractionBox["1", "2"], "+", 
             FractionBox["\[ImaginaryI]", "2"]}], ")"}], " ", 
           SuperscriptBox["\[ExponentialE]", 
            FractionBox[
             RowBox[{"2", " ", "\[ImaginaryI]", " ", "m", " ", 
              SuperscriptBox["s", "2"]}], 
             RowBox[{"t", " ", "\[HBar]"}]]], " ", "m", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"\[ImaginaryI]", " ", "t", " ", "\[HBar]"}], "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"1", "+", "\[ImaginaryI]"}], ")"}], " ", 
              SqrtBox["\[Pi]"], " ", "s", " ", 
              SqrtBox[
               RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]}], ")"}]}], 
          RowBox[{
           SqrtBox["\[Pi]"], " ", "t", " ", "\[HBar]", " ", 
           SqrtBox[
            RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]]}], 
        TagBox["True",
         "PiecewiseDefault",
         AutoDelete->True]}
      },
      AllowedDimensions->{2, Automatic},
      Editable->True,
      GridBoxAlignment->{
       "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
        "RowsIndexed" -> {}},
      GridBoxItemSize->{
       "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
        "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.84]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}},
      Selectable->True]}
   },
   GridBoxAlignment->{
    "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
     "RowsIndexed" -> {}},
   GridBoxItemSize->{
    "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
     "RowsIndexed" -> {}},
   GridBoxSpacings->{"Columns" -> {
       Offset[0.27999999999999997`], {
        Offset[0.35]}, 
       Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
       Offset[0.2], {
        Offset[0.4]}, 
       Offset[0.2]}, "RowsIndexed" -> {}}],
  "Piecewise",
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True,
  Selectable->False]], "Output",
 CellChangeTimes->{3.551344344962084*^9, 3.55134492307672*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[Psi]Nul", "=", 
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
   RowBox[{"rNul", 
    RowBox[{"\[DifferentialD]", "x"}]}]}]}]], "Input",
 CellChangeTimes->{{3.5513449063070393`*^9, 3.55134491588321*^9}}],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"Integrate", "::", "idiv"}], "MessageName"], ":", 
  " ", "\<\"Integral of \[NoBreak]\\!\\(\\(\[ExponentialE]\\^\\(\\(\
\[ImaginaryI]\\\\ m\\\\ \\((\\(\[LeftSkeleton] 1 \
\[RightSkeleton]\\))\\)\\^2\\)\\/\\(2\\\\ t\\\\ \[HBar]\\)\\)\\\\ \
\\(\\((\\(\\(Abs[\\(\\(s - x\\)\\)]\\)\\) + \\(\\(Abs[\\(\\(s + \
x\\)\\)]\\)\\))\\)\\)\\)\\/\\@\\(Abs[\\(\\(s\\^2 - x\\^2\\)\\)]\\)\\)\
\[NoBreak] does not converge on \[NoBreak]\\!\\({\\(\\(-\[Infinity]\\)\\), \
\[Infinity]}\\)\[NoBreak]. \\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", \
ButtonStyle->\\\"Link\\\", ButtonFrame->None, \
ButtonData:>\\\"paclet:ref/message/Integrate/idiv\\\", ButtonNote -> \
\\\"Integrate::idiv\\\"]\\)\"\>"}]], "Message", "MSG",
 CellChangeTimes->{3.551344948394689*^9}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
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
            RowBox[{"Abs", "[", 
             RowBox[{"s", "-", "x"}], "]"}], "+", 
            RowBox[{"Abs", "[", 
             RowBox[{"s", "+", "x"}], "]"}]}], ")"}], "2"]}], 
        RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Abs", "[", 
         RowBox[{"s", "-", "x"}], "]"}], "+", 
        RowBox[{"Abs", "[", 
         RowBox[{"s", "+", "x"}], "]"}]}], ")"}]}], 
     RowBox[{"2", " ", "\[Pi]", " ", "t", " ", "\[HBar]", " ", 
      SqrtBox[
       RowBox[{"Abs", "[", 
        RowBox[{
         SuperscriptBox["s", "2"], "-", 
         SuperscriptBox["x", "2"]}], "]"}]]}]]}], 
   RowBox[{"\[DifferentialD]", "x"}]}]}]], "Output",
 CellChangeTimes->{3.551344948398137*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"normExpan", 
   OverscriptBox["d", "_"], "ie"}], "=", 
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
   RowBox[{"k", " ", "Ab", 
    SuperscriptBox[
     RowBox[{
      OverscriptBox["d", "_"], "[", 
      RowBox[{"\[Psi]Expan", 
       OverscriptBox["d", "_"], "ie"}], "]"}], "2"], 
    RowBox[{"\[DifferentialD]", 
     OverscriptBox["d", "_"]}]}]}]}]], "Input",
 CellChangeTimes->{{3.551344389610983*^9, 3.551344408569901*^9}, {
  3.551344922172089*^9, 3.551344935804389*^9}, {3.551442077379674*^9, 
  3.551442077579398*^9}}],

Cell[BoxData[
 RowBox[{"k", " ", "\[Infinity]"}]], "Output",
 CellChangeTimes->{3.551344961612383*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"normNul", "=", 
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
   RowBox[{"k", " ", "Ab", 
    SuperscriptBox[
     RowBox[{
      OverscriptBox["d", "_"], "[", "\[Psi]Nul", "]"}], "2"], 
    RowBox[{"\[DifferentialD]", 
     OverscriptBox["d", "_"]}]}]}]}]], "Input",
 CellChangeTimes->{{3.551344943158354*^9, 3.5513449487014637`*^9}, {
  3.551442077680423*^9, 3.551442077746876*^9}}],

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

Cell[BoxData["$Aborted"], "Output",
 CellChangeTimes->{3.551264070971406*^9, 3.551340185512109*^9}]
}, Open  ]]
}, Open  ]]
},
WindowToolbars->{},
WindowSize->{761, 683},
WindowMargins->{{Automatic, 76}, {Automatic, 0}},
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
Cell[1257, 32, 91, 1, 34, "Subsection"],
Cell[1351, 35, 1476, 27, 27, "Input",
 InitializationCell->True],
Cell[2830, 64, 1170, 23, 65, "Input",
 InitializationCell->True],
Cell[4003, 89, 1099, 22, 65, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[5127, 115, 362, 7, 27, "Input",
 InitializationCell->True],
Cell[5492, 124, 709, 21, 66, "Output"]
}, Open  ]],
Cell[6216, 148, 351, 8, 46, "Input",
 InitializationCell->True],
Cell[6570, 158, 583, 11, 46, "Input",
 InitializationCell->True],
Cell[7156, 171, 509, 10, 46, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[7690, 185, 661, 15, 52, "Input",
 InitializationCell->True],
Cell[8354, 202, 2058, 55, 105, "Output",
 InitializationCell->True]
}, Open  ]],
Cell[CellGroupData[{
Cell[10449, 262, 370, 10, 49, "Input",
 InitializationCell->True],
Cell[10822, 274, 1338, 33, 62, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[12197, 312, 294, 6, 27, "Input",
 InitializationCell->True],
Cell[12494, 320, 3031, 81, 140, "Output",
 InitializationCell->True]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[15574, 407, 98, 1, 34, "Subsection"],
Cell[15675, 410, 152, 3, 44, "Input"],
Cell[CellGroupData[{
Cell[15852, 417, 638, 19, 65, "Input"],
Cell[16493, 438, 641, 19, 65, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17171, 462, 322, 9, 52, "Input"],
Cell[17496, 473, 191, 6, 54, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17724, 484, 873, 27, 65, "Input"],
Cell[18600, 513, 1005, 29, 71, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[19642, 547, 1221, 36, 95, "Input"],
Cell[20866, 585, 250, 5, 27, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[21153, 595, 578, 17, 53, "Input"],
Cell[21734, 614, 568, 18, 54, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[22339, 637, 473, 15, 65, "Input"],
Cell[22815, 654, 507, 17, 65, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[23359, 676, 972, 29, 65, "Input"],
Cell[24334, 707, 3160, 58, 249, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[27543, 771, 151, 2, 34, "Subsection"],
Cell[CellGroupData[{
Cell[27719, 777, 539, 10, 33, "Input"],
Cell[28261, 789, 1426, 43, 65, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[29724, 837, 349, 7, 30, "Input"],
Cell[30076, 846, 1406, 47, 94, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[31519, 898, 251, 6, 30, "Input"],
Cell[31773, 906, 338, 7, 38, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[32148, 918, 319, 7, 49, "Input"],
Cell[32470, 927, 9380, 284, 487, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[41887, 1216, 212, 5, 27, "Input"],
Cell[42102, 1223, 5637, 176, 460, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[47776, 1404, 285, 7, 30, "Input"],
Cell[48064, 1413, 239, 7, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[48340, 1425, 247, 6, 33, "Input"],
Cell[48590, 1433, 132, 2, 27, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[48759, 1440, 337, 8, 33, "Input"],
Cell[49099, 1450, 264, 6, 30, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[49400, 1461, 382, 9, 48, "Input"],
Cell[49785, 1472, 145, 2, 27, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[49967, 1479, 448, 13, 49, "Input"],
Cell[50418, 1494, 222, 3, 27, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[50689, 1503, 92, 1, 34, "Subsection"],
Cell[CellGroupData[{
Cell[50806, 1508, 655, 16, 30, "Input"],
Cell[51464, 1526, 1895, 49, 75, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[53396, 1580, 268, 6, 27, "Input"],
Cell[53667, 1588, 970, 28, 71, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[54674, 1621, 542, 13, 45, "Input"],
Cell[55219, 1636, 4113, 113, 157, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[59369, 1754, 282, 7, 45, "Input"],
Cell[59654, 1763, 789, 14, 78, "Message"],
Cell[60446, 1779, 1121, 32, 71, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[61604, 1816, 616, 17, 45, "Input"],
Cell[62223, 1835, 102, 2, 27, "Output"]
}, Open  ]],
Cell[62340, 1840, 461, 12, 45, "Input"],
Cell[CellGroupData[{
Cell[62826, 1856, 332, 8, 45, "Input"],
Cell[63161, 1866, 99, 1, 27, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 8xDaT3gOKuoRDD1Rq4xYYlNf *)
