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
NotebookDataLength[     23085,        668]
NotebookOptionsPosition[     21512,        594]
NotebookOutlinePosition[     21909,        612]
CellTagsIndexPosition[     21866,        609]
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
   3.551456396948758*^9, 3.551456414223942*^9}, {3.551539417759823*^9, 
   3.55153941833125*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"l1", "=", 
   RowBox[{"Abs", "[", 
    RowBox[{
     FractionBox["d", "2"], "+", "x"}], "]"}]}], ";"}]], "Input",
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
   3.551456388965102*^9}, {3.551540426555825*^9, 3.551540436903919*^9}, {
   3.551540617831994*^9, 3.5515406199114017`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"l2", "=", 
   RowBox[{"Abs", "[", 
    RowBox[{
     FractionBox["d", "2"], "-", "x"}], "]"}]}], ";"}]], "Input",
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
   3.551456391436811*^9}, {3.551540447995616*^9, 3.551540450056334*^9}, {
   3.551540555657832*^9, 3.551540558553053*^9}, {3.551540623279385*^9, 
   3.551540627215513*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"l", "=", 
   RowBox[{"l1", "+", "l2"}]}], ";"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.551262983669705*^9, 3.551262986273654*^9}, 
   3.5512630252113028`*^9, {3.55134034710905*^9, 3.551340375853732*^9}, 
   3.551340411707952*^9, {3.551340667582192*^9, 3.5513406986227407`*^9}, 
   3.551340742962265*^9, 3.551441826080467*^9, 3.5515406395832148`*^9}],

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
   RowBox[{"2", " ", "\[Pi]", " ", "\[HBar]", " ", 
    SqrtBox[
     RowBox[{"Abs", "[", 
      RowBox[{
       FractionBox["d", "2"], "-", "x"}], "]"}]], " ", 
    SqrtBox[
     RowBox[{"Abs", "[", 
      RowBox[{
       FractionBox["d", "2"], "+", "x"}], "]"}]], " ", 
    SqrtBox[
     FractionBox[
      SuperscriptBox["t", "2"], 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"Abs", "[", 
          RowBox[{
           FractionBox["d", "2"], "-", "x"}], "]"}], "+", 
         RowBox[{"Abs", "[", 
          RowBox[{
           FractionBox["d", "2"], "+", "x"}], "]"}]}], ")"}], 
       "2"]]]}]]}]], "Output",
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
   3.551463870161175*^9, 3.551531113384741*^9, 3.551540645863955*^9}]
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
       RowBox[{"Abs", "[", 
        RowBox[{
         FractionBox["d", "2"], "-", "x"}], "]"}], "+", 
       RowBox[{"Abs", "[", 
        RowBox[{
         FractionBox["d", "2"], "+", "x"}], "]"}]}], ")"}], "2"]}], 
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
   3.551463870212349*^9, 3.551531113434287*^9, 3.5515406541731443`*^9}]
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
          RowBox[{"Abs", "[", 
           RowBox[{
            FractionBox["d", "2"], "-", "x"}], "]"}], "+", 
          RowBox[{"Abs", "[", 
           RowBox[{
            FractionBox["d", "2"], "+", "x"}], "]"}]}], ")"}], "2"]}], 
      RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m"}], 
   RowBox[{"2", " ", "\[Pi]", " ", "\[HBar]", " ", 
    SqrtBox[
     RowBox[{"Abs", "[", 
      RowBox[{
       FractionBox["d", "2"], "-", "x"}], "]"}]], " ", 
    SqrtBox[
     RowBox[{"Abs", "[", 
      RowBox[{
       FractionBox["d", "2"], "+", "x"}], "]"}]], " ", 
    SqrtBox[
     FractionBox[
      SuperscriptBox["t", "2"], 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"Abs", "[", 
          RowBox[{
           FractionBox["d", "2"], "-", "x"}], "]"}], "+", 
         RowBox[{"Abs", "[", 
          RowBox[{
           FractionBox["d", "2"], "+", "x"}], "]"}]}], ")"}], 
       "2"]]]}]]}]], "Output",
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
   3.551531113485261*^9, 3.551540662107645*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Berekeningen", "Subsection",
 CellChangeTimes->{{3.5515406800242023`*^9, 3.551540681261591*^9}, {
  3.5515413200326157`*^9, 3.551541320168494*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{"\[Psi]", ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "b"}], ",", "b"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.5515406837679*^9, 3.5515407032354717`*^9}}],

Cell[BoxData[
 RowBox[{
  SubsuperscriptBox["\[Integral]", 
   RowBox[{"-", "b"}], "b"], 
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
             RowBox[{
              FractionBox["d", "2"], "-", "x"}], "]"}], "+", 
            RowBox[{"Abs", "[", 
             RowBox[{
              FractionBox["d", "2"], "+", "x"}], "]"}]}], ")"}], "2"]}], 
        RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m"}], 
     RowBox[{"2", " ", "\[Pi]", " ", "\[HBar]", " ", 
      SqrtBox[
       RowBox[{"Abs", "[", 
        RowBox[{
         FractionBox["d", "2"], "-", "x"}], "]"}]], " ", 
      SqrtBox[
       RowBox[{"Abs", "[", 
        RowBox[{
         FractionBox["d", "2"], "+", "x"}], "]"}]], " ", 
      SqrtBox[
       FractionBox[
        SuperscriptBox["t", "2"], 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"Abs", "[", 
            RowBox[{
             FractionBox["d", "2"], "-", "x"}], "]"}], "+", 
           RowBox[{"Abs", "[", 
            RowBox[{
             FractionBox["d", "2"], "+", "x"}], "]"}]}], ")"}], "2"]]]}]]}], 
   RowBox[{"\[DifferentialD]", "x"}]}]}]], "Output",
 CellChangeTimes->{3.5515408585216208`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{"\[Psi]", ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "\[Infinity]"}], ",", "\[Infinity]"}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.551540707478544*^9, 3.5515407167666817`*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", 
       SuperscriptBox["d", "2"], " ", "m"}], 
      RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", "m", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "+", "\[ImaginaryI]"}], ")"}], " ", "t", " ", 
       "\[HBar]"}], "+", 
      RowBox[{"d", " ", 
       SqrtBox["\[Pi]"], " ", 
       SqrtBox[
        RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]}], ")"}]}], 
   RowBox[{"2", " ", 
    SqrtBox["\[Pi]"], " ", "t", " ", "\[HBar]", " ", 
    SqrtBox[
     RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]]}]], "Output",
 CellChangeTimes->{3.551540898171579*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Out", "[", "17", "]"}], "//", "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.551540976070879*^9, 3.5515409814319487`*^9}}],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox[
   RowBox[{"\[ImaginaryI]", " ", 
    SuperscriptBox["\[ExponentialE]", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", 
       SuperscriptBox["d", "2"], " ", "m"}], 
      RowBox[{"2", " ", "t", " ", "\[HBar]"}]]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"d", " ", "m", " ", 
       SqrtBox["\[Pi]"]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "+", "\[ImaginaryI]"}], ")"}], " ", 
       SqrtBox[
        RowBox[{"m", " ", "t", " ", "\[HBar]"}]]}]}], ")"}]}], 
   RowBox[{"2", " ", 
    SqrtBox["\[Pi]"], " ", "t", " ", "\[HBar]"}]]}]], "Output",
 CellChangeTimes->{3.551540982285445*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{
   RowBox[{"Out", "[", "18", "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"d", ",", 
     RowBox[{"-", "\[Infinity]"}], ",", "\[Infinity]"}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.5515409942827997`*^9, 3.551541006574069*^9}}],

Cell[BoxData["1"], "Output",
 CellChangeTimes->{3.55154102591774*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Integrate", "[", 
   RowBox[{
    SuperscriptBox[
     RowBox[{"Abs", "[", 
      RowBox[{"Out", "[", "17", "]"}], "]"}], "2"], ",", 
    RowBox[{"{", 
     RowBox[{"d", ",", 
      RowBox[{"-", "\[Infinity]"}], ",", "\[Infinity]"}], "}"}]}], "]"}], "//",
   "Simplify"}]], "Input",
 CellChangeTimes->{{3.551541077502103*^9, 3.5515411214001637`*^9}}],

Cell[BoxData["\[Infinity]"], "Output",
 CellChangeTimes->{{3.55154108164633*^9, 3.551541122205749*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{"\[Psi]", ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "\[Infinity]"}], ",", "\[Infinity]"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"d", ",", 
     RowBox[{"-", "\[Infinity]"}], ",", "\[Infinity]"}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.551541139711565*^9, 3.551541158136138*^9}}],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "2"], "+", 
  RowBox[{
   SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
   RowBox[{
    RowBox[{"-", 
     FractionBox[
      RowBox[{"2", " ", "\[ImaginaryI]", " ", 
       SuperscriptBox["\[ExponentialE]", 
        FractionBox[
         RowBox[{"2", " ", "\[ImaginaryI]", " ", "m", " ", 
          SuperscriptBox["x", "2"]}], 
         RowBox[{"t", " ", "\[HBar]"}]]], " ", "m", " ", "x"}], 
      RowBox[{"t", " ", "\[HBar]"}]]}], 
    RowBox[{"\[DifferentialD]", "x"}]}]}], "+", 
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{"-", "\[Infinity]"}], "0"], 
   RowBox[{
    FractionBox[
     RowBox[{"2", " ", "\[ImaginaryI]", " ", 
      SuperscriptBox["\[ExponentialE]", 
       FractionBox[
        RowBox[{"2", " ", "\[ImaginaryI]", " ", "m", " ", 
         SuperscriptBox["x", "2"]}], 
        RowBox[{"t", " ", "\[HBar]"}]]], " ", "m", " ", "x"}], 
     RowBox[{"t", " ", "\[HBar]"}]], 
    RowBox[{"\[DifferentialD]", "x"}]}]}]}]], "Output",
 CellChangeTimes->{3.5515411767213984`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Out", "[", "24", "]"}], "//", "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.551541192640068*^9, 3.551541199887765*^9}}],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "2"], "+", 
  RowBox[{
   SubsuperscriptBox["\[Integral]", "0", "\[Infinity]"], 
   RowBox[{
    RowBox[{"-", 
     FractionBox[
      RowBox[{"2", " ", "\[ImaginaryI]", " ", 
       SuperscriptBox["\[ExponentialE]", 
        FractionBox[
         RowBox[{"2", " ", "\[ImaginaryI]", " ", "m", " ", 
          SuperscriptBox["x", "2"]}], 
         RowBox[{"t", " ", "\[HBar]"}]]], " ", "m", " ", "x"}], 
      RowBox[{"t", " ", "\[HBar]"}]]}], 
    RowBox[{"\[DifferentialD]", "x"}]}]}], "+", 
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{"-", "\[Infinity]"}], "0"], 
   RowBox[{
    FractionBox[
     RowBox[{"2", " ", "\[ImaginaryI]", " ", 
      SuperscriptBox["\[ExponentialE]", 
       FractionBox[
        RowBox[{"2", " ", "\[ImaginaryI]", " ", "m", " ", 
         SuperscriptBox["x", "2"]}], 
        RowBox[{"t", " ", "\[HBar]"}]]], " ", "m", " ", "x"}], 
     RowBox[{"t", " ", "\[HBar]"}]], 
    RowBox[{"\[DifferentialD]", "x"}]}]}]}]], "Output",
 CellChangeTimes->{3.551541201909766*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrate", "[", 
  RowBox[{
   RowBox[{"Exp", "[", 
    RowBox[{"\[ImaginaryI]", " ", 
     SuperscriptBox["x", "2"]}], "]"}], " ", ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "\[Infinity]"}], ",", "\[Infinity]"}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.5515412212218447`*^9, 3.5515412968428164`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{"1", "+", "\[ImaginaryI]"}], ")"}], " ", 
  SqrtBox[
   FractionBox["\[Pi]", "2"]]}]], "Output",
 CellChangeTimes->{{3.551541245819296*^9, 3.551541300402491*^9}}]
}, Open  ]]
}, Open  ]]
},
WindowToolbars->{},
WindowSize->{761, 683},
WindowMargins->{{40, Automatic}, {Automatic, 0}},
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
Cell[1351, 35, 1489, 27, 27, "Input",
 InitializationCell->True],
Cell[2843, 64, 1174, 20, 46, "Input",
 InitializationCell->True],
Cell[4020, 86, 1151, 20, 46, "Input",
 InitializationCell->True],
Cell[5174, 108, 405, 8, 27, "Input",
 InitializationCell->True],
Cell[5582, 118, 351, 8, 46, "Input",
 InitializationCell->True],
Cell[5936, 128, 583, 11, 46, "Input",
 InitializationCell->True],
Cell[6522, 141, 509, 10, 46, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[7056, 155, 661, 15, 52, "Input",
 InitializationCell->True],
Cell[7720, 172, 1562, 38, 83, "Output",
 InitializationCell->True]
}, Open  ]],
Cell[CellGroupData[{
Cell[9319, 215, 370, 10, 49, "Input",
 InitializationCell->True],
Cell[9692, 227, 1107, 23, 48, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[10836, 255, 294, 6, 27, "Input",
 InitializationCell->True],
Cell[11133, 263, 2250, 54, 104, "Output",
 InitializationCell->True]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[13432, 323, 153, 2, 35, "Subsection"],
Cell[CellGroupData[{
Cell[13610, 329, 236, 6, 27, "Input"],
Cell[13849, 337, 1427, 43, 104, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15313, 385, 261, 7, 27, "Input"],
Cell[15577, 394, 774, 23, 67, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16388, 422, 160, 3, 27, "Input"],
Cell[16551, 427, 674, 20, 67, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17262, 452, 288, 8, 27, "Input"],
Cell[17553, 462, 69, 1, 27, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17659, 468, 385, 11, 33, "Input"],
Cell[18047, 481, 103, 1, 27, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18187, 487, 369, 10, 27, "Input"],
Cell[18559, 499, 1059, 29, 62, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[19655, 533, 158, 3, 27, "Input"],
Cell[19816, 538, 1057, 29, 62, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20910, 572, 358, 10, 33, "Input"],
Cell[21271, 584, 213, 6, 54, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature MxTw71S4FXYwLCwsKoUJtWqv *)
