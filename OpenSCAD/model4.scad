difference() {
    cylinder(r=10, h=0.2, center=true, $fn=100);
    translate([0, 7, 1]) {
        cube([7.2, 2.6, 10], center=true);
     }
    translate([8.2, 0, 1]) {
        cube([0.8, 0.8, 10], center=true);
     }
    translate([4.3, 7, 1]) {
        cube([0.3, 0.7, 10], center=true);
     }
    translate([9.2, 0, 0]) {
        cube([0.2, 2.6, 10], center=true);
     }
		translate([7.2, 0, 0]) {
        cube([0.2, 2.6, 10], center=true);
     }
		 translate([-9.2, 0, 0]) {
        cube([0.2, 2.6, 10], center=true);
     }
		translate([-7.2, 0, 0]) {
        cube([0.2, 2.6, 10], center=true);
     }
}

translate([9.7, 0, -0.10]) {
    cylinder(h=1, r=0.2, $fn=100);
}

translate([0, -9.7, -0.10]) {
   cylinder(h=1, r=0.2, $fn=100);
}

translate([-9.7, 0, -0.10]) {
   cylinder(h=1, r=0.2, $fn=100);
}

translate([0, 9.7, -0.10]) {
   cylinder(h=1, r=0.2, $fn=100);
}

