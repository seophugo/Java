int x = 50;
int y = 50;
int grote = 20;
int horSpeed = 6;
int verSpeed = 6;

void setup(){
  size(1000,500);
}

void draw(){
  y += verSpeed;
  x += horSpeed;
  background(0);
  ellipse(x,y,grote,grote);
  if(x > 990){
    fill(25,155,100);
   horSpeed = -6;
  }
  if(x < 10){
    fill(0,0,255);
    horSpeed = 6;
  }
  if(y > 490){
    fill(0,255,0);
    verSpeed = -6;
  }
  if(y < 10){
    fill(255,0,0);
    verSpeed = 6;
  }
}
