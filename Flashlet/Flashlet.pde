import controlP5.*;
import gifAnimation.*;
import java.util.*;
import java.io.*;
import static javax.swing.JOptionPane.*;
import static javax.swing.JFrame.*;
String page = "loading";
String quizName="";
String user="";
Quiz currentQuiz;
Learn currentLearn;
PFont font; 
PFont font2;
String fT;
double time=millis();
Gif nonLoopingGif; 
Gif load;
ControlP5 cp5;
double t2;
Controller controller;
PImage tintedStar;

void setup() {
  size(700, 600);
  background(188, 210, 238);
  time=millis();

  nonLoopingGif = new Gif(this, "loading.gif");
  nonLoopingGif.play();
  fT="login";
  font=loadFont("Baskerville-SemiBold-48.vlw");
  font2=createFont("Baskerville-SemiBold-48.vlw", 20);
  currentQuiz = null;
  cp5 = new ControlP5(this); 

  starImg = loadImage("star.jpg");
  starImg.resize(60, 50);

  tintedStar = loadImage("star.jpg");
  tintedStar.filter(GRAY);
  tintedStar.resize(60, 50);
  
  cp5.addTextfield("definition")
    .setPosition(250, 400)
      .setSize(200, 40)
        .setFont(font2)
          .setFocus(true)
            .setColor(color(255, 0, 0));
  cp5.get("definition").hide();
  cp5.addButton("star").setImage(tintedStar).setPosition(170, 56).setSize(60, 50).hide();
  cp5.addButton("unstar").setImage(starImg).setPosition(170,55).setSize(60,50).hide();
  
  
  Queue test = new Queue();
  Flashcard a = new Flashcard("A", "B");
  Flashcard b = new Flashcard("B", "C");
  a.setNext(b);
  test.enqueue(a);
  println(test.toString());
  
}

void draw() {
  if(page.equals("login")){
    login();
  }
  else if (page.equals("home")) {
    homePage();
  } else if (page.equals("setName")) {
    setName();
  } else if (page.equals("newSet")) {
    newSet();
  } else if (page.equals("createSet")) {
    newSet();
  } else if (page.equals("loading")) {
    loadingPage(fT);
  } else if (page.equals("learn")) {
    home.draw();
  } else if (page.equals("quiz")) {
    home.draw();
  } else if (page.equals("loadSet")) {
    cardSets();
  } else if (page.equals("selectType")) {
    selectQuizType();
  }
}

void star(int theValue) {
  cp5.get("star").hide();
  cp5.get("unstar").show();
  currentCard.star();
  println(currentCard.toString() + " " + currentCard.starred);
}

  
void unstar(int theValue) {
  cp5.get("unstar").hide();
  cp5.get("star").show();
  currentCard.star();
  
  
}

