
 class Bacteria {
  int myX, myY, myColor;
  Bacteria () {
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  Bacteria (int x, int y ) {
    myX = x;
    myY = y;
  }
  void move () {
    myX = myX + (int)(Math.random()*10)-4;
    myY = myY + (int)(Math.random()*10)-4;
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, 50, 10);
  }
}
Bacteria [] carl = new Bacteria[100];
int x = 150;
void setup() {
  size(400, 400);
  background(0);
  
  for (int i = 0; i < colony.length; i++) {
    colony[i] = new Bacteria();
  }
}

void draw() {
  background(0);
 int j = 0;
  while (j < colony.length){
    colony[j].move();
    colony[j].show();
    j++;
   

  } 
  Bacteria carl;
  carl = new Bacteria();
  fill(255);
  carl.move();
  carl.show();
  int [] arr = {12, 34, 56};

  for (int i = 0; i < colony.length; i++) {
    fill((int)(Math.random()*255));
    colony[i].move();
    colony[i].show();
  }
}

//customize + add color
