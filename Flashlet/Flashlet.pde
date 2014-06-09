String page="home";
PFont font;
double time;
PImage load;
void setup() {
  size(700, 600);
  background(255, 255, 255);
  time=millis();
  load= loadImage("loading.gif");  

  font=loadFont("Baskerville-SemiBold-48.vlw");
}

void draw() {
  while (millis ()<time+2000)
  {
    image(load, 125, 50);
  }
  if (page.equals("home")) {
    homePage();
  } else if (page.equals("setName")) {
    setName();
  } else if (page.equals("newSet")) {
    newSet();
  } else if (page.equals("createSet")) {
    newSet();
  }
}

