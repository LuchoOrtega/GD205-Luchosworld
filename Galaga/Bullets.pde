class Bullets {
  
  //variables
  float x;
  float y;
  int d;
  int speed;
  //boolean remove; will use when finished
  
  //Bounds, using for hitbox when changing the bullet movement
  int left; //x
  int right; //x
  int top; //y
  int bottom; //y
  
   //constructor
  Bullets(float startingX, float startingY) {
    
    x = startingX;
    y = startingY;
    d = 20;
    speed = 20;
    
    //remove = false;
    
    }
 
 void render() {
   circle(x,y,d);
   }
 
 void move() {
   y -= speed; // y = y - speed
  
  }
  
}

void checkRemove() {
  
   if (y <= 0) {
     //remove = true;
   }
  }
  
