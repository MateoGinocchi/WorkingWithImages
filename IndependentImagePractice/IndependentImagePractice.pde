//declare images
PImage msn;
PImage trophy;
PImage con;
//decalre variables
float x, y, vx, vy;
float x2, y2, vx2, vy2;
void setup() {
  //set size of canvas
  size(800,600);
  //initialize images 
  msn = loadImage("MSN.jpg");
  trophy = loadImage("champion.jpg");
  con = loadImage("confetti.jpg");
  //initialize variables
  x = 0;
  y = 0;
  vx = 1;
  vy = 1;
  x2 = width-200;
  y2 = 0;
  vx2 = -2;
  vy2 = 3;
}

void draw() {
  //set background to confetti
  background(con);
  //draw msn
  image(msn, x, y);
  //add a filter
  filter(POSTERIZE,2);
  //draw trophy
  image(trophy, x2, y2);
 
 //add velocity in x and y 
  x+=vx;
  y+=vy;
  x2+=vx2;
  y2+=vy2;
  
  //if a picture hits a wall, it bounces
  if ( x<0 || x+634>width ){
    vx*=-1;    
  }
  if ( y<0 || y+345>height ){
    vy*=-1;    
  }
  if ( x2<0 || x2+200>width ){
    vx2*=-1;    
  }
  if ( y2<0 || y2+200>height ){
    vy2*=-1;    
  }
}