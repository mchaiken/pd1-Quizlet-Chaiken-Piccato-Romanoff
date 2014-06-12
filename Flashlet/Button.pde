

class Button {
  
  String displaytext, functiontext, size;
  int xcor, ycor, w, h, fsize, xoff, yoff;

  Button(String t, String f, String s, int x, int y) {
    displaytext = t;
    functiontext = f;
    size = s;
    xcor = x;
    ycor = y;
    if (s.equals("small")) {
      w = 150;
      h = 35;
      fsize = 12;
      xoff = 22;
      yoff = 3;
    }
    else if (s.equals("large")) {
      w = 200;
      h = 50;
      fsize = 25;
      xoff = 45;
      yoff = 6;
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
      time=millis();
      fT=functiontext;
     page="loading";
     background(188, 210, 238);
     
    }
  }
}

