<<<<<<< HEAD
  String page="home";
  PFont font;
  void setup() {
    size(700, 600);
    background(188, 210, 238);
    font=loadFont("Baskerville-SemiBold-48.vlw");
  }
  
  void draw(){
    if (page.equals("home")){
      homePage();
    }
    else if(page.equals("setName")){
      setName("temp");
    }
    else if(page.equals("newSet")){
      newSet();
    }
=======
String page="home";
PFont font;
void setup() {
  size(700, 600);
  background(188, 210, 238);
  font=loadFont("Baskerville-SemiBold-48.vlw");
}

void draw() {
  if (page.equals("home")) {
    homePage();
  } else if (page.equals("setName")) {
    setName();
  } else if (page.equals("newSet")) {
    newSet();
>>>>>>> cd3c85e59ca4d8f9b289724897443fef5462e8ca
  }
  

