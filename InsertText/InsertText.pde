
/* opens a window with a white text box
   pressing inside the box enables typing
   pressing outside the box disables typing
   backspace and delete have been implemented */

int rectX = 100;
int rectY = 50;
int rectWidth = 400;
int rectLength = 40;
boolean rectOver = false;
boolean rectPressed = false;
String text = "";

void setup() {
  size(600, 600);
  background(103, 113, 108);
  stroke(0);
  strokeWeight(2);
  fill(255);
  rect(rectX, rectY, rectWidth, rectLength);
}

void draw() {
  update(mouseX, mouseY);
  PFont font = loadFont("Baskerville-SemiBold-48.vlw");
  textFont(font, 30);
  text(text, rectX + 5, rectY + rectLength - 10);
  fill(240, 46, 127);
}

void update(int x, int y) {
  rectOver = overRect(rectX, rectY, rectWidth, rectLength);
}

boolean overRect(int x, int y, int width, int height) {
  return (mouseX >= x && mouseX <= x + width &&
          mouseY >= y && mouseY <= y + height);
}

void mousePressed() {
  if (rectOver) {
    rectPressed = !rectPressed;
  }
}

void keyPressed() {
  if (rectPressed) {
    if ((key == BACKSPACE || key == DELETE) && text.length() > 0) {
       stroke(0);
       strokeWeight(2);
       fill(255);
       rect(rectX, rectY, rectWidth, rectLength);
       text = text.substring(0, text.length() - 1);
       println(text);
    }
    else {
      text += key;
      println(text);
    }
  }
}
