
PImage cards, starImg ;
Queue queue, starred;
boolean defDisplayed;
Flashcard currentCard;
String set;

class Quiz {
  
  Quiz(String setName) {

    set = setName;
    queue = new Queue();
    String[] data = loadStrings("cardSets/" + set + ".txt");
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
    
    textFont(font, 30);
    textAlign(CENTER);
    fill(80);
    text(setName, 350, 30);

    currentCard = queue.dequeue();
    
    fill(0);
    textFont(font, 30);
    textAlign(CENTER);
    text(currentCard.getTerm(), 350, 162);
    
    defDisplayed = false;
    
    cp5.get("starCard").show();
  }
  
  void draw() {
  }

  void addCard() {
    currentCard.star();
    print("YES");
  }

  void newFlashcard() {
    cp5.get("starCard").show();
    image(cards, 0, 0);

    textFont(font, 30);
    textAlign(CENTER);
    fill(80);
    text(set, 350, 30);

    fill(0);
    textFont(font, 30);
    textAlign(CENTER);
    text(currentCard.getTerm(), 350, 162);
 
  }

  void revealDefinition() {
    fill(0);
    textFont(font, 30);
    textAlign(CENTER);
    text(currentCard.getDef(), 350, 462);
  }
}

