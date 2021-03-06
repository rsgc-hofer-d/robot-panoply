int scene = 0;

void setup() {


  //create the canvas
  size(1000, 700);
}
void draw() {

  background(60);

  //make all of the classes into usuable robots
  ASPRobot adambot = new ASPRobot();
  BDRobot benbot = new BDRobot();
  DDRobot dariusbot = new DDRobot();
  DHRobot  danielbot = new DHRobot();
  EPRobot ethanbot  = new EPRobot();
  JSSRobot jamiebot  = new JSSRobot();
  KCRobot  kernbot  = new KCRobot();
  NTRobot  nickbot  = new NTRobot();
  TMRobots timbot  = new TMRobots();
  EPRobot2 ebot = new EPRobot2();
  SCRobot spenbot = new SCRobot();


  //title page aka scene 0
  if (scene==0) {
    textAlign(CENTER);
    textSize(100);
    fill(0);
    String title = "Die Hard";
    text(title, 500, 350);
    textSize(50);
    String author = "By: Daniel Hofer";
    text(author,500,500);
  }
  textAlign(LEFT);
  //start of scene 1
  if (scene==1) {
    //resets text size
    textSize(12);
    //make a chair
    fill(#815901);
    stroke(#815901);
    rect(600, 590, 15, 110);
    rect(600, 590, 100, 15);
    rect(700, 480, 15, 220);
    stroke(0);
    //create windows using a loop
    int window = 0;
    while (window<3) {
      fill(#0D015D);
      rect(100+300*window, 100, 200, 200);
      fill(0);
      rect(198+300*window, 100, 4, 200);
      rect(100+300*window, 198, 200, 4);
      window +=1;
    }
    int x = 50;
    //all the text strings for this scene
    String s = "John meets his wife in the Nakatomi tower. He hasn't seen his wife ever since they moved apart from eachother, because of work." ;
    String r = "It is christmas time and there is a small party in the Nakatomi tower. John McClane has no idea what is in store for him!";
    String j = "Hi Holly! Merry Christmas!";
    String h = "Hey John!";
    fill(#05E8FF);
    text(s, 100, 100-x);
    text(r, 100, 120-x);
    //loop 5 times
    int counter = 0;

    while (counter<4) { 
      //draw the robot
      print(50+100*counter);
      fill(255);
      //make john's text bubble
      ellipse(250, 400, 200, 60);
      //make Holly Generos Text Bubble
      ellipse(600, 400, 150, 60);
      fill(0);
      text(j, 175, 410);
      text(h, 575, 410);

      benbot.drawAt(100 + 150*counter, 50+10*counter, .5-.05*counter, .5-.05*counter);

      benbot.drawAt(700, 50+250*counter, .5-.05*counter, .5-.05*counter);
      //draw john mclcaine
      timbot.drawAt(100, 450, 1, 1);
      //draw johns wife
      ethanbot.drawAt(250, 375, .65, .65);
      fill(120);
      jamiebot.drawAt(25, 100, 1, 1);
      counter +=1;
    }
  }
  //start of scene 2
  if (scene==2) {
    //create a ladder for background
    int ladder=0;
    while (ladder<14) {
      fill(120);
      stroke(255);
      rect(800, 75, 20, 600);
      rect(950, 75, 20, 600);
      rect(800, 100+50*ladder, 150, 20);
      //create a big window
      fill(#0D015D);
      stroke(0);
      strokeWeight(5);
      rect(100, 140, 400, 200);
      fill(0);
      rect(300, 140, 10, 200);
      rect(100, 240, 400, 10);





      //to move holly and haz at the same time
      int x = -100;
      //draw all the  charachters in order: Gruber, Holly, John, Karl, 
      kernbot.drawAt(0+x, 385, .75, .75);
      ethanbot.drawAt(250+x, 425, .5, .5);
      timbot.drawAt(800, 300, 1, 1);
      adambot.drawAt(335, 399, .5, .5);




      //draw the textboxes in order karl, hanz, john
      fill(255);
      ellipse(500, 360, 280, 100);
      ellipse(210+x, 400, 200, 60);
      ellipse(775, 260, 200, 50);


      //the text
      //karls text
      String k = "You killed my brother! I will avenge him!";
      fill(0);
      text(k, 385, 363);
      //hanz grubers text
      String w = "I have you wife Mr.McClane";
      text(w, 125+x, 400);
      // john mclaines text
      String b ="I'll get you Hanz!!!";
      text(b, 720, 270);
      //summary text
      String p = "The terrorists have attacked the building John is the only man ";
      String q = "not captured. He will do whatever it takes to get his wife back!";
      fill(#05E8FF);

      text(p, 50, 50);
      text(q, 50, 70);


      //create a wall between john and the rest of the people in the scene showing how john is somewhere else in the building
      fill(255);
      rect(650, 0, 10, 700);
      ladder+=1;
    }
  }
  //start of scene 3
  if (scene == 3) {
    String police = "POLICE";
    //police car
    fill(0);
    rect(100, 180, 300, 70);
    ellipse(180, 260, 70, 70);
    ellipse(310, 260, 70, 70);
    fill(255, 255, 255, 255);
    rect(150, 120, 200, 60);
    fill(#060ECE);
    rect(210, 90, 40, 30);
    textSize(50);
    text(police, 180, 230);
    fill(#FF0D1D);
    rect(251, 90, 40, 30);


    int loop = 0;
    //use int x to move the all 3 lines of text to summarize the scene
    int x= 5;
    while (loop<3) {
      //draw the charachters in order John, Wife, Police and Civilians
      timbot.drawAt(800, 450, 1, 1); 
      ethanbot.drawAt(550, 450, .55, .55);
      danielbot.drawAt(100+150*loop, 450-200*loop, .5, .5);

      benbot.drawAt(700, 0, .5, .5);
      // int policex is used to replicate the police car and move all the x coordinates at once, same with ypolice but with y coordinates
      int policey =150;
      int policex = 310;
      fill(0);
      rect(100+policex, 180+policey, 300, 70);
      ellipse(180+policex, 260+policey, 70, 70);
      ellipse(310+policex, 260+policey, 70, 70);
      fill(255, 255, 255, 255);
      rect(150+policex, 120+policey, 200, 60);
      fill(#060ECE);
      rect(210+policex, 90+policey, 40, 30);
      textSize(50);
      text(police, 180+policex, 230+policey);
      fill(#FF0D1D);
      rect(251+policex, 90+policey, 40, 30);
      //draw the text bubbles, for johns , johns wife and the police
      fill(255);
      ellipse(900, 400, 200, 70);
      ellipse(675, 420, 200, 70);
      ellipse(475, 600, 200, 70);
      //resets text size because of last textSize in danbot
      textSize(12);
      //text for John, Johns wife and the LAPD
      String v = "Another normal day";
      String o = "John, my savior! I love you!";
      String t = "Is everyone all right?";
      String l = "John defeats the terrorists, saves his wife and";
      String k = "all the other hostages. John and Holly live";
      String m = "happily ever after until their next adventure...";

      fill(0);
      text(v, 840, 400);
      text(o, 605, 420);
      text(t, 410, 600);
      fill(#05E8FF);
      text(l, x, 350);
      text(k, x, 365);
      text(m, x, 380);
      loop+=1;
    }
  }
  if (frameCount%180==0){
    scene+=1;
  }
  saveFrame("export-####.png");
}
void keyPressed() {
  scene+=1;
}