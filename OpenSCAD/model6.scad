rotate([0, -90, 0]) {
    difference() {
        cube([2.3, 4.2, 2.7]);
        translate([0, 0, 0.2]) {
            cube([2.3, 0.7, 2.5]);
        }
        translate([0, 3.5, 0.2]) {
            cube([2.3, 0.7, 2.5]);
        }
        translate([0, 0.9, 0.0]) {
            cube([2.3, 2.4, 2.5]);
        }
        translate([1.15, 0.35, 0]) {
                cylinder(r=0.1, h=0.9, $fn = 10);
            }
         translate([1.15, 3.85, 0]) {
                cylinder(r=0.1, h=0.9, $fn = 10);
            }
    }
    translate([0, 4.4, 0]) {
        difference() {
            cube([2.3, 4.2, 2.7]);
            translate([0, 0, 0.2]) {
                cube([2.3, 0.7, 2.5]);
            }
            translate([0, 3.5, 0.2]) {
                cube([2.3, 0.7, 2.5]);
            }
            translate([0, 0.9, 0.0]) {
                cube([2.3, 2.4, 2.5]);
            }
           translate([1.15, 0.35, 0]) {
                cylinder(r=0.1, h=0.9, $fn = 10);
            }
         translate([1.15, 3.85, 0]) {
                cylinder(r=0.1, h=0.9, $fn = 10);
            }
        }
    } 
}



