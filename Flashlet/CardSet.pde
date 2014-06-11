
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
  }

  void draw() {
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
  void mouseClicked() {
<<<<<<< HEAD
<<<<<<< HEAD
    quizName=displaytext;
=======
    page = "quiz";
    currentQuiz = new Quiz(displaytext);   
>>>>>>> FETCH_HEAD
=======
    page = "quiz";
    currentQuiz = new Quiz(displaytext);   
>>>>>>> FETCH_HEAD
  }
  boolean hovered() {
    return ((mouseX > xcor && mouseX < xcor+w )&&(mouseY> ycor && mouseY < ycor+h));
  }
}

