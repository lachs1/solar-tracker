difference() {
    cylinder(r=10, h=4, center=true, $fn=100);
    translate([0,0,0.2]) {
        cylinder(r=9.85, h=4, center=true, $fn=100);
      }

    cylinder(h=10, r=1.5, $fn=100, center=true);
          
}

    translate([9.85, 0, -1.3]) {
        rotate([0, 90, 0]) {
            cylinder(h=1.65, r=0.5, $fn=100);
        }
    }
    
    translate([-cos(60)*9.85, sin(60)*9.85 , -1.3]) {
        rotate([180, 90, -60]) {
            cylinder(h=1.65, r=0.5, $fn=100);
        }
    }
    
    translate([-cos(-60)*9.85, sin(-60)*9.85 , -1.3]) {
        rotate([180, 90, 60]) {
            cylinder(h=1.65, r=0.5, $fn=100);
        }
    }
