TextBox name=new TextBox(200, 250);

void setName() {
  if (mousePressed) {
    name.mousePressed();
  }
  if (keyPressed){
   name.keyPressed();
  }
  name.keyReleased();
}    

