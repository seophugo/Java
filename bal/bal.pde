int x = 500;
int y = 250;
int grote = 20;
int horSpeed = 6;
int verSpeed = 6;

int Player1x = 20;
int Player1y = 200;
int Player1width = 15;
int Player1length = 70;

int Player2x = 760;
int Player2y = 200;
int Player2width = 15;
int Player2length = 70;

boolean keyW = false;
boolean keyZ = false;
int yW = 0;
int yZ = 0;

boolean keyS = false;
boolean keyX = false;

void setup() {
  size(800, 500);
}

void draw() {
  background(0);
  ball();
  Player1();
  Player2();
  if(keyW){
    yW -= 6;
  }
  if(keyZ){
   yZ -= 6; 
  }
  if(keyS){
    yW += 6;
  }
  if(keyX){
    yZ += 6;
  }
}

void Player1() {
  rect(Player1x, yW, Player1width, Player1length);
}

void Player2() {
  rect(Player2x, yZ, Player2width, Player2length);
}

void ball(){
  y += verSpeed;
  x += horSpeed;
  background(0);
  ellipse(x, y, grote, grote);
  if (x > 785) {
    horSpeed = -6;
  }
  if (x < 15) {
    horSpeed = 6;
  }
  if (y > 485) {
    verSpeed = -6;
  }
  if (y < 15) {
    verSpeed = 6;
  }
}

void keyPressed(){
 if(key == 'w'){ 
  keyW = true;
 }else if(key == 'z')
 keyZ = true;
 
 if(key == 's'){ 
 keyS = true;
 }else if(key == 'x')
 keyX = true;
}

void keyReleased(){
  if(key == 'w'){
  keyW = false;
  }else if(key == 'z')
  keyZ = false;
  
  if(key == 's'){
  keyS = false;
  }else if(key == 'x')
  keyX = false;
}
