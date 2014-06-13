Button quiz= new Button("Study", "study", "large", 355, 250);
Button learn= new Button("Learn", "learn", "large", 355, 350);

void selectType() {
  img = loadImage("Flashlet.jpg");
  image(img, 0, 0);
  quiz.draw(); 
  learn.draw();
}

