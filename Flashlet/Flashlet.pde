import controlP5.*;
import gifAnimation.*;
import java.util.*;
import java.io.*;
import static javax.swing.JOptionPane.*;
import static javax.swing.JFrame.*;
PrintWriter writer = createWriter("accounts.txt");

CallbackListener[] callBacks;

PFont font, font2, font3, font4, font5;
boolean setup = false;
String page = "loading";
String quizName="";
String user = "";
Quiz currentQuiz;
Learn currentLearn;
String fT;
double time=millis();
Gif nonLoopingGif; 
Gif load;
ControlP5 cp5;
double t2;
Controller controller;
PImage tintedStar;
String[] boxNames = new String[12];
Textfield current;

void setup() {

  size(700, 600);
  background(188, 210, 238);
  time=millis();

  cp5 = new ControlP5(this); 

  nonLoopingGif = new Gif(this, "loading.gif");
  nonLoopingGif.play();
  fT="login";
  font=loadFont("Baskerville-SemiBold-48.vlw");
  font2=createFont("Baskerville-SemiBold-48.vlw", 20);
  currentQuiz = null;

  // fonts used in CreateSet
  font3 = createFont("Futura-CondensedMedium", 24);
  font4 = createFont("Bar", 36);
  font5 = createFont("CenturyGothic-Bold", 30); 

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
  cp5.addButton("unstar").setImage(starImg).setPosition(170, 55).setSize(60, 50).hide(); 

  // creates and hides CP Functionality for CreateSet 
  setupCPBoxes();
  //setupCallbacks();
  setupCPButtons();

  // saves the String names of the CPTextfields for easy iteration
  for (int x = 0; x < 6; x++) {
    boxNames[x] = "t" + x;
    boxNames[x + 6] = "d" + x;
  }
  setup = true;
}

void draw() {
  if (page.equals("login")) {
    login();
  } else if (page.equals("home")) {
    homePage();
  } else if (page.equals("setName")) {
    setName();
  } else if (page.equals("newSet")) {
    //updateCreateSet();
    submit.draw();
  } else if (page.equals("createSet")) {
    updateCreateSet();
  } else if (page.equals("loading")) {
    loadingPage(fT);
  } else if (page.equals("learn")) {
    home.draw();
  } else if (page.equals("quiz")) {
    home.draw();
  } else if (page.equals("loadSet")) {
    home.draw();
    cardSets();
  } else if (page.equals("selectType")) {
    selectQuizType();
  }
}

void star(int theValue) {
  cp5.get("star").hide();
  cp5.get("unstar").show();
  currentCard.star();
}


void unstar(int theValue) {
  cp5.get("unstar").hide();
  cp5.get("star").show();
  currentCard.star();
}

// activated in CreateSet
void setupCPBoxes() {
  for (int x = 0; x < 6; x++) {
    termValues[x] = x + "";
    defValues[x] = x + "";
    String name = "t" + x;
    //println(name);
    cp5.addTextfield(name)
      .setPosition(55, 165 + (60 * x))
        .setSize(255, 40)
          .setColor(color(60, 60, 60))
            .setCaptionLabel("")
              .setColorForeground(color(75, 75, 75))
                .setColorBackground(color(255, 255, 255))
                  .setFont(font3)
                    .setFocus(x == 0)
                      .setAutoClear(false)
                        .setText("")


                          .hide();

    name = "d" + x;
    cp5.addTextfield(name)
      .setPosition(350, 165 + (60 * x))
        .setSize(255, 40)
          .setColor(color(60, 60, 60))
            .setCaptionLabel("")
              .setColorForeground(color(75, 75, 75))
                .setColorBackground(color(255, 255, 255))
                  .setFont(font3)
                    .setFocus(false)
                      .setAutoClear(false)
                        .setText("")

                          .hide();
  }
}

// activated in CreateSet
void setupCPButtons() {
  /*
  cp5.addButton("addCard")
    .setOff()
      .setPosition(248, 547)
        .setSize(170, 37)
          .setColorForeground(color(15, 133, 88))
            .setColorBackground(color(183, 217, 177))
              .setColorCaptionLabel(color(85, 85, 85))
                .align(290, 525, 100, 400)
                  .setCaptionLabel("")
                    .hide();

  cp5.addButton("test")
    .setOff()
      .setPosition(400, 10)
        .setSize(50, 50)
          .setColorForeground(color(15, 133, 88))
            .setColorBackground(color(183, 217, 177))
              .hide();
              */
}
/*
void setupCallbacks() {
  CallbackListener a = new CallbackListener() {
    public void controlEvent(CallbackEvent theEvent) {
      if (theEvent.getAction() == ControlP5.ACTION_PRESSED) {
        for (String s : boxNames) {
          updateCard(s);
        }
      }
    }
  };
  cp5.addCallback(a);

}
*/

