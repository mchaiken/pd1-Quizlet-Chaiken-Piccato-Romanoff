String page="home";
PFont font;
void setup() {
  size(700, 600);
  fill(188, 210, 238);
  rect(0,0,700,600);
  font=loadFont("Baskerville-SemiBold-48.vlw");
  frameRate(12);
}

void draw() {
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


