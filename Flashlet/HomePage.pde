myButton nSet= new myButton("New Set", "newSet", "large", 355, 250);
myButton lSet= new myButton("Load Set", "loadSet", "large", 355, 350);

PImage img;
void homePage() {
  img = loadImage("Flashlet.jpg");
  image(img, 0, 0);
  lSet.draw(); 
  nSet.draw();
}

