import Graphics.Implicit
import Graphics.Implicit.Definitions

tube = difference [
    Cylinder 20 12 11,
    translate (0,0,-2)(Cylinder 24 10 9)] 

fingerFoldingHole = union [
    translate (0,-15,-10) ((Rotate3 (-pi/4, 0,0) (Cylinder 30 10 10))),
    translate (0,3,15) (Rotate3 (pi/3,0,0) (Cylinder 20 9 9))]

phalangeCutSpace = difference [
    fingerFoldingHole, rect3R 0 (-10,0,-30) (10,20,35)]

basePhalange = difference [
    tube, phalangeCutSpace]

comparisonOfObjects = union [
    translate (-30,0,0) (tube),
    phalangeCutSpace]
    
main = writeSTL 1 "finger.stl" basePhalange --comparisonOfObjects
