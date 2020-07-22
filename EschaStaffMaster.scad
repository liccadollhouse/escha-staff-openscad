PipeDiameter = 28;
PipeRadius = PipeDiameter/2;

module WedgeRemoval45degree()
{
    linear_extrude(height=15)
    {
        polygon([[0,0],[0,1],[1,0]]);
    }
}

module FeatherPrimitive()
{
    mirror([0,1,1])
    rotate([0,-270,0])
linear_extrude(height=6)
{    
intersection()
{
    union()
    {
intersection()
{
    square([100,100]);
    
    
difference()
{
    circle(r=50,center=true,$fn=200);
    scale([0.65,0.85,1]) circle(r=50,center=true,$fn=200);
    
}

}
translate([41.2,0,0]) scale([1,0.75,1]) circle(d=17.5,center=true,$fn=200);
    }
    scale([0.75,0.8,1])circle(r=60,center=true,$fn=200);
    //translate([0,15,0])scale([0.75,0.8,1])circle(r=60,center=true,$fn=200);
    translate([5,46,0])rotate([0,0,45])scale([0.25,0.8,1])circle(r=60,center=true,$fn=200);
}
}
}

module EschaStaffCenterJewel()
{
    difference()
    {
    render()
    {
        minkowski()
        {
            union()
            {
    InnerRadius = PipeRadius+2;
    OuterRadius = PipeRadius+6;
    translate([0,0,-22.5])cylinder(h=25,r1=InnerRadius,r2=OuterRadius,center=true,$fn=200);
    cylinder(h=20,r=OuterRadius,center=true,$fn=200);
    translate([0,0,22.5]) cylinder(h=25,r1=OuterRadius,r2=InnerRadius,center=true,$fn=200); 
            }
            sphere(r=5,$fn=50);
        }
    }
    scale([1.05,1.05,1.05]) EschaStaffCircularHead();
    }
}

module EschaStaffCircularHead()
{
    HeadRadius = 180/2;
    HeadRadiusInner = HeadRadius-8;
    HeadRadiusOuter = HeadRadius+8;
    union()
    {
        difference()
        {
            translate([0,0,HeadRadius-3]) rotate([0,90,0]) cylinder(h=10,r=HeadRadiusOuter,center=true,$fn=256);
            translate([0,0,HeadRadius-3]) rotate([0,90,0]) cylinder(h=10+1,r=HeadRadiusInner,center=true,$fn=256);
            translate([0,HeadRadius-3,HeadRadius-3]) rotate([45,0,0]) cube([20,120,120],center=true);
            translate([0,HeadRadius-3,HeadRadius+40]) rotate([65,0,0]) cube([20,120,120],center=true);
            translate([-6,40,-9]) cube([2,2,60]);
            translate([-6,44,-9]) cube([2,2,60]);
            translate([-6,36,-9]) cube([2,2,60]);
            translate([-6,-40,-9]) cube([2,2,60]);
            translate([-6,-44,-9]) cube([2,2,60]);
            translate([-6,-36,-9]) cube([2,2,60]);
            translate([4,40,-9]) cube([2,2,60]);
            translate([4,44,-9]) cube([2,2,60]);
            translate([4,36,-9]) cube([2,2,60]);
            translate([4,-40,-9]) cube([2,2,60]);
            translate([4,-44,-9]) cube([2,2,60]);
            translate([4,-36,-9]) cube([2,2,60]);
            // Use as a position guide when assembly.
            translate([5.2,0,0]) cube([1,PipeDiameter-1,40],center=true);
        }
        translate([0,64.75,24.5]) rotate([0,90,0]) cylinder(d=16,h=10,center=true,$fn=256);
        translate([0,39,168]) rotate([0,90,0]) cylinder(d=16,h=10,center=true,$fn=256);
        translate([5,-25,-100])
        scale([1,1.5,3]) 
        rotate([90,0,270])
        linear_extrude(height=10)
        {
            intersection()
            {
                difference()
                {
                    circle(r=80,$fn=256);
                    scale([1.2,0.8,1]) circle(r=80,$fn=256);
                    translate([0,-100,0]) square([200,200],center=true);
                    translate([-60,100,0]) square([200,100],center=true);     
                }
                translate([20,45,0]) circle(r=40,$fn=256);
            }
        }
    }
}

module EschaStaffSilverCollar()
{
    InnerRadius = PipeRadius+14;
    OuterRadius = PipeRadius+18;
    difference()
    {
        translate([0,0,-45]) cylinder(h=10,r1=OuterRadius,r2=InnerRadius,$fn=200);
        scale([1.02,1.02,1.02]) EschaStaffCenterJewel();
    }
}

module EschaStaffSilverFlare()
{
    translate([0,0,-53])
    scale([1,1,1.5])
    rotate([0,180,0])
    rotate_extrude($fn=200)
    union()
    {
        translate([40,0,0])circle(r=5);
        translate([0,-5,0])square([40,10]);
        translate([0,5,0])
        difference()
        {
            square([40,90]);
            translate([435,142,0]) circle(r=420,$fn=200);
        }
    }
}

module EschaStaffBlackKnob()
{
    translate([0,0,-216])
    {
        intersection()
        {
            sphere(r=PipeRadius+15,$fn=200);
            cube([2*(PipeRadius+15)+1,2*(PipeRadius+15)+1,1.4*(PipeRadius+15)],center=true);
        }
    }
}

module EschaStaffGoldFlare()
{
    translate([0,0,-283])
    scale([1,1,0.5])
    rotate_extrude($fn=200)
    union()
    {
        difference()
        {
            square([40,90]);
            translate([435,142,0]) circle(r=420,$fn=200);
        }
    }
    
    translate([0,0,-283])
    scale([1,1,1.2])
    rotate([0,180,0])
    rotate_extrude($fn=200)
    union()
    {
        difference()
        {
            square([40,90]);
            translate([435,142,0]) circle(r=420,$fn=200);
        }
    }
}
module EschaStaffSphereUpper()
{
    SphereRadius = 100;
    
    intersection()
    {
        translate([0,0,85]) sphere(d=SphereRadius,$fn=200);
        translate([0,0,185]) cube(200,center=true);
    }
    
    
}

module EschaStaffSphereLower()
{
    SphereRadius = 100;
    difference()
    {
        translate([0,0,85]) sphere(d=SphereRadius,$fn=200);
        translate([0,0,185]) cube(200,center=true);
    }
    
    
}
module EschaStaffFeatherHood()
{
    hull()
    {
        scale([0.4,1,1]) translate([0,-15,150]) rotate([90,0,0]) cylinder(r=10,h=2,center=true,$fn=100);
        scale([0.4,1,1]) translate([0,75,180]) rotate([90,0,0]) cylinder(r=50,h=2,center=true,$fn=100);
    }
    
}
module EschaStaffFerule()
{
   // translate([0,0,-790])
    difference()
    {
    scale([2,2,3])
    rotate_extrude($fn=200)
    {
        translate([10,0,0]) circle(r=5,$fn=200);
        translate([8,7,0]) circle(r=3,$fn=200);
        translate([9,20,0]) circle(r=2,$fn=200);
        translate([5,0,0]) square(10,center=true);
        difference()
        {
            translate([0,-5,0]) square([10,26.88]);
            translate([17,0,0]) scale([0.5,1.5,1]) circle(r=20,$fn=200);
        }
    }
   // cylinder(r=5,h=70,$fn=100,center=true);
    }
}

module EschaStaffFeruleExit()
{
   // translate([0,0,-790])
    {
        cylinder(r=4.8,h=30,$fn=100,center=true);
        translate([0,0,-15]) sphere(r=4.8,$fn=100,center=true);
    }
}

module EschaStaffTopFerule()
{
    difference()
    {
    union()
    {
    translate([0,0,192])
    scale([0.7,0.7,0.7])
    rotate_extrude($fn=200)
    {
        translate([10,0,0]) circle(r=5,$fn=200);
        translate([8,7,0]) circle(r=3,$fn=200);
        translate([8,20,0]) circle(r=2,$fn=200);
        translate([5,0,0]) square(10,center=true);
        difference()
        {
            translate([0,-5,0]) square([10,25]);
            translate([17,0,0]) scale([0.5,1.5,1]) circle(r=20,$fn=200);
        }
    }
    //cylinder(r=5,h=70,$fn=100,center=true);
    
    translate([0,0,182]) 
    {
     
        minkowski()
            {
                cube([20,30,20],center=true);
                sphere(r=3,$fn=50);
            }
    }
    }
    scale([1.05,1.05,1.05]) EschaStaffCircularHead();
    translate([0,0,-15]) scale([1.05,1.05,1.05]) EschaStaffCircularHead();
    scale([1.05,1.05,1.05]) EschaStaffFeatherHood();
    }
}

