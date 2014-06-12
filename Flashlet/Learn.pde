class Learn {
  Learn(String setName) {
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
    cp5.addTextfield("definition").setPosition(250, 400).setSize(200,40).
    setFocus(true)
    .setColor(color(255,255,255)).setFont(font2);
    defDisplayed = false;
    cards = loadImage("Cards.jpg");
    image(cards, 0, 0);

    currentCard = queue.dequeue();
    fill(0);
    textFont(font, 30);
    textAlign(CENTER);
    text(currentCard.getTerm(), 350, 160);

  }
  void checkAnswer(){
    if (cp5.getText().equals(currentCard.getDef())){
      revealDefiniton();
      
    }
    
  void revealDefinition() {
    fill(0);
    textFont(font, 30);
    textAlign(CENTER);
    text(currentCard.getDef(), 350, 500);
  }
}
