import gifAnimation.*; 
import java.util.*;
import java.io.*;

String page = "loading";
<<<<<<< HEAD
String quizName="";
Quiz currentQuiz;
Learn currentLearn;
=======
>>>>>>> FETCH_HEAD
PFont font; 
PFont font2;
String fT;
double time=millis();
Gif nonLoopingGif, load;

void setup() {
  size(700, 600);
  background(188, 210, 238);
  time = millis();
  nonLoopingGif = new Gif(this, "loading.gif");
  nonLoopingGif.play();
<<<<<<< HEAD
  fT="home";
  font=loadFont("Baskerville-SemiBold-48.vlw");
  font2=createFont("Baskerville-SemiBold-48.vlw",15);
  currentQuiz = null;
  cp5= new ControlP5(this);
=======
  fT = "home";
  font = loadFont("Baskerville-SemiBold-48.vlw");
>>>>>>> FETCH_HEAD
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
  else if (page.equals("loading")){
    loadingPage(fT);
  }
<<<<<<< HEAD
  else if(page.equals("learn")){
=======
  else if (page.equals("loadSet")){
    cardSets();
>>>>>>> FETCH_HEAD
  }
}

