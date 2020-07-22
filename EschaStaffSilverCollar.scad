include <EschaStaffMaster.scad>;

difference()
{
    EschaStaffSilverCollar();
    translate([0,0,-450]) cylinder(d=PipeDiameter,h=900,center=true,$fn=200);
}