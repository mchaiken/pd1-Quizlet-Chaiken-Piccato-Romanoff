Queue queue;
void setup() {
 queue = new Queue();
 String[] data = loadStrings("set.txt");
 for (String d: data) {
   int space = d.indexOf(" ");
   String term = d.substring(0,space);
   String definition = d.substring(space);
   queue.add(term, definition);
 println(queue);
} 

