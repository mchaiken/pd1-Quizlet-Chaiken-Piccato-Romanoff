
TextBox[] tb;
int boxOver = -1;
int boxPressed = -1;
int index=0;
/*
myButton home=new myButton("Back", "home", "small", 100, 20);
SubmitButton submit=new SubmitButton("Submit", "submit", "small", 350, 570);

void newSet() {
  update(mouseX, mouseY);
  println(shift);
  for (TextBox b : tb) {
    b.updateText();
  }
  home.draw();
  submit.draw();
}

void setupBoxes() {
  tb = new TextBox[12];
  for (int i = 0; i < 12; i++) {
    tb[i] = new TextBox(25 + ((i % 2) * 350), 100 + ((80 * (i - (i % 2))) / 2));
  }
  for (TextBox b : tb) {
    b.drawBox();
    text(b.getText(), 100, 100);
  }
} 


void update(int mX, int mY) {
  if (mX >= tb[0].getX() && mX <= tb[0].getX() + tb[0].getW()) {
    for (int i = 0; i < 12; i += 2) {
      if (tb[i].mouseOver()) {
        boxOver = i;
        break;
      }
      if (i == 10) {
        boxOver = -1;
      }
    }
  } else if (mX >= tb[1].getX() && mX <= tb[1].getX() + tb[1].getW()) {
    for (int i = 1; i < 12; i += 2) {
      if (tb[i].mouseOver()) {
        boxOver = i;
        break;
      }
      if (i == 11) {
        boxOver = -1;
      }
    }
  } else {
    boxOver = -1;
  }
}
*/

void mousePressed() {
  if (boxOver != -1) {
    if (boxOver == boxPressed) {
      boxPressed = -1;
      tb[boxOver].drawBox(color(0));
  
    } else {
      if (boxPressed != -1) {
        tb[boxPressed].drawBox(color(0));
      }
      boxPressed = boxOver;
      tb[boxOver].drawBox(color(116, 226, 245));
          index=0;
    }
  }
}

void keyPressed() {
  if (page == "quiz" && keyCode == 32) {
    if (!defDisplayed) {
       currentQuiz.revealDefinition();
     }
     else {
       if (currentCard != null && currentCard.starred) {
          queue.enqueue(currentCard);
        }
       currentQuiz.newFlashcard();
    }
  } else if (page == "learn" && keyCode == 10) {
    println("key");
    currentLearn.checkAnswer();
  } else if (page == "newSet") {
     if (key == CODED) {
      if (keyCode == SHIFT) {
        shift = true;
      } else if (keyCode == LEFT & index > 0) {
        index--;
      } else if (keyCode == RIGHT & index < tb[boxPressed].getText().length()) {
        index++;
      }
    } else if (boxPressed != -1) {
      if (key == BACKSPACE || key == DELETE) {
        tb[boxPressed].backSpace();
        if (index > 0) { 
          index--;
        }
      } else if (key == TAB && boxPressed < tb.length - 1) {
        tb[boxPressed].drawBox(color(0));
        boxPressed++;
        tb[boxPressed].drawBox(color(116, 226, 245));
        index = 0;
      } else if ((key == TAB && boxPressed == tb.length - 1) || key == ENTER || key == ESC) {
        tb[boxPressed].drawBox(color(0));
        boxPressed = -1;
        index = 0;
      } else {
        if (shift) {
          tb[boxPressed].updateText( ((key + "").toUpperCase() + ""), index );
        } else {
          tb[boxPressed].updateText(key + "", index);
        }
        index++;
      }

      tb[boxPressed].drawBox();
    }
    }
  }

  void keyReleased() {
    keybeenReleased=true;
    if (key == CODED && keyCode == SHIFT) {
      shift = false;
    }
  }

