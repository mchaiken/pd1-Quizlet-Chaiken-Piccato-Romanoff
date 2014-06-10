/*Queue q;
void loadSet() {
 q = new Queue();
 String[] data = loadStrings("set.txt");
 //println(Arrays.toString(data));
 for (String d: data) {
   int space = d.indexOf(" ");
   String term = d.substring(0,space);
   String definition = d.substring(space+1);
   Flashcard f = new Flashcard(term, definition);
   q.enqueue(f);
 }
 println(q.toString());
 
 size(900, 900);
 img = loadImage("Cards.jpg");
 image(img,0,0);
} 
 */

void loadSet() {
  File folder = new File("Desktop/");
  println(folder); 
  println(folder.exists());
 //String[] files = folder.list();
  //for (String s : files) {
    //println(s);
  //}
}

