include <EschaStaffMaster.scad>;

difference()
{
      EschaStaffSphereLower();
	translate([0,0,-325]) cylinder(d=PipeDiameter,h=900,center=true,$fn=200);
}

