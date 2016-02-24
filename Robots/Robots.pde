void setup() {

  //create the canvas
  size(1000, 700);
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
  //variables and texts 
  int x = 50;
background(3);
  String s = "John meets his wife in the Nakatomi tower. He hasn't seen his wife ever since they moved apart from eachother, because of work." ;
  String r = "It is christmas time and there is a small party in the Nakatomi tower. John McClane has no idea what is in store for him!";
  fill(#05E8FF);
  text(s, 100, 100-x);
  text(r, 100, 120-x);
  //loop 5 times
  int counter = 0;
  while (counter<4) {
    //draw the robot
    print(50+100*counter);
    benbot.drawAt(100 + 150*counter, 50+10*counter, .5-.05*counter, .5-.05*counter);

    benbot.drawAt(700, 50+250*counter, .5-.05*counter, .5-.05*counter);
    //draw john mclcaine
    timbot.drawAt(100, 450, 1, 1);
    //draw johns wife
    ethanbot.drawAt(250, 375, .65, .65);
jamiebot.drawAt(25,100,1,1);
    counter +=1;
  }
}