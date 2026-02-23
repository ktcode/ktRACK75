//
// ktRACK75
//
//

gap1 = 0.001;
gap2 = 0.003;
th = 2;
thh = 2;


//cap();
//cam1();
cam2();



module cam2()
{
translate([45/2, 70/2-(78.5-70)/2-2, 0])
difference()
{
    union()
    {
        translate([0, 0, 0]) cylinder(h=12.5, r=93/2, $fn=100);
        translate([-45/2, -(70/2-(81-70)/2-2), 0])cap2();
    }
    rotate([0, 0,   0]) translate([0, -83/2+7.5, -10]) cylinder(h=30, r=4.7/2, $fn=100);
    rotate([0, 0,  90]) translate([0, -83/2+7.5, -10]) cylinder(h=30, r=4.7/2, $fn=100);
    //rotate([0, 0, 180]) translate([0, -83/2+7.5, -10]) cylinder(h=30, r=4.7/2, $fn=100);
    rotate([0, 0, 270]) translate([0, -83/2+7.5, -10]) cylinder(h=30, r=4.7/2, $fn=100);

    rotate([0, 0,   0]) translate([0, -83/2+7.5, -30+5]) cylinder(h=30, r=8.5/2, $fn=6);
    rotate([0, 0,  90]) translate([0, -83/2+7.5, -30+5]) cylinder(h=30, r=8.5/2, $fn=6);
    //rotate([0, 0, 180]) translate([0, -83/2+7.5, -30+5]) cylinder(h=30, r=8.5/2, $fn=6);
    rotate([0, 0, 270]) translate([0, -83/2+7.5, -30+5]) cylinder(h=30, r=8.5/2, $fn=6);
    
    translate([ 10, -20, 17.5]) rotate([-90-4.5, 0, -10]) cylinder(h=100, r=10/2, $fn=4);
    translate([-10, -20, 17.5]) rotate([-90-4.5, 0,  10]) cylinder(h=100, r=10/2, $fn=4);
}
}

module cam1()
{
translate([45/2, 70/2-(78.5-70)/2-5, 0])
difference()
{
    union()
    {
        translate([0, 0, 0]) cylinder(h=10, r=78.5/2, $fn=100);
        translate([-45/2, -(70/2-(78.5-70)/2-5), 0])cap();
    }
    rotate([0, 0,   0]) translate([0, -78.5/2+7.5, -10]) cylinder(h=30, r=4.2/2, $fn=100);
    rotate([0, 0, 120]) translate([0, -78.5/2+7.5, -10]) cylinder(h=30, r=4.2/2, $fn=100);
    rotate([0, 0, 240]) translate([0, -78.5/2+7.5, -10]) cylinder(h=30, r=4.2/2, $fn=100);

    rotate([0, 0,   0]) translate([0, -78.5/2+7.5, -30]) cylinder(h=30, r=10/2, $fn=100);
    rotate([0, 0, 120]) translate([0, -78.5/2+7.5, -30]) cylinder(h=30, r=10/2, $fn=100);
    rotate([0, 0, 240]) translate([0, -78.5/2+7.5, -30]) cylinder(h=30, r=10/2, $fn=100);
}
}


module cap2()
{
difference()
{
    union()
    {
        translate([0, 0, -th]) cube([45, 70, th]);
        translate([(45-40)/2, 6.5, -th-30*2]) cube([40, 47, 30*2]);
    }
        translate([(45-40)/2+th, 6.5+th, -th-30*2-gap1]) cube([40-th*2, 47-th*2, 30*2]);
}
}module cap()
{
difference()
{
    union()
    {
        translate([0, 0, -th]) cube([45, 70, th]);
        translate([(45-40)/2, 6.5, -th-30]) cube([40, 47, 30]);
    }
        translate([(45-40)/2+th, 6.5+th, -th-30-gap1]) cube([40-th*2, 47-th*2, 30]);
}
}






