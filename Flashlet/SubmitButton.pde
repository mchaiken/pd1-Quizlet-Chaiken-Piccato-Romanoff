class  SubmitButton extends myButton {

  SubmitButton(String t, String f, String s, int x, int y) {
    super(t, f, s, x, y);
  }

  void mouseClicked() {
    if (hovered()) {
      updateCreateSet();
      for (int x = 0; x < 6; x++) {
        String name = "t" + x;
        //println(name);
        cp5.get(name).hide();
      }
      for (int x = 0; x < 6; x++) {
        String name = "d" + x;
        //println(name);
        cp5.get(name).hide();
      }
      //cp5.get("addCard").hide();
      String ret = "";
      PrintWriter out = createWriter("accounts/" + user+"/"+flash_card_set_name+".txt");
      for (Flashcard f : flashcards) {
        println(f);
        if (!(f.getDef() == "") && !(f.getTerm() == "")) {
          out.println(f.getDef() + " " + f.getTerm());
        }
      }

      out.close();
      setup();
      page="home";
    }
  }
}

