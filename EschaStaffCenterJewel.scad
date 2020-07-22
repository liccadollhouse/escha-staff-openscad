include <EschaStaffMaster.scad>;

// The new revised design has the jewel split into two halves 
// so the circular section can be inserted without a ton of glue coating it.
difference()
{
    intersection()
    {
        EschaStaffCenterJewel();
        translate([-50.1,0,0]) cube(100,center=true); // The 50.1 is to provide a tolerance for when the jewel is glued together.
    }
    cylinder(d=PipeDiameter,h=200,$fn=256,center=true);
}