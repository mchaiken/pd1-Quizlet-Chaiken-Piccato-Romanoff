String setName="";
class Button {
  String displaytext;
  String functiontext;
  String size;
  int xcor;
  int ycor;
  int w;
  int h;
  int fsize;
  int xoff;
  int yoff;
  Button(String t, String f, String s, int x, int y) {
    displaytext=t;
    functiontext=f;
    size=s;
    xcor=x;
    ycor=y;
    if (s.equals("small")) {
      w=150;
      h=35;
      fsize=12;
      xoff=22;
      yoff=3;
    } else if (s.equals("large")) {
      w=200;
      h=50;
      fsize=25;
      xoff=45;
      yoff=6;
    }
  }
  void draw() {
    if (hovered()) {
      fill(160, 160, 160);
    } else {
      fill(244, 244, 244);
    }
    ellipse(xcor, ycor, w, h);
    fill(0);
    textFont(font, fsize);
    text(displaytext, xcor-xoff, ycor+yoff);
    if (mousePressed) {
      mouseClicked();
    }
  }

  boolean hovered() {
    return ((mouseX > xcor-(w/2) && mouseX < xcor+(w/2))&&(mouseY> ycor-(h/2) && mouseY < ycor+(h/2)));
  }
  void mouseClicked() {
    if (hovered()) {
<<<<<<< HEAD
      background(188, 210, 238);
      setup();
      page=functiontext;
      if (functiontext.equals("newSet")) {
        setName();
        setupBoxes();
        textSize(40);
        text("Term", 40, 70);
        text("Definition", 390, 70);
        fill(250, 182, 8);
        //setName=name.getText();
      } 
      else if (functiontext.equals("loadSet")) {
        loadSet();
      }
=======
      time=millis();
      fT=functiontext;
     page="loading";
     background(188, 210, 238);
     
>>>>>>> a5ea26e2e85cc27c93c63eeec95f721c8a7bf23d
    }
  }
}

