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
//cam2();
//cam3();
cam4();

module cam4()
{
difference()
{
    union()
    {
        translate([-45/2, -70/2, 0]) cap4();
        translate([0, 0, 24]) rotate([45, 0, 0]) base4();
    }
}
difference()
{
    union()
    {
        translate([-45/2, 32.5, 0]) rotate([90+9.05, 0, 0]) cube([45, 49.4, 56]);
    }
    translate([-100/2, -100/2, -100]) cube([100, 100, 100]);
    translate([-100/2, -30, 0]) rotate([45, 0, 0]) cube([100, 100, 100]);
}
}

module base4()
{
difference()
{
    union()
    {
        BR = 10;
        $fn=100;
        translate([-70/2, -70/2, 0])
        minkowski()
        {
            translate([BR, BR, 0]) cube([70-BR*2, 70-BR*2, 12.5-1]);
            cylinder(r=BR, h=1);
        }
    }
    translate([-54/2, -54/2, -10]) cylinder(h=30, r=4.7/2, $fn=100);
    translate([-54/2, -54/2, -30+5]) rotate([0, 0, 90]) cylinder(h=30, r=8.5/2, $fn=6);

    translate([ 54/2, -54/2, -10]) cylinder(h=30, r=4.7/2, $fn=100);
    translate([ 54/2, -54/2, -30+5]) rotate([0, 0, 90]) cylinder(h=30, r=8.5/2, $fn=6);

    translate([-54/2,  54/2, -10]) cylinder(h=30, r=4.7/2, $fn=100);
    translate([-54/2,  54/2, -30+5]) rotate([0, 0, 90]) cylinder(h=30, r=8.5/2, $fn=6);

    translate([ 54/2,  54/2, -10]) cylinder(h=30, r=4.7/2, $fn=100);
    translate([ 54/2,  54/2, -30+5]) rotate([0, 0, 90]) cylinder(h=30, r=8.5/2, $fn=6);

    //translate([ 10, -20, 17.5]) rotate([-90-4.5, 0, -10]) cylinder(h=100, r=10/2, $fn=4);
    //translate([-10, -20, 17.5]) rotate([-90-4.5, 0,  10]) cylinder(h=100, r=10/2, $fn=4);
}
}
module cam3()
{
difference()
{
    union()
    {
        translate([-45/2, -70/2, 0]) cap3();
        translate([0, 0, 70/2]) rotate([90, 0, 0]) base();
    }
    translate([-40/2+5/2, -12.5, 7]) rotate([7, 0, 0]) cube([5, 7, 70]);
    translate([-40/2+20-5/2, -12.5, 7]) rotate([7, 0, 0]) cube([5, 7, 70]);
    translate([-40/2+35-5/2, -12.5, 7]) rotate([7, 0, 0]) cube([5, 7, 70]);
}
difference()
{
    union()
    {
        translate([-40/2, 18.5, 0]) rotate([90+15, 0, 0]) cube([40, 72, 20]);
    }
    translate([-100/2, -100/2, -100]) cube([100, 100, 100]);
    translate([-100/2, -100, 0]) cube([100, 100, 100]);
}
}

module base()
{
difference()
{
    union()
    {
        BR = 10;
        $fn=100;
        translate([-70/2, -70/2, 0])
        minkowski()
        {
            translate([BR, BR, 0]) cube([70-BR*2, 70-BR*2, 12.5-1]);
            cylinder(r=BR, h=1);
        }
    }
    translate([-54/2, -54/2, -10]) cylinder(h=30, r=4.7/2, $fn=100);
    translate([-54/2, -54/2, -30+5]) rotate([0, 0, 90]) cylinder(h=30, r=8.5/2, $fn=6);

    translate([ 54/2, -54/2, -10]) cylinder(h=30, r=4.7/2, $fn=100);
    translate([ 54/2, -54/2, -30+5]) rotate([0, 0, 90]) cylinder(h=30, r=8.5/2, $fn=6);

    translate([-54/2,  54/2, -10]) cylinder(h=30, r=4.7/2, $fn=100);
    translate([-54/2,  54/2, -30+5]) rotate([0, 0, 90]) cylinder(h=30, r=8.5/2, $fn=6);

    translate([ 54/2,  54/2, -10]) cylinder(h=30, r=4.7/2, $fn=100);
    translate([ 54/2,  54/2, -30+5]) rotate([0, 0, 90]) cylinder(h=30, r=8.5/2, $fn=6);

    //translate([ 10, -20, 17.5]) rotate([-90-4.5, 0, -10]) cylinder(h=100, r=10/2, $fn=4);
    //translate([-10, -20, 17.5]) rotate([-90-4.5, 0,  10]) cylinder(h=100, r=10/2, $fn=4);
}
}

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

module cap4()
{
difference()
{
    union()
    {
        translate([0, 0, -th*3]) cube([45, 70, th*3]);
        //translate([(45-40)/2, 6.5, -th-30*2]) cube([40, 47, 30*2]);
        translate([(45-40)/2, 6.5-3, -th-30*2]) cube([40, 47+15, 30*2]);
    }
    translate([45/2, 6.5+th*2, -th*2-(40-th*4)/2]) rotate([0, 90, 90]) cylinder(h=47-th*4, r=(40-th*4)/2, $fn=100);
    translate([(45-40)/2+th*2, 6.5+th*2, -th*2-30*2-gap1]) cube([40-th*4, 47-th*4, 30*2-(40-th*4)/2]);

    translate([45/2-7/2, 6.5-3, -th*3-30*2]) cube([7, 4, 30*2]);

    translate([45/2-27/2, 6.5-4+63-4, -th*3-30*2]) cube([27, 4, 30*2]);
    translate([45/2-16/2, 6.5-4+63-8.5, -th*3-30*2]) cube([16, 8.5, 30*2]);
    translate([45/2-7/2, 6.5-4+63-12, -th*3-30*2]) cube([7, 12, 30*2]);

    translate([45/2-27/2, 6.5-4+63-4, -th*3-30*2]) rotate([0, 0, -39]) cube([7.1, 4, 30*2]);
    translate([45/2-27/2+27, 6.5-4+63-4, -th*3]) rotate([180, 0, 39+180]) cube([7.1, 4, 30*2]);

    C=5;
    translate([2.5, 2.5+sqrt(1/2)*C, -th*3-30*2]) rotate([0, 0,-90-45]) cube([C, C, 30*2]);
    translate([2.5+40, 2.5+sqrt(1/2)*C, -th*3-30*2]) rotate([0, 0,-90-45]) cube([C, C, 30*2]);
    translate([2.5, 2.5+sqrt(1/2)*C+65, -th*3-30*2]) rotate([0, 0,-90-45]) cube([C, C, 30*2]);
    translate([2.5+40, 2.5+sqrt(1/2)*C+65, -th*3-30*2]) rotate([0, 0,-90-45]) cube([C, C, 30*2]);
}
    translate([45/2-5/2, 6.5+3, -th-30*2]) cube([5, 47-3, 30*2]);
}
module cap3()
{
difference()
{
    union()
    {
        translate([0, 0, -th]) cube([45, 70, th]);
        translate([(45-40)/2, 6.5, -th-30*2]) cube([40, 47, 30*2]);
    }
    translate([45/2, 6.5+th*2, -th*2-(40-th*4)/2]) rotate([0, 90, 90]) cylinder(h=47-th*4, r=(40-th*4)/2, $fn=100);
    translate([(45-40)/2+th*2, 6.5+th*2, -th*2-30*2-gap1]) cube([40-th*4, 47-th*4, 30*2-(40-th*4)/2]);
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






