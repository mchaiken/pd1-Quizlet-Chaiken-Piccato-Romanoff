TextBox[] tb;
int boxOver = -1;
int boxPressed = -1;;

void setup() {
  size(700, 600);
  background(103, 113, 108);
  setupBoxes();
  
  PFont font = loadFont("Baskerville-SemiBold-48.vlw");
  textFont(font, 40);
  text("Term", 40, 70);
  text("Definition", 390, 70);
  fill(250, 182, 8);
  
}

void setupBoxes() {
  tb = new TextBox[12];
  for (int i = 0; i < 12; i++) {
    tb[i] = new TextBox(25 + ((i % 2) * 350), 100 + ((80 * (i - (i % 2))) / 2));
  }
  for (TextBox b : tb) {
    b.drawBox();
  }
  println(tb[0].getX());
  println(tb[0].getY());
  println(tb[1].getX());
  println(tb[1].getY());
} 

void draw() {
  update(mouseX, mouseY);
  for (TextBox b : tb) {
    b.updateText();
  }
}

void update(int mX, int mY) {
  if (mX >= tb[0].getX() && mX <= tb[0].getX() + tb[0].getW()) {
    for (int i = 0; i < 12; i += 2) {
      if (mY >= tb[i].getY() && mY <= tb[i].getY() + tb[i].getH()) {
             boxOver = i;
             break;
      }
      if (i == 10) {
        boxOver = -1;
      }
    }
  }
  else if (mX >= tb[1].getX() && mX <= tb[1].getX() + tb[1].getW()) {
    for (int i = 1; i < 12; i += 2) {
      if (mY >= tb[i].getY() && mY <= tb[i].getY() + tb[i].getH()) {
             boxOver = i;
             break;
      }
      if (i == 11) {
        boxOver = -1;
      }
    }
  }
  else {
    boxOver = -1;
  }
}

void mousePressed() {
  if (boxOver != -1) {
    if (boxOver == boxPressed) {
      boxPressed = -1;
      tb[boxOver].drawBox(color(0));
    }
    else {
      if (boxPressed != -1) {
        tb[boxPressed].drawBox(color(0));
      }
      boxPressed = boxOver;
      tb[boxOver].drawBox(color(116, 226, 245));
    }
  }
}

void keyPressed() {
  if (boxPressed != -1) {
    if (key == BACKSPACE || key == DELETE) {
      tb[boxPressed].backSpace();
    }
    else {
      tb[boxPressed].updateText(key + "");
    }
  }
}

