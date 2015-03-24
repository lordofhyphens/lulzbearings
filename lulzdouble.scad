use<lulzbearing.scad>

module lulz_double_holder(x_sep=91-59,y_sep=64-39) {
  bearing_sep=64+39;
  height=6;
  for (i = [0:y_sep+6.4:bearing_sep]) {
    translate([0,i,0]) lulz_single_holder(x_sep=x_sep,y_sep=y_sep,height=height);
  }
  for (i = [y_sep+6.4:y_sep+6.4:bearing_sep-y_sep]) {
    translate([0,i,0]) lulz_single_holder(x_sep=x_sep,y_sep=y_sep,height=height,holes=false);
  }
}
lulz_double_holder();
