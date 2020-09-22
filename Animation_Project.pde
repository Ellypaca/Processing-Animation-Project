//Katelynn Bai 
//Animation Project
//September 21, 2020
//Block 1-2 B

// VARIABLES & OTHERS =================
import java.util.Random;

Random rand = new Random(); //create variable of type random


int bg1, bg2, bg3;

int fg1, fg2, fg3, fg4, fg5;

int fox;

int cloud1, cloud2, cloud3, cloud4, cloud9;

int framecounter; //counts frames
boolean cloudactive = false; //cloud is on screen
boolean cloudmoving = false; //cloud is moving

void setup(){ //==========================
  size(800, 600);
  
  
  
  //initialize background hills
  
  bg1=0;
  bg2=400;
  bg3=800;
  
  //initialize foreground hills
 
  fg1=0;
  fg2=200;
  fg3=400;
  fg4=600;
  fg5=800;
  
  //initialize fox
  fox=60;
  
  //initialize FrameCounter
  framecounter=0;
    
  //initialize Clouds
  cloud1=200;
  cloud2=400;
  cloud3=-150;
  cloud4=-400;
  cloud9=-150;
  
  System.out.println("Saa nanbyakkai, nanzen kai Suki na dake amaete ii nojya Shippo futte mofu-mofu!");

} //END SETUP? ===========================





void draw(){ //=========================
  //sky
  background(116, 207, 255);
  
  
  
  
  
  //bg hills
  fill(50, 234, 94);
  ellipse(bg1, 400, 400, 400);
  ellipse(bg2, 400, 400, 400);
  ellipse(bg3, 400, 400, 400 );
  //move bg hills
  bg1=bg1+2;
  bg2=bg2+2;
  bg3=bg3+2;
  //loop hills
  if (bg1 > 1000){
  bg1=-200;
  }
  if (bg2 > 1000){
  bg2=-200;
  } 
  if (bg3 > 1000){
  bg3=-200;
  }
  
  
  
  
  
  //fg hills
  fill(23, 144, 42);
  ellipse(fg1, 400, 200, 200);
  ellipse(fg2, 400, 200, 200);
  ellipse(fg3, 400, 200, 200);
  ellipse(fg4, 400, 200, 200);
  ellipse(fg5, 400, 200, 200);
  //move fg hills
  fg1=fg1+4;
  fg2=fg2+4;
  fg3=fg3+4;
  fg4=fg4+4;
  fg5=fg5+4;
  //loop hills
  if(fg1 >= 900){
  fg1=-100;
  }
  if(fg2 >= 900){
  fg2=-100;
  }
  if(fg3 >= 900){
  fg3=-100;
  }
  if(fg4 >= 900){
  fg4=-100;
  }
  if(fg5 >= 900){
  fg5=-100;
  }





  //ground
  fill(129, 96, 12);
  rect(0, 400, 800, 200);
  
  
 
 
  
  //clouds
  //first cloud
  fill(255);
  ellipse(cloud1, 180, 100, 100); //200
  ellipse(cloud1+50, 180, 100, 100); //250
  ellipse(cloud1+100, 180, 100, 100); //300
  ellipse(cloud1+50, 140, 80, 80); //250
  //movement
  cloud1=cloud1+1;
  if(cloud1>=925){
  cloud1=-125;
  }
  //second cloud
  fill(255);
  ellipse(cloud2, 240, 100, 100); 
  ellipse(cloud2+50, 240, 100, 100); 
  ellipse(cloud2+100, 240, 100, 100); 
  ellipse(cloud2+50, 200, 80, 80); 
  //movement
  cloud2=cloud2+1;
  if(cloud2>=925){
  cloud2=-125;
  }
  //third cloud
  fill(255);
  ellipse(cloud3, 270, 100, 100); 
  ellipse(cloud3+50, 260, 100, 100); 
  ellipse(cloud3+100, 250, 100, 100); 
  ellipse(cloud3+40, 220, 80, 80); 
  //movement
  cloud3=cloud3+1;
  if(cloud3>=925){
  cloud3=-125;
  }
  //fourth cloud
  //lightning
  fill(255, 245, 44);
  triangle(cloud4+80, 160, cloud4, 160, cloud4+40, 270);
  triangle(cloud4+40, 230, cloud4+80, 230, cloud4+40, 320);
  fill(120);
  strokeWeight(0);
  stroke(120);
  //cloud
  ellipse(cloud4, 160, 100, 100); 
  ellipse(cloud4+50, 160, 100, 100); 
  ellipse(cloud4+100, 160, 100, 100); 
  ellipse(cloud4+50, 120, 80, 80); 
  //movement
  cloud4=cloud4+1;
  if(cloud4>=925){
  cloud4=-125;
  }
  fill(255);
  stroke(255);
  
  //Bill Wang helped with this whole section
  if(rand.nextInt(6)==3 && framecounter>52 && !cloudmoving){  //checks if cloud should be shown rand.nextInt(max number)==your number 
  framecounter=0;
  cloudactive=true;
  cloudmoving=true;
  }
  else if(framecounter>52 && !cloudmoving){  //resets counter if cloud was not shown
  framecounter=0;
  cloudactive=false;
  }
  else if(cloudmoving){ //disables the frame counter when the cloud is on screen
  framecounter=0;
  }
  
  if(cloudactive){  //moves cloud across screen
  ellipse(cloud9, 100, 100, 100);  //400
  ellipse(cloud9+50, 100, 100, 100); //450
  ellipse(cloud9+100, 100, 100, 100); //500
  ellipse(cloud9+50, 60, 80, 80); //450
  stroke(116, 207, 255); //
  strokeWeight(10);
  ellipse(cloud9+40, 70, 40, 40); 
  line(cloud9+66, 56, cloud9+53, 130);
  stroke(50, 234, 94);
  strokeWeight(0);
  cloud9=cloud9+2;    
  if (cloud9 > 1050){ //checks if cloud moved offscreen, redo random cycle
    cloud9=-225;
    cloudmoving=false;
    cloudactive=false;
  }
 }
     ++framecounter; //increase framecounter by 1

//end of the section

   //fox
  strokeWeight(0);
  fill(239, 153, 0);
  stroke(239, 153, 0); 
   //tail
  strokeWeight(50); 
  stroke(224, 125, 2);
  pushMatrix(); //Bill Wang helped me with this
  translate(fox+40, 420); //100
  rotate(-45*PI/180); //Bill Wang helped me with this
  ellipse(0, 0, 1, 100);
  popMatrix(); //Bill Wang helped me with this
  strokeWeight(0);
  stroke(255);
  fill(255);
  //tail fluff
  triangle(fox-20, 395, fox-23, 355, fox+13, 361); //40, 37, 73
  triangle(fox-20, 395, fox-7, 395, fox-10, 370); //40, 53, 50
  triangle(fox-17, 380, fox+5, 385, fox+1, 370); //43, 65, 61
  triangle(fox+1, 370, fox+18, 375, fox+13, 360); //61, 78, 73
  strokeWeight(0);
  //ears
  fill(239, 153, 0);
  triangle(fox+70, 450, fox+190, 380, fox+30, 280); //left ear; 130, 250, 90
  triangle(fox+210, 450, fox+100, 380, fox+250, 280); //right ear; 270, 160, 310
  //ear fluffs
  fill(249, 255, 234);
  triangle(fox+88, 450, fox+160, 380, fox+43, 300); //left fluff; 148, 220, 103
  triangle(fox+200, 450, fox+116, 380, fox+236, 300); //right fluff; 260, 176, 296
  //body
  fill(239, 153, 0);
  ellipse(fox+140, 400, 200, 200); //200
  //white body thing
  fill(255);
  ellipse(fox+140, 445, 100, 80); //200
  //left eye
  pushMatrix(); //Bill Wang helped me with this
  fill(203, 197, 70);
  translate(fox+91, 380); // 151
  rotate(25.7*PI/180); //Bill Wang helped me with this
  ellipse(0, 0, 40, 20); //0
  popMatrix(); //Bill Wang helped me with this
  //right eye
  pushMatrix(); //Bill Wang helped me with this
  translate(fox+189, 380); //249
  rotate(-25.7*PI/180); //Bill Wang helped me with this
  ellipse(0, 0, 40, 20); //0
  popMatrix(); //Bill Wang helped me with this
  //left pupil
  fill(0);
  ellipse(fox+91, 380, 12, 12); //151
  //right pupil
  ellipse(fox+189, 380, 12, 12); //249
  //nose
  fill(51, 45, 57);
  triangle(fox+140, 425, fox+150, 415, fox+130, 415); //200, 210, 190
  
  //fox move
  fox=fox+6;
  if(fox>=900){
    fox=-300;
  }
 
    
} // END DRAW =========================
