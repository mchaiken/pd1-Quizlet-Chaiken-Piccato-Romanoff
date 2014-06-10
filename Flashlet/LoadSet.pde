/*Queue queue;
PImage img;
boolean defDisplayed;
Flashcard currentCard;
void setup() {
 queue = new Queue();
 String[] data = loadStrings("set.txt");
 for (String d: data) {
   int space = d.indexOf(" ");
   String term = d.substring(0,space);
   String definition = d.substring(space+1);
   Flashcard f = new Flashcard(term, definition);
   queue.enqueue(f);
 }
   size(700, 600); 
   background(188, 210, 238);
   img = loadImage("Cards.jpg");
   image(img,0,0);
   font = loadFont("Baskerville-SemiBold-48.vlw");
   
   currentCard = queue.dequeue();
   fill(0);
   textFont(font, 30);
   textAlign(CENTER);
   text(currentCard.getTerm(), 350, 160);
   
   defDisplayed = false;
 }

 void draw() {}
 
 void keyPressed() {
   if (keyCode == 32) {
     if (!defDisplayed) {
       revealDefinition();
     }
     else {
      currentCard = queue.dequeue();
      if (currentCard != null) {
       newFlashcard();
      }
     }
    defDisplayed = !defDisplayed; 
   }
 }
 
 void newFlashcard() {
   size(700, 600); 
   background(188, 210, 238);
   image(img,0,0);
   fill(0);
   textFont(font, 30);
   textAlign(CENTER);
   text(currentCard.getTerm(), 350, 160);
 }
 
 void revealDefinition() {
   fill(0);
   textFont(font, 30);
   textAlign(CENTER);
   text(currentCard.getDef(), 350, 460);  
 }
   */
 



