int c;
int d;
int x1;
int y1;
int x2;
int y2;
int mX;
int mY;
int i;
int value= 0;
int [] a = {100, 100, 200, 300, 300, 300, 300, 400, 500, 500};
int [] b = {150, 450, 300, 450, 150, 250, 350, 300, 150, 450};
int[] a1 = new int[15];
int[] b1 = new int[15];
color G;
int k;

void setup() {
  size(600, 600);
}    

void draw() {
  background(51, 0, 51);
  strokeWeight(6);
  pushStyle();
  strokeWeight(2);
  stroke(200, 0, 0);
  line(100, 150, 100, 450);
  line(100, 150, 300, 150);
  line(100, 450, 300, 450);
  line(300, 450, 300, 350);
  line(300, 450, 500, 450);
  line(300, 150, 300, 250);
  line(300, 150, 500, 150);
  line(300, 250, 200, 300); 
  line(200, 300, 300, 350);
  line(300, 250, 300, 350);
  line(300, 250, 400, 300);
  line(400, 300, 300, 350);
  line(500, 150, 500, 450);
  popStyle();
  pushStyle();
  stroke(219, 190, 0);
  strokeWeight(7);
  for (int j=0; j< 10; j++) {
    point (a[j], b[j]);
  } 
  popStyle();
  stroke (8, 88, 16);
  int[][] M = {  {0, 1, 0, 0, 1, 0, 0, 0, 0, 0}, 
    {1, 0, 0, 1, 0, 0, 0, 0, 0, 0}, 
    {0, 0, 0, 0, 0, 1, 1, 0, 0, 0}, 
    {0, 1, 0, 0, 0, 0, 1, 0, 0, 1}, 
    {1, 0, 0, 0, 0, 1, 0, 0, 1, 0}, 
    {0, 0, 1, 0, 1, 0, 1, 1, 0, 0}, 
    {0, 0, 1, 1, 0, 1, 0, 1, 0, 0}, 
    {0, 0, 0, 0, 0, 1, 1, 0, 0, 0}, 
    {0, 0, 0, 0, 1, 0, 0, 0, 0, 1}, 
    {0, 0, 0, 1, 0, 0, 0, 0, 1, 0}, };
  //&& G == color (219,190,0)
  for (int z=0; z<value; z++) {
  }
  if ( M[c][d] == 1 && value <=14 && value >1 ) { 
    for (k=0; (k+1)<value; k++) {
      x1=a1[(value-2-k)];
      y1=b1[(value-2-k)];
      x2=a1[(value-1-k)];
      y2=b1[(value-1-k)];
      line(x1, y1, x2, y2);
    }
  } else if ( M[c][d]==0 && value>1 && M[d][c]==0 ) {
    println("Invalid move");
  } else if (value >14) { 
    println ("Out of bounds, try again");
  }
}
void mouseClicked() {
  c=d;
  //G = get (mouseX, mouseY);
  for (i =0; i<=9; i++) {
    mX= a [i];
    mY= b [i];
    if (abs (mX - mouseX)< 6 && abs (mY - mouseY) < 6) {
      value=value+1;
      d=i;
      a1[value-1]= a[i];
      b1[value-1]= b[i];
    }
  }
}