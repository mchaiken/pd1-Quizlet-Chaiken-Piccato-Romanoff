
import gifAnimation.*;
import java.util.*;
import java.io.*;
String page = "loading";
String quizName="";
Quiz currentQuiz;
Quiz currentLearn;
PFont font; 
String fT;
Quiz currentQuiz;
double time=millis();
Gif nonLoopingGif;
Gif load;

void setup() {
  size(700, 600);
  background(188, 210, 238);
  time=millis();
  nonLoopingGif = new Gif(this, "loading.gif");
  nonLoopingGif.play();
  fT="home";
  font=loadFont("Baskerville-SemiBold-48.vlw");
  currentQuiz = null;
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
<<<<<<< HEAD
  }
  else if(page.equals("study")){
    currentQuiz.draw();
  }
  else if(page.equals("learn")){
    currentLearn.draw();
=======
>>>>>>> FETCH_HEAD
  }
    
}

