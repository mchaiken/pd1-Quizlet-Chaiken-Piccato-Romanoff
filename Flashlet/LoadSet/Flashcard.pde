class Flashcard {
 String term;
 String definition;
 Flashcard next;
Flashcard(String t, String d) {
  term = t;
  definition = d;
  next = null;
} 

boolean hasNext() {
  return !(next == null); 
}

void setNext(Flashcard f) {
  next = f;
}

Flashcard getNext() {
 return next;
}

 String print() {
   return "TERM: " + term + " DEF: " + definition;
 }
}
}
