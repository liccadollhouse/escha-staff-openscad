include <EschaStaffMaster.scad>;

difference()
{
union()
{
    EschaStaffGoldFlare();
}

translate([0,0,-325]) cylinder(d=PipeDiameter,h=900,center=true,$fn=256);
}