include <EschaStaffMaster.scad>;

difference()
{
union()
{
    EschaStaffBlackKnob();
}

translate([0,0,-325]) cylinder(d=PipeDiameter,h=900,center=true,$fn=256);
}