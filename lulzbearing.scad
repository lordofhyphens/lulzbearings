// Single bearing holder

// defaults to lm8uu dimensions
module lulz_single_holder(x_sep=91-59,y_sep=64-39,lm8uu=15, height=6.5, holes=true) {
  lm8uu_hold=lm8uu+3.5; // outer shell
  lm8uu_zip=lm8uu_hold+4; // ziptie cutouts
  block_height = height;
  $fs=0.2;
  difference() {
    union() {
      translate([-3.2,-3.2,0])cube([x_sep+6.4,y_sep+6.4,block_height]);
      translate([x_sep/2,-1,5+(lm8uu/2)])rotate([-90,0,0]) cylinder(r=lm8uu_hold/2,h=24);
    }
    translate([-3.2,-3.2,block_height])cube([x_sep+6.4,y_sep+6.4,20]);
    translate([-3.2+x_sep,-3.2,block_height/2])cube([x_sep+6.4,y_sep+6.4,20]);
    translate([-3.2-x_sep,-3.2,block_height/2])cube([x_sep+6.4,y_sep+6.4,20]);
    if (holes) {
      for (i = [0, x_sep]) {
        for (j = [0,y_sep]) {
          translate([i,j,0]) cylinder(r=3.2/2,h=10);
        }
      }
    }
    translate([x_sep/2,0.5,block_height-3+(lm8uu/2)])rotate([-90,0,0]) cylinder(r=lm8uu/2,h=24.2);
    for (i = [2, 10, 18]) {
      translate([0,i,0])
        difference() {
          translate([x_sep/2,0,block_height-3+(lm8uu/2)])rotate([-90,0,0]) cylinder(r=lm8uu_zip/2,h=5);
          translate([x_sep/2,-1,block_height-3+(lm8uu/2)])rotate([-90,0,0]) cylinder(r=lm8uu_hold/2,h=24);
          translate([x_sep/2,-1,block_height-3+(lm8uu/2)])rotate([-90,0,0]) cylinder(r=lm8uu/2,h=24);
        }
    }
  }
}

lulz_single_holder();
