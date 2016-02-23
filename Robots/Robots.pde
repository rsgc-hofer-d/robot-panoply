void setup() {
  
  //create the canvas
  size(1000,700);
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
  

//loop 5 times
int counter = 0;
while (counter<3) {
  //draw the robot
  print(50+100*counter);
  benbot.drawAt(250 + 150*counter,50+10*counter,.5-.05*counter,.5-.05*counter);
  //draw john mclcaine
  timbot.drawAt(100,450,1,1);
  ethanbot.drawAt(250,375,.65,.65);
  
  counter +=1;
}
}