class  SubmitButton extends myButton{

  SubmitButton(String t, String f, String s, int x, int y){
     super(t,f,s,x,y);
     }

   void mouseClicked(){
     if (hovered()){
       String ret = "";
       PrintWriter out = createWriter("accounts/" + user+"/"+flash_card_set_name+".txt");
       for (Flashcard f : flashcards) {
         if (!(f.getDef() == "" || f.getTerm() == "")) {
           out.println(f.getDef() + " " + f.getTerm());
         }
       }
       
       out.close();
       setup();
       page="home";
         
       }
     }
   }
