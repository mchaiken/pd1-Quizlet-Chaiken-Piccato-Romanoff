Queue queue;
PFont font;
PImage blank, lined;
boolean defDisplayed;
Flashcard currentCard;
void setup() {
 queue = new Queue();
 String[] data = loadStrings("set.txt");
 //println(Arrays.toString(data));
 for (String d: data) {
   int space = d.indexOf(" ");
   String term = d.substring(0,space);
   String definition = d.substring(space+1);
   Flashcard f = new Flashcard(term, definition);
   queue.enqueue(f);
 }
   size(700, 600); 
   background(188, 210, 238);
   blank = loadImage("BlankCard.jpg");
   lined = loadImage("LineCard.jpg");
   image(blank,0,0);
   font = loadFont("Baskerville-SemiBold-48.vlw");
   
   currentCard = queue.dequeue();
   fill(0);
   textFont(font, 30);
   textAlign(CENTER);
   text(currentCard.getTerm(), 350, 300);
   
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
   image(blank,0,0);
   fill(0);
   textFont(font, 30);
   textAlign(CENTER);
   text(currentCard.getTerm(), 350, 300);
 }
 
 void revealDefinition() {
   image(lined,0,0);
   fill(0);
   textFont(font, 30);
   textAlign(CENTER);
   text(currentCard.getDef(), 350, 305);  
 }
   
 



