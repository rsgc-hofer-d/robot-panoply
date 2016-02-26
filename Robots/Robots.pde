int scene = 3;

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


  //start of scene 1
  if (scene==1) {
    int x = 50;
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
      jamiebot.drawAt(25, 100, 1, 1);
      counter +=1;
    }
  }
  //start of scene 2
  if (scene==2) {
    //draw all the main charachters in order: Gruber, Holly, John, Karl, Citizens
    kernbot.drawAt(0, 385, .75, .75);
    ethanbot.drawAt(250, 425, .5, .5);
    timbot.drawAt(800, 300, 1, 1);
    adambot.drawAt(30, 30, .5, .5);
    benbot.drawAt(-30, 450, .3, .3);

    //draw create the textboxes
    fill(255);
    ellipse(350, 60, 280, 100);
    ellipse(200, 400, 200, 60);
    ellipse(750, 200, 200, 50);


    //the text
    String k = "You killed my brother! I will avenge him!";
    fill(0);
    text(k, 240, 60);
    String w = "I have you wife Mr.McClane";
    text(w, 125, 400);
    String b ="I'll get you Hanz!!!";
    text(b, 700, 210);
    String p = "The terrorists have attacked the building John is the only man not captured.";
    String q = "He will do whatever it takes to get his wife back!";
    fill(#05E8FF);
    text(p, 525, 650);
    text(q, 525, 670);


    //create a wall between john and the rest of the people in the scene showing how john is somewhere else in the building
    fill(255);
    rect(500, 0, 10, 700);
  }
  //start of scene 3
  if (scene == 3) {
    int loop = 0;
    while (loop<3) {
      //draw the charachters in order John, Wife, Police and Civilians
      timbot.drawAt(800, 450, 1, 1); 
      ethanbot.drawAt(550, 450, .55, .55);
      danielbot.drawAt(100+150*loop, 450-200*loop, .5, .5);
      benbot.drawAt(700,0,.5,.5);
      benbot.drawAt(50,0,.5,.5);
      //draw the text bubbles, for johns , johns wife and the police
      fill(255);
      ellipse(900,400,200,70);
      
      //text for John, Johns wife and the police
      String v = "Another normal day";
      fill(0);
      text(v,820,400);
      loop+=1;
    }
  }
}
void keyPressed() {
  scene+=1;
}