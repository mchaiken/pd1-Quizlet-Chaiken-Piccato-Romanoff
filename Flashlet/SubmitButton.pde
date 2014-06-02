class  SubmitButton extends Button{
  SubmitButton(String t, String f, String s, int x, int y){
     super(t,f,s,x,y);
     }
   void mouseClicked(){
     if (hovered()){
       String temp="";
       for (TextBox b: tb){
         temp+=b.getText();
       }
       String ret="";
       /*
       while(temp.indexOf(" ")!=-1){
         ret+=temp.substring(1,temp.indexOf(" ")+1);
         temp=temp.substring(temp.indexOf(" ")+1);
       }
       */
       //ret+=temp.substring(1);
       int r=(int)random(10);
       File f=new File("cardSets/"+r+".txt");
       PrintWriter out=createWriter("cardSets/"+r+".txt");
       out.print(temp);
       out.close();
       setup();
       page="home";
         
       }
     }
   }
