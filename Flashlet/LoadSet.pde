Queue queue;
void loadSet() {
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
 println(queue.toString());
 
 size(900, 900);
 img = loadImage("Cards.jpg");
 image(img,0,0);
} 

