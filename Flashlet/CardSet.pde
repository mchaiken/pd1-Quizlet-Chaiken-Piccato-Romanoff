static boolean draw=true;
public class CardSet {
  String displaytext, functiontext, size;
  int xcor, ycor, w, h, fsize, xoff, yoff;



  CardSet(String t, int x, int y) {
    displaytext = t;
    xcor = x;
    ycor = y;
    w = 675;
    h = 50;
    fsize = 25;
    xoff =100 ;
    yoff = 40;
    draw=true;
  }

  void draw() {
    if (draw) {
      if (hovered()) {
        fill(160, 160, 160);
      } else {
        fill(244, 244, 244);
      }
      rect(xcor, ycor, w, h);
      fill(0);
      textFont(font, fsize);
      text(displaytext, xcor+xoff, ycor+yoff);
      if (mousePressed) {
        mouseClicked();
      }
    }
  }
  
  void mouseClicked() {
    if (hovered ()) {
      background(188, 210, 238); 
      quizName = displaytext;
      page = "selectType";
      draw=false;
    }
  }
  
  boolean hovered() {
    return ((mouseX > xcor && mouseX < xcor+w )&&(mouseY> ycor && mouseY < ycor+h));
  }
}

