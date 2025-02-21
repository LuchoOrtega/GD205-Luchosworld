float x1 = 237, x2 = 254, x3 = 271, y1 = 950;
float speed = 15;

boolean left = false;
boolean right = false;

void character() {
  
  image(ship,x1,y1,50,50);
  
  if (left) {
    x1 -= speed;
  }
  
  if (left) {
    x2 -= speed;
  }
  
  //if (left) {
    //x3 -= speed;
 // }
  
  if (right) {
    x1 += speed;
  }

  if (right) {
    x2 += speed;
  }
  
  //if (right) {
    //x3 += speed;
 // }
   
}
