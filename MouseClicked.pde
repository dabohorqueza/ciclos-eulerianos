void mouseClicked() {
  if (key=='1') {
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
    int [] a = {100, 100, 200, 300, 300, 300, 300, 400, 500, 500};
    int [] b = {150, 450, 300, 450, 150, 250, 350, 300, 150, 450};
    for (i =0; i<a.length; i++) {
      mX= a [i];
      mY= b [i];
      if (abs (mX - mouseX)< 8 && abs (mY - mouseY) < 8) {
        value=value+1;
        eraser[value-1]=i;
        a1[value-1]= a[i];
        b1[value-1]= b[i];
      }
    }
  }
  if (key=='2') {
    int[][] M = {  {0, 1, 0, 0, 0, 1}, 
      {1, 0, 1, 1, 1, 0}, 
      {0, 1, 0, 1, 1, 1}, 
      {0, 1, 1, 0, 1, 1}, 
      {0, 1, 1, 1, 0, 1}, 
      {1, 0, 1, 1, 1, 0}, };
    int [] a = {300, 100, 150, 300, 450, 500};
    int [] b = {450, 300, 150, 350, 150, 300};
    for (i =0; i<a.length; i++) {
      mX= a [i];
      mY= b [i];
      if (abs (mX - mouseX)< 8 && abs (mY - mouseY) < 8) {
        value=value+1;
        eraser[value-1]=i;
        a1[value-1]= a[i];
        b1[value-1]= b[i];
      }
    }
  }
  if (key=='3') {
    
       int[][] M = {  {0, 1, 0, 0, 1, 0, 0, 0, 1, 0}, 
      {1, 0, 1, 0, 0, 0, 0, 0, 0, 0}, 
      {0, 1, 0, 1, 0, 0, 0, 1, 1, 0}, 
      {0, 0, 1, 0, 1, 0, 1, 1, 0, 0}, 
      {0, 0, 0, 1, 0, 1, 0, 0, 0, 0}, 
      {0, 0, 0, 0, 1, 0, 1, 0, 0, 0}, 
      {0, 0, 0, 1, 0, 1, 0, 0, 1, 1}, 
      {0, 0, 1, 1, 0, 0, 0, 0, 0, 0}, 
      {1, 0, 1, 0, 0, 0, 1, 0, 0, 1}, 
      {0, 0, 0, 0, 0, 0, 1, 0, 1, 0}, };
    int [] a = {200, 400, 400, 400, 400, 200, 200, 500, 200, 100};
    int [] b = {150, 150, 250, 350, 450, 450, 350, 300, 250, 350};
    for (i =0; i<a.length; i++) {
      mX= a [i];
      mY= b [i];
      if (abs (mX - mouseX)< 8 && abs (mY - mouseY) < 8) {
        value=value+1;
        eraser[value-1]=i;
        a1[value-1]= a[i];
        b1[value-1]= b[i];
      }
    }
  }
}