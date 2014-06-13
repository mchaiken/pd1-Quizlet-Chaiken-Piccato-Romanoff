class Learn {
  Learn(String setName) {
    println(page);
    set = setName;
    queue = new Queue();
    String[] data = loadStrings("cardSets/" +setName + ".txt");
    for (String d : data) {
      int space = d.indexOf(" ");
      String term = d.substring(0, space);
      String definition = d.substring(space+1);
      Flashcard f = new Flashcard(term, definition);
      queue.enqueue(f);
    }
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
  }
  void checkAnswer() {
    println("check");
    println(cp5.get(Textfield.class, "definition").getText());
    if ((cp5.get(Textfield.class, "definition").getText().equals(currentCard.getDef())|| cp5.get(Textfield.class, "definition").getText().equals("")) && !currentCard.isRevealed) {
      revealDefinition();
    } else if (currentCard.isRevealed) {
      currentCard = queue.dequeue();
      if (currentCard != null) {
        newFlashcard();
      }
    }
  }

  void revealDefinition() {
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

