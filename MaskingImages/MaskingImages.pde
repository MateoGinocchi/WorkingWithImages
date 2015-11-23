PImage bb;
PImage mask;

void setup() {
  size(620,397);
  bb = loadImage("gabe.jpg");
  mask = loadImage("HEART.jpg");
  bb.mask(mask);
}

void draw() {
  background(0);
  image(bb,0,0);
}