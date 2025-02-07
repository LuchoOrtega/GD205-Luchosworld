/*
Lucho Ortega
 Kirby ball game
 This is unfinished... for now
 GD 205
 */

PImage background;

//This is Kirb
float circleX;

float score = 0;

Food[] foods;
boolean collision = false;

void setup() {
  // Canvas size
  size(800, 900);
  background(255);
  
  background = loadImage("Background.PNG");
  // This scales the images
  float scale = 1;
    // This draws the background image
  image(background, 0, 0, background.width * scale * 1.2, background.height * scale * 1.2);
  
  //This determines how many food items will be on screen
  foods = new Food[2];
  for(int i = 0; i < foods.length; i++) {
    //calls a new food
    foods[i] = new Food();
  }
  
}

void draw() {
  // This scales the images
  float scale = 1;
    // This draws the background image
  image(background, 0, 0, background.width * scale * 1.2, background.height * scale * 1.2);
  
  // This created the fade trails on Kirb
  fill(255, 100);
  quad(0, 0, 0, height, width, height, width, 0);
  
  //floor
  fill(0);
  quad(0, 900, 0, 770, 800, 770, 800, 900);
  
  // Move Kirb
  fill(#ff59d6);
  stroke(0);
  ellipse(circleX, height/2 + 300, 50, 50);
  circleX = mouseX;
  
  moveFoods();
  
  if(collision = true) {
    text("Score: "+(int)score + 1, 300, 100);
  
  }
  
}

void moveFoods() {
  for(int i = 0; i < foods.length; i++){
    //draws an array of food
      foods[i].update();
    }
  
  }
  
// calls a class for food items
class Food {
   float x, y;
   int size;
   color col;
   
   Food(float r_X, float r_Y, int r_size, color r_col) {
   x = r_X;
   y = r_Y;
   size = 1000;
   col = r_col;
   }
   
   // First food size, color, x pos, y pos
   Food(){
     // color r, g, b, opacity
     col = color(random(0), random(0), random(0), random(100, 200));
     // x pos
     x = random(width);
     // y pos
     y = 0 + size / 2.0 + random(1000);
   }
   
   // Draws the food
   void update(){
     fill(col);
     noStroke();
     circle(x, y, 50);
     
     //Food size shrink
     size--;
     //Food y pos speed going down
     y += 15;
     
     // Disapears the food and returns it when eaten
     
     // Resets the food when they are no longer visible
     if(size <= 0) {
       size = (int)random(50, 100);
       y = 0 + size / 2.0 - 50;
       x = random(width);
       
     }
   } 
   
   void eaten(){
     x = -1000;
     size = 0;
     size = (int)random(50, 100);
     y = 0 + size / 2.0 - 50;
     x = random(width);
   }
   
 }
