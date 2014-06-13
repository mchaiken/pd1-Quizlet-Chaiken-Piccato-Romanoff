import gifAnimation.*;

void loadingPage(String functiontext) {

  if (millis() < 0 /* time +3000 */) {
    image(nonLoopingGif, width/2 - nonLoopingGif.width/2, height / 2 - nonLoopingGif.height / 2);
  } 
  else {
    background(188, 210, 238);    
    page=functiontext;
    if (functiontext.equals("newSet")) {
      setupBoxes();
      textSize(40);
      text("Term", 40, 70);
      text("Definition", 390, 70);
      fill(250, 182, 8);
      setName();
      //setName=name.getText();
    }
    if (functiontext.equals("loadSet")) {
      File folder = new File("pd1-Quizlet-Chaiken-Piccato-Romanoff/Flashlet/cardSets");
      draw=true;
      File[] listOfFiles = folder.listFiles();
      text("Select a Set to Study:", 30, 30);
      int x=0;
      t2=millis();
      for (int i = 0; i < listOfFiles.length; i++) {
        if (listOfFiles[i].isFile()) {
          println(listOfFiles[i].getName());
          if (!listOfFiles[i].getName().substring(0, listOfFiles[i].getName().indexOf(".")).equals("")) {
            sets.add(new CardSet(listOfFiles[i].getName().substring(0, listOfFiles[i].getName().indexOf(".")), 5, x*50+55+i*5));
            x++;
          }
        }
      }
    }
  }
}

