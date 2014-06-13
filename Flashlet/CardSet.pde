static boolean draw=true;
double t2;
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
    xoff = 100 ;
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

      if (mousePressed && millis()>t2+200) {
        mouseClicked();
      }
    }
  }
  void mouseClicked() {

    //quizName=displaytext;
    if (hovered ()) {
      /*
      background(188, 210, 238); 
       page = "quiz";
       currentQuiz = new Quiz(displaytext);
       draw=false;
       */
      page="learn";
      background(188, 210, 238);
      currentLearn=new Learn(displaytext);
      draw=false;
    }
  }
  boolean hovered() {
    return ((mouseX > xcor && mouseX < xcor+w )&&(mouseY> ycor && mouseY < ycor+h));
  }
}

