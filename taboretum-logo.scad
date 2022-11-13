$fn=100;
h=100;
r=50;
t=10;
a=20;


intersection() {
    cylinder(h, r, r);
    translate([-r, -5, 0]) {
        cube([100, t, h]);
    }
}

intersection() {
    cylinder(h, r, r);
    
    translate([-r, -t/2, 0]) {
        rotate([a, 0, 0]) {
            cube([2*r, t, h*1.1]);
        }
    }
}

intersection() {
    cylinder(h, r, r);
    
    translate([-r, -t/2, 0]) {
        rotate([-a, 0, 0]) {
            cube([2*r, t, h*1.1]);
        }
    }
}

cylinder(t, r, r);
