int x = 400;
int y = 250;
int grote = 15;
int horSpeed = -5;
int verSpeed = 5;

int Player1x = 20;
int Player1width = 10;
int Player1length = 70;

int Player2x = 760;
int Player2width = 10;
int Player2length = 70;

boolean keyW = false;
boolean keyup = false;
int yW = 250;
int yArrow = 250;
boolean keyS = false;
boolean keydown = false;

int[] scores = {0, 0};
boolean gameStop = false;

void setup() {
  size(800, 500);
}

void draw() {
  if (!gameStop) {
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
}

void Player1() {
  rect(Player1x, yW, Player1width, Player1length);
}

void Player2() {
  rect(Player2x, yArrow, Player2width, Player2length);
}

void ball() {
  y += verSpeed;
  x += horSpeed;
  ellipse(x, y, grote, grote);
  
  if (y > 485) {
    verSpeed = -5;
  }
  if (y < 15) {
    verSpeed = 5;
  }
}

void Borders() {
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

void keyPressed() {
  if (key == 'w') { 
    keyW = true;
  } else if (key == 's') {
    keyS = true;
  }
  
  if (keyCode == UP) { 
    keyup = true;
  } else if (keyCode == DOWN) {
    keydown = true;
  }

  if (key == 'r') {
    resetGame();
  }
}

void keyReleased() {
  if (key == 'w') {
    keyW = false;
  } else if (key == 's') {
    keyS = false;
  }
  
  if (keyCode == UP) {
    keyup = false;
  } else if (keyCode == DOWN) {
    keydown = false;
  }
}

void Keys() {
  if (keyW) {
    yW -= 5;
  }
  if (keyup) {
    yArrow -= 5; 
  }
  if (keyS) {
    yW += 5;
  }
  if (keydown) {
    yArrow += 5;
  }
}

void Stuiter() {
  if (x - grote / 2 <= Player1x + Player1width && y >= yW && y <= yW + Player1length) {
    horSpeed = 5;
  }
  if (x + grote / 2 >= Player2x && y >= yArrow && y <= yArrow + Player2length) {
    horSpeed = -5;
  }
}

void score() {
  textSize(50);
  fill(255);
  
  text(scores[0], 360, 50);
  text(scores[1], 440, 50);
  
  if (x > 800) {
    scores[0]++;
    resetBall();
  }
  
  if (x < 0) {
    scores[1]++;
    resetBall();
  }
  
  for (int i = 0; i < scores.length; i++) {
    if (scores[i] >= 5) {
      fill(0, 255, 0);
      textSize(50);
      String winner = (i == 0) ? "Player 1" : "Player 2";
      text(winner + " wins!", 275, 250);
      noFill();
      gameStop = true;
      noLoop();
    }
  }
}

void resetBall() {
  x = 400;
  y = 250;
  horSpeed = -5;
  verSpeed = 5;
}

void resetGame() {
  resetBall();
  scores[0] = 0;
  scores[1] = 0;
  gameStop = false;
  loop();
}
