float playerX;
float playerY;
float playerRadius = 30;
float speed = 250;

boolean moveLeft = false;
boolean moveRight = false;
boolean moveUp = false;
boolean moveDown = false;

int lastTime;

void setup() {
  size(800, 600);
  smooth(8);
  frameRate(60);

  playerX = width / 2;
  playerY = height / 2;
  lastTime = millis();
}

void draw() {
  int currentTime = millis();
  float deltaTime = (currentTime - lastTime) / 1000.0;
  lastTime = currentTime;

  deltaTime = min(deltaTime, 0.05);

  if (moveLeft)  playerX -= speed * deltaTime;
  if (moveRight) playerX += speed * deltaTime;
  if (moveUp)    playerY -= speed * deltaTime;
  if (moveDown)  playerY += speed * deltaTime;

  playerX = constrain(playerX, playerRadius, width - playerRadius);
  playerY = constrain(playerY, playerRadius, height - playerRadius);

  background(30);

  noStroke();
  fill(0, 200, 255);
  circle(playerX, playerY, playerRadius * 2);
}

void keyPressed() {
  if (keyCode == LEFT)  moveLeft = true;
  if (keyCode == RIGHT) moveRight = true;
  if (keyCode == UP)    moveUp = true;
  if (keyCode == DOWN)  moveDown = true;
}

void keyReleased() {
  if (keyCode == LEFT)  moveLeft = false;
  if (keyCode == RIGHT) moveRight = false;
  if (keyCode == UP)    moveUp = false;
  if (keyCode == DOWN)  moveDown = false;
}