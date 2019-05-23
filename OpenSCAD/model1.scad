difference() {
	
	cube([13, 5, 2.4]);
	
	translate([-0.1, 2.4, -0.5]) {
				cube([9.5, 5, 3]);
		}
		
	translate([0.2, 0.2, 0.2]) {
				cube([11.6, 2.0, 3]);
		}
		
	translate([9.6, 2.1, 0.2]) {
				cube([2.2, 2.7, 3]);
		}
		
	translate([12.0, -0.1, -0.1]) {
				cube([1.1, 2.9, 4]);
		} 

	translate([12, 3, -0.5]) {
				cube([3, 1.8, 4.5]);
		} 

	translate([11.6, 3, 0.2]) {
			cube([3, 1.8, 4.5]);
		}
	
	translate([-0.1, -0.1, 2.2]) {
				cube([14.1, 6, 4.5]);	
	}
	
	translate([0.85, 0.5, 0.6]) {
				cube([2.25, 5.0, 1.7]);	
	}
}

translate([0, -6, 0]) {
	difference() {
		
		cube([12, 5, 2.4]);
		
		translate([-0.1, 2.4, -0.5]) {
					cube([9.5, 5, 3]);
			}
		
		
		translate([-0.1, -0.1, 0.2]) {
					cube([26, 9, 3]);
			}
		
}
	
}
