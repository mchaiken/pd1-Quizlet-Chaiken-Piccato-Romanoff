myButton createAccount= new myButton("Create Account", "createA", "large", 355, 250);
myButton login= new myButton("Log In", "logIn", "large", 355, 350);
void login(){
  img = loadImage("Flashlet.jpg");
  image(img, 0, 0);
  createAccount.draw();
  login.draw();
}
