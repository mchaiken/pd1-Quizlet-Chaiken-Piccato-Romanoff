import gifAnimation.*;

void loadingPage(String functiontext) {
   if(cp5.get("definition").isVisible() && page != "learn"){
     cp5.get("definition").hide();
   }
     if(cp5.get("star").isVisible() && page != "quiz"){
     cp5.get("star").hide();
   }
  if (millis() < time +3000 ) {
    image(nonLoopingGif, width/2 - nonLoopingGif.width/2, height / 2 - nonLoopingGif.height / 2);
  } else {
    background(188, 210, 238);    

    if (functiontext.equals("newSet")) {
      setupBoxes();
      textSize(40);
      text("Term", 40, 70);
      text("Definition", 390, 70); 
      fill(250, 182, 8);
      setName();
      //setName=name.getText();
    }
    else if (functiontext.equals("loadSet")) {
      File folder = new File("pd1-Quizlet-Chaiken-Piccato-Romanoff/Flashlet/accounts/"+user+"/");
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
    } else if (functiontext.equals("home")) {
      println("hide");
      cp5.get(Textfield.class, "definition").hide();
      cp5.get("star").hide();
      textAlign(LEFT);
    } else if (functiontext.equals("learn")) {
      currentLearn = new Learn(quizName);
    } else if (functiontext.equals("quiz")) {
      currentQuiz = new Quiz(quizName);
    }
    else if(functiontext.equals("logIn")){
      String tryUser = showInputDialog("Please enter your user name");
      File accountFolder = new File("pd1-Quizlet-Chaiken-Piccato-Romanoff/Flashlet/accounts/");
      File[] listOfAccounts = accountFolder.listFiles();
      int i = 0;
      while (i < listOfAccounts.length && !(listOfAccounts[i].getName().equals(tryUser))) {
       i++;
      }
      if (i == listOfAccounts.length) {
       showMessageDialog(null,"User name not found");
       functiontext = "login";
      }
      else {
        user = tryUser;
        functiontext="home";
      }
      
      
    }
    else if(functiontext.equals("createA")){
      user = showInputDialog("Enter your new account Name");
      createOutput("accounts/" + user+ "/dummy.txt");
      functiontext="home";
      
    }
    page=functiontext;
  }
}

