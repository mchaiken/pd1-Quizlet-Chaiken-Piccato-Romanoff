public class TextBox {
  
  int xCor, yCor, boxWidth, boxHeight;
  String text = "";
  color outline;
  
  TextBox(int x, int y) {
    xCor = x;
    yCor = y;
    boxWidth = 300;
    boxHeight = 40;
    outline = color(0);
  }
  
  int getX() {
    return xCor;
  }
  
  int getY() {
    return yCor;
  }
  
  int getW() {
    return boxWidth;
  }
  
  int getH() {
    return boxHeight;
  }  
  
  String getText() {
    return text;
  }
  
  String setText(String newText) {
    String temp = text;
    text= newText;
    return temp;
  }

  void drawBox() {
    stroke(outline);
    strokeWeight(2);
    fill(255);
    rect(xCor, yCor, boxWidth, boxHeight, 4);
    updateText();
  }
  
  void drawBox(color newOutline) {
    outline = newOutline;
    stroke(outline);
    strokeWeight(2);
    fill(255);
    rect(xCor, yCor, boxWidth, boxHeight, 4);
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
