$fn=48;

// WD HDD Dimmensions
// https://support.wdc.com/images/kb/2579-771970-A03.pdf
// Alt mount : https://pro.sony/s3/cms-static-content/operation-manual/4668278111.pdf
A1=17.8; // Height Min
A2=147;  // Length Max
A3=101.6;// Width

// Bottom Side
A5=3.18; // Bottom Screw Inset
A7=41.28;// First Mount
A6=44.45;// Second Mount Offset from first
A13=76.2;// Third Mount Offset from first

// Walls
A10=6.35; // Screw rise
A8=28.50; // First Mount
A9=101.60; // Second Mount

pcb_thickness=1.5875; // 1/16th of an in

brace_thick=2;
brace_spacing=48.5-brace_thick/2;

difference()
{
    union()
    {
difference(){
        union()
        {
            cube([5.175,A2,A1]);
            translate([A3-5.175,0,0])cube([5.175,A2,A1]);
            translate([0,brace_spacing,pcb_thickness])cube([A3,brace_thick,brace_thick]);
        }
        cube([A3,A2,2]);}
    }

translate([A5,A7,-1])cylinder(8,1.5,1.5);
translate([A3-A5,A7,-1])cylinder(8,1.5,1.5);
    
translate([A5,A7+A6,-1])cylinder(8,1.5,1.5);
translate([A3-A5,A7+A6,-1])cylinder(8,1.5,1.5);
    
translate([A5,A7+A13,-1])cylinder(8,1.5,1.5);
translate([A3-A5,A7+A13,-1])cylinder(8,1.5,1.5);
    
    
translate([-1,A8,A10])rotate([0,90,0])cylinder(800,1.5,1.5);
translate([-1,A8+A9,A10])rotate([0,90,0])cylinder(800,1.5,1.5);
}