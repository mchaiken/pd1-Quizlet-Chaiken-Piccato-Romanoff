Button nSet= new Button("New Set", "setName", "large", 355, 250);
Button lSet= new Button("Load Set", "loadSet", "large", 355, 350);



PImage img;
void homePage() {
  img = loadImage("Flashlet.jpg");
  image(img, 0, 0);
  lSet.draw(); 
  nSet.draw();
}

