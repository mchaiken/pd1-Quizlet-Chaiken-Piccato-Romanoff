int qlen;
class Learn {
  Learn(String setName) {
    println(page);
    set = setName;
    queue = new Queue();
    String[] data = loadStrings("accounts/+"user+"/" +setName + ".txt");
    for (String d : data) {
      int space = d.indexOf(" ");
      String term = d.substring(0, space);
      String definition = d.substring(space+1);
      Flashcard f = new Flashcard(term, definition);
      queue.enqueue(f);
    }
    qlen=queue.len;
    size(700, 600); 
    background(188, 210, 238);
     cp5.get(Textfield.class, "definition").show();
    defDisplayed = false;
    cards = loadImage("Cards.jpg");
    image(cards, 0, 0);

    currentCard = queue.dequeue();
    fill(0);
    textFont(font, 30);
    textAlign(CENTER);
    text(currentCard.getTerm(), 350, 160);
    textFont(font,12);
    text("Type in the word corresponding to the above card. If you don't know, simply leave the box blank and hit enter",350,50);
    textFont(font, 30);
  }
  
  void checkAnswer() {
    if (qlen > 0){
    println("check");
    println(cp5.get(Textfield.class, "definition").getText());
    
    if (cp5.get(Textfield.class, "definition").getText().equals(currentCard.getDef()) && !currentCard.isRevealed) {
      revealDefinition();
    } 
    else if(cp5.get(Textfield.class,"definition").getText().equals("") && !currentCard.isRevealed){
      println("empty");
      revealDefinition();
      queue.enqueue(currentCard);
      qlen++;
    }
    else if (currentCard.isRevealed) {
      currentCard.isRevealed=false;
      currentCard = queue.dequeue();
      if (currentCard != null) {
        newFlashcard();
        
      }
    }
    }
    else{
      exitQuiz(); 
    }
  }
   void exitQuiz() {
   showMessageDialog(null, "You have finished your quiz!");
   page = "loading";
   fT="selectType";
   
  }

  void revealDefinition() {
    qlen--;
    fill(0);
    textFont(font, 30);
    textAlign(CENTER);
    text(currentCard.getDef(), 350, 500);
    currentCard.isRevealed=true;
  }
  void newFlashcard() {
    println("new");
    image(cards, 0, 0);

    textFont(font, 30);
    textAlign(CENTER);
    fill(60);
    text(set, 350, 30);

    fill(0);
    textFont(font, 30);
    textAlign(CENTER);
    text(currentCard.getTerm(), 350, 162);
  }
}

