import Graphics.Implicit
import Graphics.Implicit.Definitions

tube = difference [
    Cylinder 20 12 11,
    Cylinder 24 10 9]
    
phalangeHoleFill = union [
    translate (0,-6,0) ((Rotate3 (-pi/4, 0,0) (Cylinder 20 12 12))),
    translate (0,6,15) (Rotate3 (pi/4,0,0) (Cylinder 20 12 12))]
    
basePhalange = difference [
    tube, phalangeHoleFill]
    
main = writeSTL 1 "finger.stl" phalangeHoleFill