import controlP5.*;
import gifAnimation.*;
import java.util.*;
import java.io.*;
String page = "loading";
String quizName="";
Quiz currentQuiz;
Quiz currentLearn;
PFont font; 
String fT;
double time=millis();
Gif nonLoopingGif; 
Gif load;
ControlP5 cp5;
PImage tintedStar;
int index;
void setup() {
  size(700, 600);
  background(188, 210, 238);
  time=millis();
  nonLoopingGif = new Gif(this, "loading.gif");
  nonLoopingGif.play();
  fT="home";
  font=loadFont("Baskerville-SemiBold-48.vlw");
  currentQuiz = null;
  cp5 = new ControlP5(this); 
  
  starImg = loadImage("star.jpg");
  starImg.resize(60, 50);
  
  tintedStar = loadImage("star.jpg");
  tintedStar.filter(GRAY);
  tintedStar.resize(60, 50);
  cp5.addButton("starCard").setImage(tintedStar).setPosition(170, 50).setSize(60,50).hide();
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
  } else if (page.equals("loading")) {
    loadingPage(fT);
  } else if (page.equals("loadSet")) {
    cardSets();
  } else if (page.equals("quiz")) {
    currentQuiz.draw();
  } else if(page.equals("learn")){
    currentLearn.draw();
  }
}

void starCard(int theValue) {
  image(starImg, 170, 50);
  cp5.get("starCard").hide();
  currentQuiz.addCard();
}
