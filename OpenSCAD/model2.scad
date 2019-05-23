rotate([180, 0, 0]) {
	cube([19.5, 12.0, 0.2], center=true);

	translate([0, -7.5, 0]) {
		cube([4.0, 5.0, 0.2], center=true);
	}

	difference() {
		translate([9.50, 0, 0]) {
			rotate([0, 90, 0]) {
				difference() {
					cube([1.8, 4, 0.5], center=true);
					translate([0.475, 0, 0]) {
						cylinder(r=0.25, h=10, center=true, $fn=100);
					}
				}
			}
		}
		translate([0, 0, 2.6]) {
			cube([25, 20, 5], center=true);
		}
	}

	difference() {
		translate([-9.50, 0, 0]) {
			rotate([0, 90, 0]) {
				difference() {
					cube([1.8, 4, 0.5], center=true);
					translate([0.4, 0, -0.15]) {
						cube([0.7, 3.7, 0.21], center=true);
						}
				}
			}
		}
		translate([0, 0, 2.6]) {
			cube([25, 20, 5], center=true);
		}
	}
}
