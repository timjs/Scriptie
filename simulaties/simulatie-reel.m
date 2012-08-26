(* ::Title:: *)
(*Reflecties*)

(* ::Section:: *)
(*Invoer*)

(* ::Subsection:: *)
(*Variabelen*)

detectorDistance = 10
plateDistance    = 5
plateLength      = 14
numberOfPaths    = 15
time             = 93459

(* ::Subsection:: *)
(*Constanten*)

ElectronMass = 9.10938*10^-31;
hBar         = 1.05457*10^-34;
mass         = ElectronMass

(* ::Section:: *)
(*Berekening*)

(* ::Subsection:: *)
(*Positie van bron en detector*)

sourcePosition   = {-(detectorDistance/2), plateDistance}
detectorPosition = {+(detectorDistance/2), plateDistance}

(* ::Subsection:: *)
(*Maat*)

measure = 1

(* ::Subsection:: *)
(*Reflectiepunten*)

pointDistance    = plateLength/numberOfPaths
reflectionPoints = Table[{-(plateLength/2) + n*pointDistance, 0},
                         {n, 0, numberOfPaths}];

(* ::Subsection:: *)
(*Paden*)

paths       = {sourcePosition, #, detectorPosition} &  /@ reflectionPoints;
pathLengths = EuclideanDistance[sourcePosition, #]
            + EuclideanDistance[#, detectorPosition]&  /@ reflectionPoints;

(* ::Subsection:: *)
(*Actie*)

velocities = pathLengths/time;
actions    = 1/2*mass*velocities^2*time;
phases     = actions/hBar;

(* ::Subsection:: *)
(*Fasoren*)

phasors      = measure*Exp[I*phases];
phasorSums   = FoldList[Plus, 0, phasors];
phasorPoints = {Re[#], Im[#]} &  /@ phasorSums;
result       = Last[phasorSums]
resultPoints = {{0, 0}, {Re[result], Im[result]}}

(* ::Section:: *)
(*Uitvoer*)

ListLinePlot[paths]
ListPlot[actions]
ListLinePlot[{phasorPoints, resultPoints}, 
             PlotStyle   -> {RGBColor[0.996, 0.800, 0.620],
                             Directive[Orange, Thick]}, 
             PlotMarkers -> {Automatic, Tiny}, 
             AxesLabel   -> {Re, Im}, 
             AxesStyle   -> Larger, 
             Ticks       -> None]
Abs[result]
Arg[result]
