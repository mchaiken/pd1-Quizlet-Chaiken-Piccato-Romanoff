 class Flashcard {
 String term = "";
 String definition = "";
 Flashcard next = null;
 boolean starred;
 Flashcard(String t, String d) {
  term = t;
  definition = d; 
  starred = false;
 }
 
 boolean hasNext() {
  return !(next == null); 
 }

 void star() {
   starred = !starred;
 }
 void setNext(Flashcard f) {
  next = f;
 }
 
 String getTerm() {
  return term; 
 }
 
 String getDef() {
  return definition; 
 }
 Flashcard next() {
  return next;
 }
 
 String toString() {
  return "TERM: " + term + " DEF: " + definition;
 }
 
 
}
