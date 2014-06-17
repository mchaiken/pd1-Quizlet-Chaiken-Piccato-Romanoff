String[] termValues = new String[6];
String[] defValues = new String[6];
ArrayList<Flashcard> flashcards;
int lowestIndex;
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
  
  fill(85, 85, 85);
  textFont(font5, 27);
  textAlign(CENTER);
  text("Press 'ENTER' to save an entry", 400, 60);
  
  
  current = "t0";
  lowestIndex = 0;
  flashcards = new ArrayList<Flashcard>();
  
  for (int i = 0; i < 6; i++) {
      fill(85, 85, 85);
      textFont(font4, 32);
      textAlign(CENTER);
      text(lowestIndex + i + 1 + "", 27.5, 195 + (60 * i));
      flashcards.add(new Flashcard("", ""));
  }
  
  current = "t0";
  
  showCreateSetCP();
}

void updateCreateSet() {
  
    home.draw();
  submit.draw();
    for (String s : boxNames) {
          updateCard(s);
    }
  
}

static String getBox(int n) {
  if (n < 6) {
    return "t" + n;
  }
  else {
    return "d" + (n - 6);
  }
}
    

void controlEvent(ControlEvent theEvent) {
  if (theEvent.isAssignableFrom(Textfield.class)) {
    Integer index = lowestIndex + Integer.parseInt(theEvent.getName().substring(1, 2));
    if (theEvent.getName().substring(0, 1).equals("t")) {
      flashcards.get(index).setTerm(theEvent.getStringValue());
      //test();
    }
    else if (theEvent.getName().substring(0, 1).equals("d")) {
      flashcards.get(index).setDefinition(theEvent.getStringValue());
    //  test();
    }
  }
  else if (theEvent.isAssignableFrom(Button.class) && (theEvent.getName().equals("addCard"))) {
    flashcards.add(new Flashcard("", ""));
    lowestIndex++;
    updateNumbers();
    //refreshBoxes();
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
/*
void refreshBoxes() {
  for (int x = 0; x < 12; x++) {
    println(x + "------");
    test();
    if (x < 6) {
      cp5.get(Textfield.class, boxNames[x]).setText(flashcards.get(lowestIndex + (Integer.parseInt(boxNames[x]))).getTerm());
    }
    else {
      cp5.get(Textfield.class, boxNames[x]).setText(flashcards.get(lowestIndex + (Integer.parseInt(boxNames[x - 6]))).getDef());
    }
  }
}
*/

// shows the boxes and buttons 
void showCreateSetCP() {
  for (String s : boxNames) {
    cp5.get(s).show();
  }
//cp5.get("test").show();
  cp5.get("addCard").show();
}
  /*
void test() {
  
  println("-----");
  for (int x = 0; x < flashcards.size(); x++) {
    println((x + 1) + " - " + flashcards.get(x));
    }
  println("-----");
  
}
*/

void updateCard(String s) {
  if (s.equals("")) {
    return;
  }
  else {
  String newVal = cp5.get(Textfield.class, s).getText();
  if (s.substring(0, 1).equals("t")) {
    flashcards.get(lowestIndex + Integer.parseInt(current.substring(1, 2))).setTerm(newVal);
  }
  else if (s.substring(0, 1).equals("d")) {
    flashcards.get(lowestIndex + Integer.parseInt(current.substring(1, 2))).setDefinition(newVal);
  }
  }
}





