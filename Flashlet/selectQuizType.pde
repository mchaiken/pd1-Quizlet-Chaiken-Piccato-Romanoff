myButton learn= new myButton("Learn", "learn", "large", 355, 250);
myButton quiz= new myButton("Quiz", "quiz", "large", 355, 350);

void selectQuizType(){
    background(188, 210, 238);
  img = loadImage("Flashlet.jpg");
  image(img, 0, 0);
  learn.draw(); 
  quiz.draw();
  
}
