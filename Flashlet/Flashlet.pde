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
<<<<<<< HEAD
Controller controller;



=======
PImage tintedStar;
int index;
>>>>>>> FETCH_HEAD
void setup() {
  size(700, 600);
  background(188, 210, 238);
  time=millis();

  nonLoopingGif = new Gif(this, "loading.gif");
  nonLoopingGif.play();
  fT="home";
  font=loadFont("Baskerville-SemiBold-48.vlw");
  font2=createFont("Baskerville-SemiBold-48.vlw", 20);
  currentQuiz = null;
<<<<<<< HEAD
  cp5= new ControlP5(this);
  cp5.addTextfield("definition")
    .setPosition(250, 400)
      .setSize(200, 40)
        .setFont(font2)
          .setFocus(true)
            .setColor(color(255, 0, 0));
  star = cp5.addButton("star").setImage(tintedStar).setSwitch(true).setPosition(170, 50);
  cp5.get("definition").hide();
  cp5.get("star").hide();
=======
  cp5 = new ControlP5(this); 
  
  starImg = loadImage("star.jpg");
  starImg.resize(60, 50);
  
  tintedStar = loadImage("star.jpg");
  tintedStar.filter(GRAY);
  tintedStar.resize(60, 50);
  cp5.addButton("starCard").setImage(tintedStar).setPosition(170, 50).setSize(60,50).hide();
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
  } else if (page.equals("loading")) {
    loadingPage(fT);
<<<<<<< HEAD
  } else if (page.equals("learn")) {
    home.draw();
  } else if (page.equals("quiz")) {
    home.draw();
  } else if (page.equals("loadSet")) {
    cardSets();
  } else if (page.equals("selectType")) {
    selectQuizType();
=======
  } else if (page.equals("loadSet")) {
    cardSets();
  } else if (page.equals("quiz")) {
    currentQuiz.draw();
  } else if(page.equals("learn")){
    currentLearn.draw();
>>>>>>> FETCH_HEAD
  }
}

void starCard(int theValue) {
  image(starImg, 170, 50);
  cp5.get("starCard").hide();
  currentQuiz.addCard();
}
