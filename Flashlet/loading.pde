import gifAnimation.*;

void loadingPage(String functiontext) {
  
  if (millis() < 0 /* time +3000 */){
    image(nonLoopingGif, width/2 - nonLoopingGif.width/2, height / 2 - nonLoopingGif.height / 2);
  }
  
  else {
    
   background(188, 210, 238);    
    page = functiontext;
     if (functiontext.equals("newSet")) {
        setupBoxes();
        textSize(40);
        text("Term", 40, 70);
        text("Definition", 390, 70);
        fill(250, 182, 8);
        setName();
      }
  }
}
