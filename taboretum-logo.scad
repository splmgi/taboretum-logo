p=5;      //precision (1 - highest, 20 - lowest)
$fn=10*p; //technical
h=100;    //height
r=50;     //radius
t=10;     //thickness
a=20;     //angle

module legs() {
    hull() {
        translate([-r, -5, 0]) {
            cube([2*r, t, h-t/2]);
        }
        for(xi=[0:10:2*r]) {
            translate([-r+xi, 0, h-t/2]) {
                sphere(t/2);
            }
        };
    };

    hull() {
        translate([-r, -t/2, 0]) {
            rotate([a, 0, 0]) {
                cube([2*r, t, h]);
            }
        }
        for(xi=[0:10:2*r]) {
            translate([-r+xi, -sin(a)*h, h-t/2]) {
                sphere(t/2);
            }
        };
    };
    
    hull() {
        translate([-r, -t/2, 0]) {
            rotate([-a, 0, 0]) {
                cube([2*r, t, h]);
            }
        }
        for(xi=[0:10:2*r]) {
            translate([-r+xi, sin(a)*h, h-t/2]) {
                sphere(t/2);
            }
        };
    }
}

intersection() {
    cylinder(h, r, r);
    legs();
}

hull() {
    cylinder(t, r, r);
    for(ri=[0:10:360]) {
        rotate([0, 0, ri]) {
            translate([r, 0, t/2]) {
                sphere(t/2);
            }
        }
    };
}