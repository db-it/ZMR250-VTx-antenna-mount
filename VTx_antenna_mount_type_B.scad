holderHeight = 21;


module antennaPart() {
    difference() {
        hull() {
            translate([-4.55, 0, 0]) cube([9.1, 1, 5]);
            translate([-5.5, 14, 0]) cube([11, 1, 2]);
        }
        translate([-5.5, 5, 2]) cube([11, 10, 3]);
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
        antennaPart();
        cylinder(h = holderHeight, d = 5.55, $fn=45); // hole
    }

}

main();
