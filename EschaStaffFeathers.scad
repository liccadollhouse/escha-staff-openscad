include <EschaStaffMaster.scad>;

difference()
{
    scale([1,1.25,1])
union()
{
 
    intersection()
    {
        union()
        {
            translate([-2.5,-42,328]) scale([1,4.2,3.5]) rotate([30,0,0]) FeatherPrimitive();
            translate([-2.5,51,343]) scale([1,3.5,3.7]) rotate([-10,0,0]) FeatherPrimitive();
            translate([-2.5,91,314]) scale([1,3.5,3.7]) rotate([-35,0,0]) FeatherPrimitive();
        }
        translate([0,160,200]) cube([20,200,400],center=true);
    }
}

//translate([0,0,-325]) cylinder(d=PipeDiameter,h=900,center=true,$fn=200);
}