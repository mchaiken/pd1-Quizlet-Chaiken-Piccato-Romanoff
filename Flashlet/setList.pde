ArrayList<CardSet> sets = new ArrayList<CardSet>();
void cardSets() {
  for (CardSet s : sets) {
    if (!(s.displaytext.equals("dummy"))) {
      s.draw();
    }
    
  }
}


