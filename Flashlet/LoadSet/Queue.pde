class Queue {
  Flashcard head;
  int len;
  Queue() {
  head = null;
  }
  
  boolean add(String term, String definition) {
   Flascard f = new Flashcard(term, definition);
   if (head == null) {
    head = f;
    return true;
   } 
   else {
    f.setNext(head);
    head = f;
    return true;
   }
  }
  
  String toString() {
   String s = "";
   Flashcard temp = head;
   while (temp != null) {
    s += temp;
    temp = temp.getNext(); 
   }
   return s;
  }
  
 }
