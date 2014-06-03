 String setName="";
 class Button{
String displaytext;
  String functiontext;
  String size;
  int xcor;
  int ycor;
  int w;
  int h;
  int fsize;
  int xoff;
  int yoff;
   Button(String t, String f, String s, int x, int y){
     displaytext=t;
     functiontext=f;
     size=s;
     xcor=x;
     ycor=y;
     if (s.equals("small")){
       w=150;
       h=35;
       fsize=12;
       xoff=22;
       yoff=3;
     }
     else if(s.equals("large")){
       w=200;
       h=50;
       fsize=25;
       xoff=45;
       yoff=6;
     }
   }
   void draw(){
     if (hovered()){
       fill(150,250,255);
     }
      else{
        fill(0,200,255);
      }
     ellipse(xcor,ycor, w,h);
     fill(0);
     textFont(font,fsize);
     text(displaytext, xcor-xoff, ycor+yoff);
     if (mousePressed){
       mouseClicked();
     }
   }
   
   boolean hovered(){
     return ((mouseX > xcor-(w/2) && mouseX < xcor+(w/2))&&(mouseY> ycor-(h/2) && mouseY < ycor+(h/2)));
   }
   void mouseClicked(){
     if (hovered()){
       setup();
       page=functiontext;
       if (functiontext.equals("newSet")){
            setupBoxes();
            textSize(40);
            text("Term", 40, 70);
            text("Definition", 390, 70);
            fill(250, 182, 8);     
            setName=name.getText();
       }
     }
   }
}
