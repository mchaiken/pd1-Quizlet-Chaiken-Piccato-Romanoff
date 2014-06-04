public class TextBox {

  float xCor, yCor, boxWidth, boxHeight;
  String text = "";
  color outline;
  boolean selected=false;
  boolean shift = false;

  TextBox(float x, float y) {
    xCor = x;
    yCor = y;
    boxWidth = 300;
    boxHeight = 40;
    outline = color(0);
  }

  float getX() {
    return xCor;
  }

  float getY() {
    return yCor;
  }

  float getW() {
    return boxWidth;
  }

  float getH() {
    return boxHeight;
  }  

  String getText() {
    return text;
  }

  String setText(String newText) {
    String temp = text;
    text = newText;
    return temp;
  }

  boolean mouseOver() {
    return (mouseY >= getY() && mouseY <= getY() + getH()) && (mouseX >= getX() && mouseX <= getX() + getW());
  }
  void changeSelected() {
    if (selected) {
      drawBox(color(116, 226, 245));
    } else {
      drawBox(color(0));
    }
    selected=!selected;
  }

  void mousePressed() {
    if (mouseOver()) {
      changeSelected();
    }
  }
  void keyPressed() {
    if (key == CODED && keyCode == SHIFT) {
      shift = true;
    } 
    else if (selected) {
      if (key == BACKSPACE || key == DELETE) {
        backSpace();
      } 
      else if (key == TAB) {
        drawBox(color(0));
        drawBox(color(116, 226, 245));
      } 
      else if ((key == TAB ) || key == ENTER || key == ESC) {
        drawBox(color(0));
      } 
      else {
        if (shift) {
          updateText(((key + "").toUpperCase() + ""));
        } 
        else {
          updateText(key + "");
        }
      }
    }
  }

  void keyReleased() {
    if (key == CODED && keyCode == SHIFT) {
      shift = false;
    }
  }

  void drawBox() {
    stroke(outline);
    strokeWeight(2);
    fill(255);
    rect(xCor, yCor, boxWidth, boxHeight);
    updateText();
  }

  void drawBox(color newOutline) {
    outline = newOutline;
    stroke(outline);
    strokeWeight(2);
    fill(255);
    rect(xCor, yCor, boxWidth, boxHeight);
    updateText();
  }

  void updateText() {
    PFont font = loadFont("Baskerville-SemiBold-48.vlw");
    textFont(font, 25);
    text(text, xCor + 5, yCor + boxHeight - 10);
    fill(32, 69, 75);
  }

  void updateText(String s) {
    text += s;
    PFont font = loadFont("Baskerville-SemiBold-48.vlw");
    textFont(font, 25);
    text(text, xCor + 5, yCor + boxHeight - 10);
    fill(32, 69, 75);
  }

  void backSpace() {
    if (text.length() > 0) {
      text = text.substring(0, text.length() - 1);
      drawBox();
    }
  }
}

