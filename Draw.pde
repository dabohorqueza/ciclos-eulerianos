void draw(){
  background(51, 0, 51);
  image(img, 0, 0);
  if( key == '1') {
    strokeWeight(6);
    pushStyle();
    strokeWeight(7);
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
    strokeWeight(10);
    
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
    Nlines=13;
    for (int j=0; j< 10; j++) {
      point (a[j], b[j]);
    } 
    popStyle();
    stroke (63, 64, 51);
    strokeWeight (4);
    if (value >= 3) {
      for (int er=0; er < value-2; er++) {
        ce=eraser[er];
        de=eraser[er+1];
        M[ce][de]=0;
        M[de][ce]=0;
      }
    } 
    if (value ==1) {
      line(a1[0], b1[0], mouseX, mouseY);
    }
    if ( value <=Nlines && value >1 ) { 
      c=eraser[value-2];
      d=eraser[value-1];
      if (M[c][d] ==1) {
        line(a1[value-1], b1[value-1], mouseX, mouseY);
        for (k=0; (k+1)<value; k++) {
          x1=a1[(value-2-k)];
          y1=b1[(value-2-k)];
          x2=a1[(value-1-k)];
          y2=b1[(value-1-k)];
          line(x1, y1, x2, y2);
        }
      } else if ( M[c][d]==0 && value>1 && M[d][c]==0 ) {
        println("INVALID MOVE");
        value=0;
      }
    } else if (value >=Nlines) { 
      image(win,205,240);
    }}
    if (key=='2'){
     strokeWeight(6);
    pushStyle();
    strokeWeight(7);
    stroke(200, 0, 0);
    line(300, 450, 100, 300);
    line(100, 300, 150, 150);
    line(150, 150, 300, 350);
    line(300, 350, 100, 300);
    line(100, 300, 450, 150);
    line(450, 150, 150, 150);
    line(150, 150, 500, 300);
    line(500, 300, 450, 150); 
    line(450, 150, 300, 350);
    line(300, 350, 500, 300);
    line(500, 300, 300, 450);
    popStyle();
    pushStyle();
    stroke(219, 190, 0);
    strokeWeight(10);
    
       int[][] M = {  {0, 1, 0, 0, 0, 1}, 
                      {1, 0, 1, 1, 1, 0}, 
                      {0, 1, 0, 1, 1, 1}, 
                      {0, 1, 1, 0, 1, 1}, 
                      {0, 1, 1, 1, 0, 1}, 
                      {1, 0, 1, 1, 1, 0},  };
    int [] a = {300,100,150,300,450,500};
    int [] b = {450,300,150,350,150,300};
    Nlines=11;
     for (int j=0; j<6; j++) {
      point (a[j], b[j]);
    } 
    popStyle();
    stroke (63, 64, 51);
    strokeWeight (4);
    if (value >= 3) {
      for (int er=0; er < value-2; er++) {
        ce=eraser[er];
        de=eraser[er+1];
        M[ce][de]=0;
        M[de][ce]=0;
      }
    } 
    if (value ==1) {
      line(a1[0], b1[0], mouseX, mouseY);
    }
    if ( value <=Nlines && value >1 ) { 
      c=eraser[value-2];
      d=eraser[value-1];
      if (M[c][d] ==1) {
        line(a1[value-1], b1[value-1], mouseX, mouseY);
        for (k=0; (k+1)<value; k++) {
          x1=a1[(value-2-k)];
          y1=b1[(value-2-k)];
          x2=a1[(value-1-k)];
          y2=b1[(value-1-k)];
          line(x1, y1, x2, y2);
        }
      } else if ( M[c][d]==0 && value>1 && M[d][c]==0 ) {
        println("INVALID MOVE");
        value=0;
      }
    } else if (value >=Nlines) { 
      image(win,205,240);
    }
    
  }
  if(key=='3'){
       strokeWeight(6);
    pushStyle();
    strokeWeight(7);
    stroke(200, 0, 0);
    line(200, 150, 400, 150);
    line(400, 250, 400, 250);
    line(400, 250, 400, 350);
    line(400, 350, 400, 450);
    line(100, 300, 450, 150);
    line(450, 150, 150, 150);
    line(150, 150, 500, 300);
    line(500, 300, 450, 150); 
    line(450, 150, 300, 350);
    line(300, 350, 500, 300);
    line(500, 300, 300, 450);
    popStyle();
    pushStyle();
    stroke(219, 190, 0);
    strokeWeight(10);
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
    int [] b = {150, 150, 250, 350, 450, 450, 350, 300, 250, 300};
    Nlines=14;
        for (int j=0; j<10; j++) {
      point (a[j], b[j]);
    } 
    popStyle();
    stroke (63, 64, 51);
    strokeWeight (4);
    if (value >= 3) {
      for (int er=0; er < value-2; er++) {
        ce=eraser[er];
        de=eraser[er+1];
        M[ce][de]=0;
        M[de][ce]=0;
      }
    } 
    if (value ==1) {
      line(a1[0], b1[0], mouseX, mouseY);
    }
    if ( value <=Nlines && value >1 ) { 
      c=eraser[value-2];
      d=eraser[value-1];
      if (M[c][d] ==1) {
        line(a1[value-1], b1[value-1], mouseX, mouseY);
        for (k=0; (k+1)<value; k++) {
          x1=a1[(value-2-k)];
          y1=b1[(value-2-k)];
          x2=a1[(value-1-k)];
          y2=b1[(value-1-k)];
          line(x1, y1, x2, y2);
        }
      } else if ( M[c][d]==0 && value>1 && M[d][c]==0 ) {
        println("INVALID MOVE");
        value=0;
      }
    } else if (value >=Nlines) { 
      image(win,205,240);
    }
    
  }
  if (key=='r')
{value=0;}
    if(key=='e'){
    exit();}
    
   else {print("///");}
  }
 