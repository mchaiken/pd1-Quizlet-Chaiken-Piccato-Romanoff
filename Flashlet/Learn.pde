/*class Learn {
  Learn(String setName) {
    queue = new Queue();
    String[] data = loadStrings(setName + ".txt");
    for (String d : data) {
      int space = d.indexOf(" ");
      String term = d.substring(0, space);
      String definition = d.substring(space+1);
      Flashcard f = new Flashcard(term, definition);
      queue.enqueue(f);
    }
    size(700, 600); 
    background(188, 210, 238);
    cards = loadImage("Cards.jpg");
    image(cards, 0, 0);

    currentCard = queue.dequeue();
    fill(0);
    textFont(font, 30);
    textAlign(CENTER);
    text(currentCard.getTerm(), 350, 160);

    defDisplayed = false;
  }
  
  void keyPressed(){
    if(key == 32){
      if
      */
