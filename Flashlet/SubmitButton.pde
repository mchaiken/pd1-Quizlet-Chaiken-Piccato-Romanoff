class  SubmitButton extends myButton{

  SubmitButton(String t, String f, String s, int x, int y){
     super(t,f,s,x,y);
     }

   void mouseClicked(){
     if (hovered()){
       String ret = "";
       PrintWriter out = createWriter("accounts/" + user+"/"+flash_card_set_name+".txt");
       for (int x = 0; x < tb.length / 2; x++) {
         String t = tb[x*2].getText();
         String d = tb[x*2+1].getText();
         if (!(d == "" || t == "")) {
           out.println(t + " " + d);
       }
       }
       
       out.close();
       setup();
       page="home";
         
       }
     }
   }
