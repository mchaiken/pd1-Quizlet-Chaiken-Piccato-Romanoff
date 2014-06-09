<<<<<<< HEAD
TextBox name=new TextBox(200, 250);
Button createSet=new Button("Create Set", "newSet", "large", 350, 350);
boolean keybeenReleased=true;

=======
import static javax.swing.JOptionPane.*;
String flash_card_set_name;
boolean keybeenReleased=true;
>>>>>>> c93feed2ee9c25ed17e00ebcd1b935c07e943bf2
void setName() {
  flash_card_set_name = showInputDialog("Name your flashcard Set");
}

