String[] termValues = new String[6];
String[] defValues = new String[6];
ArrayList<Flashcard> flashcards;
int lowestIndex, current;
boolean onTerm;
myButton home = new myButton("Back", "home", "small", 100, 20);
SubmitButton submit = new SubmitButton("Submit", "submit", "small", 350, 700);
boolean shift = false;

void setupCreateSet() {
  
  background(188, 210, 238);
  
  stroke(188, 210, 238);
  fill(188, 210, 238);
  rect(0, 0, 700, 100);
  stroke(191, 193, 193);
  fill(191, 193, 193);
  rect(0, 100, 700, 550);
  
  stroke(75, 75, 75);
  strokeWeight(2);
  line(0, 100, 700, 100);
  
  fill(85, 85, 85);
  textFont(font4, 35);
  textAlign(CENTER);
  text("Term", 182.5, 150);
  text("Definition", 477.5, 150);
  
  fill(85, 85, 85);
  textFont(font5, 27);
  textAlign(CENTER);
  text("Add Card", 333, 538);
  
  onTerm = true;
  current = 0;
  lowestIndex = 0;
  flashcards = new ArrayList<Flashcard>();
  
  for (int i = 0; i < 6; i++) {
      fill(85, 85, 85);
      textFont(font4, 32);
      textAlign(CENTER);
      text(lowestIndex + i + 1 + "", 27.5, 195 + (60 * i));
      flashcards.add(new Flashcard("", ""));
  }
  
  showCreateSetCP();
}

void updateCreateSet() {
  
    home.draw();
  submit.draw();
  
}

void controlEvent(ControlEvent theEvent) {
  if (theEvent.isAssignableFrom(Textfield.class)) {
    Integer index = lowestIndex + Integer.parseInt(theEvent.getName().substring(1, 2));
    if (theEvent.getName().substring(0, 1).equals("t")) {
      flashcards.get(index).setTerm(theEvent.getStringValue());
      test();
    }
    else if (theEvent.getName().substring(0, 1).equals("d")) {
      flashcards.get(index).setDefinition(theEvent.getStringValue());
      test();
    }
  }
  else if (theEvent.isAssignableFrom(Button.class) && (theEvent.getName().equals("addCard"))) {
    flashcards.add(new Flashcard("", ""));
    lowestIndex++;
    updateNumbers();
  }
}

void updateNumbers() {
  stroke(191, 193, 193);
  fill(191, 193, 193);
  rect(5, 160, 40, 500);
  for (int i = 0; i < 6; i++) {
      fill(85, 85, 85);
      textFont(font4, 32);
      textAlign(CENTER);
      text(lowestIndex + i + 1 + "", 27.5, 195 + (60 * i));
  }  
}

// shows the boxes and buttons 
void showCreateSetCP() {
  for (String s : boxNames) {
    cp5.get(s).show();
  }
  cp5.get("test").show();
  cp5.get("addCard").show();
}
  
String getCurrent() {
  if (onTerm) {
    return "t" + current;
  }
  else {
    return "r" + current;
  }
}
  
void test() {
  println("-----");
  for (int x = 0; x < flashcards.size(); x++) {
    println((x + 1) + " - " + flashcards.get(x));
    }
  println("-----");
}





