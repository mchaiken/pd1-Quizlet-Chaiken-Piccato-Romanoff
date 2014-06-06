
TextBox name=new TextBox(200, 250);
Button createSet=new Button("Create Set", "newSet", "large", 350, 350);

void setName() {
  
  name.updateText();
  if (mousePressed) {
    name.mousePressed();
  }
  if (keyPressed) {
    name.keyPressed();
  }
 
}

