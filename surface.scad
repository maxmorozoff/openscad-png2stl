/* [FILE] */

FILE = "img1.png";

/* [SLICE MODEL] */

SLICE_ON = false;
SLICE_SHOW = false;
SLICE_X = 0;//[-100:1:100]
SLICE_Y = 0;//[-100:1:100]
SLICE_Z = 0;//[-100:1:100]


SLICE_SIZE = [100,100,100];
SLICE_COLOR = "DodgerBlue"; // [DodgerBlue,Lime,DarkKhaki,DarkMagenta,LightPink]

COLORS = ["DodgerBlue","Lime","DarkKhaki","DarkMagenta","LightPink"];


module SliceModel() {
  difference(){
    union() children();
    if (SLICE_ON) {
      if (SLICE_SHOW) {
        #translate([SLICE_X,SLICE_Y,SLICE_Z])
        cube(SLICE_SIZE);
      } else {
        color(SLICE_COLOR,.51)
        translate([SLICE_X,SLICE_Y,SLICE_Z])
        cube(SLICE_SIZE);
      }
    }
  }
}

SliceModel()
// scale([-.5,.5,1])
surface(file = FILE, center = false, convexity = 5);
