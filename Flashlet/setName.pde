import static javax.swing.JOptionPane.*;
String flash_card_set_name;
boolean keybeenReleased=true;

void setName() {   
  while( flash_card_set_name == null || flash_card_set_name.equals(""))
    flash_card_set_name = showInputDialog("Name your flashcard Set");
}

