
 class Bacteria {
      int myX, myY, myColor;
    Bacteria () {
      myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      myX = 200;
      myY = 200;
    }
    void move () {
      if (mouseX > myX)
      myX = myX + (int)(Math.random()*10)-2;
      else
      myX = myX + (int)(Math.random()*10)-6;
      if(mouseY> myY)
      myY = myY + (int)(Math.random()*10)-2;
      else
       myY = myY + (int)(Math.random()*10)-6;
      
      
    }
    void show() {
      fill(myColor);
      ellipse(myX, myY, 50, 10);
    }
  }
  
Bacteria [] carl;

void setup() {
  size(400, 400);
  carl = new Bacteria [50];
  for (int i = 0; i < carl.length; i++) {
    carl[i] = new Bacteria();
  }
}

void draw() {
  background(233,212,247);
  int j = 0;
  while (j < carl.length) {
    carl[j].move();
    carl[j].show();
    j++;
  }
}

void mousePressed(){
  redraw();
}
