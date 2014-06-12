import controlP5.*;
import gifAnimation.*;
import java.util.*;
import java.io.*;
String page = "loading";
String quizName="";
Quiz currentQuiz;
Learn currentLearn;
PFont font; 
PFont font2;
String fT;
double time=millis();
Gif nonLoopingGif;
Gif load;
ControlP5 cp5;

void setup() {
  size(700, 600);
  background(188, 210, 238);
  time=millis();
  nonLoopingGif = new Gif(this, "loading.gif");
  nonLoopingGif.play();
  fT="home";
  font=loadFont("Baskerville-SemiBold-48.vlw");
  font2=createFont("Baskerville-SemiBold-48.vlw",15);
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
  }
  else if(page.equals("quiz")){
    
  }
  else if(page.equals("learn")){
  }
    
}

