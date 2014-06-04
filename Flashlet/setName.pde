
TextBox name=new TextBox(200, 250);
/*
void setName(){
  text("Name Your Set:",250,240);
  Button createSet=new Button("Create Set","newSet","large",350,350);
  name.drawBox(); 
  createSet.draw();
  
}
*/
void setName() {
  if (mousePressed) {
    name.mousePressed();
  }
  if (keyPressed){
    name.keyPressed();
  }
}  
