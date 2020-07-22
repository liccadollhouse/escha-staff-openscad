include <EschaStaffMaster.scad>;

// The new revised design has the ferrule parts combined.
difference()
{
    union()
    {
        EschaStaffFerule();
        EschaStaffFeruleExit();
    }
    translate([0,0,30])cylinder(d=PipeDiameter,h=100,$fn=256);
    hull()
    {
        translate([0,0,30])cylinder(d=PipeDiameter,h=0.1,$fn=256);
        translate([0,0,-10])sphere(d=0.01,$fn=32);
    }
    translate([0,0,115]) cube(100,center=true);
}
