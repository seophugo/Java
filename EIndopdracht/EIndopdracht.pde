int x = 500;
int y = 250;
int grote = 15;
int horSpeed = 5;
int verSpeed = 5;

int Player1x = 20;
int Player1y = 200;
int Player1width = 15;
int Player1length = 70;

int Player2x = 760;
int Player2y = 200;
int Player2width = 15;
int Player2length = 70;

boolean keyW = false;
boolean keyup = false;
int yW = 250;
int yArrow = 250;

boolean keyS = false;
boolean keydown = false;

int Score1 = 0;
int Score2 = 0;

void setup() {
  size(800, 500);
}

void draw() {
  frameRate(60);
  background(0);
  ball();
  Player1();
  Player2();
  Borders();
  Keys();
  Stuiter();
  score();
}

void Player1() {
  rect(Player1x, yW, Player1width, Player1length);
}

void Player2() {
  rect(Player2x, yArrow, Player2width, Player2length);
}

void ball(){
  y += verSpeed;
  x += horSpeed;
  background(0);
  ellipse(x, y, grote, grote);
  if (y > 485) {
    verSpeed = -5;
  }
  if (y < 15) {
    verSpeed = 5;
  }
}

void Borders(){
  if (yW >= 425) {
    yW = 425;
  }
  if (yW <= 0) {
    yW = 0;
  }
  if (yArrow >= 425) {
    yArrow = 425;
  }
  if (yArrow <= 0) {
    yArrow = 0;
  }
}

void keyPressed(){
 if(key == 'w'){ 
  keyW = true;
 }else if(key == 's')
 keyS = true;
 
 if(keyCode == UP){ 
 keyup = true;
 }else if(keyCode == DOWN)
 keydown = true;
}

void keyReleased(){
  if(key == 'w'){
  keyW = false;
  }else if(key == 's')
  keyS = false;
  
  if(keyCode == UP){
  keyup = false;
  }else if(keyCode == DOWN)
  keydown = false;
}

void Keys(){
  if(keyW){
  yW -= 5;
  }
  if(keyup){
   yArrow -= 5; 
  }
  if(keyS){
    yW += 5;
  }
  if(keydown){
    yArrow += 5;
  }
}

void Stuiter(){
 if(x > Player1x && x < Player1x + Player1width  &&  y > yW && y < yW + Player1length){
  horSpeed = 5;
 }
  if (x > Player2x && x < Player2x + Player2width && y > yArrow && y < yArrow + Player2length) {
  horSpeed = -5;
 }
}

void score(){
  text(Score1,360,50);
  textSize(50);
  text(Score2,440,50);
  textSize(50);
  if(x > 800){
    Score1++;
    x = 500;
    y = 250;
    horSpeed = -5;
  }
  if(x < 0){
    Score2++;
    x = 300;
    y = 250;
    horSpeed = 5;
  }
}
