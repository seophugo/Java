float x1 = 730, y1 = 0, w1 = 800, l1 = 550;
float x2 = 0, y2 = 50, w2 = 300, h2 = 50;
float x3 = 290, y3 = 50, w3 = 50, h3 = 150;
float x4 = 290, y4 = 175, w4 = 175, h4 = 50;
float x5 = 465, y5 = 25, w5 = 50, h5 = 200;
float x6 = 465, y6 = 25, w6 = 225, h6 = 50;
float x7 = 640, y7 = 25, w7 = 50, h7 = 275;
float x8 = 40, y8 = 250, w8 = 650, h8 = 50;
float x9 = 40, y9 = 250, w9 = 50, h9 = 200;
float x10 = 40, y10 = 420, w10 = 600, h10 = 50;
float x11 = 620, y11 = 420, w11 = 50, h11 = 150;

int GrX1 = 315;
int KlX1 = 320;
int GrY1 = 50;

int GrY2 = 197;
int KlY2 = 200;
int GrX2 = 315;
int KlX2 = 320;

int GrX3 = 490;
int KlX3 = 495;
int KlY3 = 200;

int GrY4 = 48;
int KlY4 = 52;
int GrX4 = 490;

int GrX5 = 665;
int KlX5 = 670;
int GrY5 = 50;

int GrY6 = 275;
int KlY6 = 280;
int GrX6 = 550;

int x = 0;
int y = 75;
int Width = 25;
int Height = 30;
int horSpeed = 3;
int verSpeed = 0;

void setup() {
  size(900, 550);
  background(0, 220, 0);
  tekenRechthoeken();
  ellipse(65,275,25,25);
  ellipse(65,445,25,25);
  ellipse(645,445,25,25);
  ellipse(315,275,25,25);
}


void draw() {
  background(0, 220, 0);
  tekenRechthoeken();
  ellipse(x, y, Width, Height);
  y += verSpeed;
  x += horSpeed;
  
  if (x > GrX1 && x < KlX1 && y > GrY1) {
    horSpeed = 0;
    verSpeed = 1;
  }
  if (y > GrY2 && y < KlY2 && x > GrX2 && x < KlX2) {
    horSpeed = 3;
    verSpeed = 0;
  }
  if (x > GrX3 && x < KlX3 && y < KlY3) {
    horSpeed = 0;
    verSpeed = -3;
  }
  if (y > GrY4 && y < KlY4 && x > GrX4) {
    horSpeed = 3;
    verSpeed = 0;
  }
  if(x > GrX5 && x < KlX5 && y > GrY5){
    horSpeed = 0;
    verSpeed = 3;
  }
  if(y > GrY6 && y < KlY6 && x > GrX6){
    horSpeed = -3;
    verSpeed = 0;
  }
}

void tekenRechthoeken() {
  fill(192, 192, 192);
  strokeWeight(0);
  rect(x2, y2, w2, h2);
  rect(x3, y3, w3, h3);
  rect(x4, y4, w4, h4);
  rect(x5, y5, w5, h5);
  rect(x6, y6, w6, h6);
  rect(x7, y7, w7, h7);
  rect(x8, y8, w8, h8);
  rect(x9, y9, w9, h9);
  rect(x10, y10, w10, h10);
  rect(x11, y11, w11, h11);
  fill(222, 184, 135);
  strokeWeight(0);
  rect(x1, y1, w1, l1);
  fill(255, 0, 0);
}
