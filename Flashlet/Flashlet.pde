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
Controller controller;
void setup() {
  size(700, 600);
  background(188, 210, 238);
  time=millis();
  nonLoopingGif = new Gif(this, "loading.gif");
  nonLoopingGif.play();
  fT="home";
  font=loadFont("Baskerville-SemiBold-48.vlw");
  currentQuiz = null;
  cp5= new ControlP5(this);
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
  } else if(page.equals("learn")){
    currentLearn.draw();
  }
    
}

