import static javax.swing.JOptionPane.*;
String flash_card_set_name;
boolean keybeenReleased=true;

<<<<<<< HEAD
void setName() {
  flash_card_set_name = showInputDialog("Name your flashcard Set");
=======
void setName() {   
  while( flash_card_set_name == null || flash_card_set_name.equals(""))
    flash_card_set_name = showInputDialog("Name your flashcard Set");
>>>>>>> a5ea26e2e85cc27c93c63eeec95f721c8a7bf23d
}

