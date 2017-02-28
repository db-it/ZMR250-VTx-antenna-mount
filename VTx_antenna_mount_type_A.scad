holderHeight = 27;

module base() {
    hull() {
        translate([-4.55, 0, 0]) cube([9.1, 1, 5]);
        translate([-5.5, 14, 0]) cube([11, 1, 5]);
    }
}

module antennaHolder() {
    difference() {
        base();
        hull() {
            translate([0, 10, 2]) cylinder(h=3, d=9.1, $fn=30);
            translate([-4.55, 14, 2]) cube([9.1, 1, 3]);
        }
    }
}

module cylinderPart() {
    difference() {
        cylinder(h = holderHeight, d = 9.1, $fn=30);
        cylinder(h = holderHeight, d = 5.55, $fn=45); // hole
    }
}

module main() {
    cylinderPart();
    difference() {
        antennaHolder();
        cylinder(h = holderHeight, d = 5.55, $fn=45); // hole
    }

}

main();
