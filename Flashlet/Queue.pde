
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
    Flashcard g = new Flashcard(f.getTerm(), f.getDef());
    if (head == null) {
      head = g;
      tail = g;
    } else {
      tail.setNext(g);
      tail = g;
    }
    len++;
  }

  Flashcard dequeue() {
    Flashcard f = head;
    if (head != null)
      head = head.next();
    if (head == null) {
      tail = null;
    }
    return f;
  }

  String toString() {
    String s = "";
    Flashcard temp = head;
    while (temp != null)
    {
      s += temp.toString() + "\n";
      temp = temp.next();
    }
    return s;
  }
}

