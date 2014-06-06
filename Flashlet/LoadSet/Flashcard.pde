 class Flashcard {
 String term = "";
 String definition = "";
 Flashcard next = null;

 Flashcard(String t, String d) {
  term = t;
  definition = d; 
 }
 
 boolean hasNext() {
  return !(next == null); 
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
