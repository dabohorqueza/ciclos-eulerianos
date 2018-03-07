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
int[] a = new int[10];
int[] b = new int[10];
void setup() {
  size(600, 600);
}    

void draw() {
  background(51, 0, 51);
  strokeWeight(6);
  int [] a = {100, 100, 200, 300, 300, 300, 300, 400, 500, 500};
  int [] b = {150, 450, 300, 450, 150, 250, 350, 300, 150, 450};
  pushStyle();
  strokeWeight(2);
  stroke(200,0,0);
  line(100,150,100,450);
  line(100,150,300,150);
  line(100,450,300,450);
  line(300,450,300,350);
  line(300,450,500,450);
  line(300,150,300,250);
  line(300,150,500,150);
  line(300,250,200,300); 
  line(200,300,300,350);
  line(300,250,300,350);
  line(300,250,400,300);
  line(400,300,300,350);
  line(500,150,500,450);
  popStyle();
  stroke(219, 190, 0);
  strokeWeight(7);
  point(100, 150);
  point(100, 450);
  point(200, 300);
  point(300, 450);
  point(300, 150);
  point(300, 250);
  point(300, 350);
  point(400, 300);
  point(500, 150);
  point(500, 450);
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
  if ( M[c][d] == 1 && value <=13) { 
    x1=a[c];
    y1=b[c];
    x2=a[d];
    y2=b[d];
    line(x1, y1, x2, y2);
  }
}
void mouseClicked() {
  for (i =0; i<=9; i++) {
    mX= a [i];
    mY= b [i];
    value=value+1;
    if (abs (mX - mouseX)< 5 && abs (mY - mouseY) < 5) {
      if (value%2 == 1) {
        c=i;
      } else {
        d=i;
      }
    }
  }
}