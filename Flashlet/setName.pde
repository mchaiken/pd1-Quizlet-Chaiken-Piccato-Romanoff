
TextBox name=new TextBox(200, 250);
Button createSet=new Button("Create Set", "newSet", "large", 350, 350);
boolean keybeenReleased=true;
void setName() {
  createSet.draw();
  home.draw();
  name.updateText();
  if (mousePressed)
    name.mousePressed();
  println(keyPressed);

  if (keyPressed && keybeenReleased)
    name.keyPressed();
 
 
}

