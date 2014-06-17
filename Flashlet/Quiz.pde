PImage cards, starImg ;
Queue queue, starred;
boolean defDisplayed;
Flashcard currentCard;
String set;

class Quiz {

  Quiz(String setName) {

    set = setName;
    queue = new Queue();
    starred = new Queue();
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
    textFont(font, 12);
    text("If you are uncertain about a card, star it and it will appear again later", 350, 50);
    textFont(font, 30);
    
    newFlashcard();

  }
  
  void exitQuiz() {
   showMessageDialog(null, "You have finished your quiz!");
   cp5.get("star").hide();
   cp5.get("unstar").hide();
   page = "home";
   homePage();
   
  }
  
  void newFlashcard() {
    
    currentCard = queue.dequeue();
    defDisplayed = false;
    if (currentCard != null) {
      if (currentCard.starred) {
        
       cp5.get("unstar").show();
       cp5.get("star").hide(); 
      }
      else {
       cp5.get("unstar").hide();
       cp5.get("star").show(); 
      }
     
      image(cards, 0, 0);
  
      textFont(font, 30);
      textAlign(CENTER);
      fill(80);
      text(set, 350, 30);
  
      fill(0);
      textFont(font, 30);
      textAlign(CENTER);
      text(currentCard.getTerm(), 350, 158);
    }
    else {
      exitQuiz(); 
     
    }
  }

  void revealDefinition() {
    fill(0);
    textFont(font, 30);
    textAlign(CENTER);
    text(currentCard.getDef(), 350, 458);
    defDisplayed = true;
  }
}

