class Queue {
  int len;
  Flashcard head;
  Flashcard tail; 
  
  Queue() {
    len = 0;
    head = null;
    tail = null;
  }
  
  void enqueue(Flashcard f) {
   if (head == null) {
    head = f;
    tail = f;
   } 
   else {
    tail.setNext(f);
    tail = f;
   }
   len++;
  }
  
  Flashcard dequeue() {
   Flashcard f = head;
   head = head.next();
   if (head == null) {
    tail = null; 
   }
   return f;
  }
  
  String toString() {
   String s = "";
   Flashcard temp = head;
   {
    s += temp.toString() + "\n";
    temp = temp.next(); 
   }
   return s;
  }
  
 }
