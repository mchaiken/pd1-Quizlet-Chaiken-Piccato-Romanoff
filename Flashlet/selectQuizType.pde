Button learn= new Button("Learn", "learn", "large", 355, 250);
Button quiz= new Button("Quiz", "quiz", "large", 355, 350);

void selectQuizType(){
    background(188, 210, 238);
  img = loadImage("Flashlet.jpg");
  image(img, 0, 0);
  learn.draw(); 
  quiz.draw();
  
}
