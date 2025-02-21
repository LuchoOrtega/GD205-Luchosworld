//Going to use Flyweight here. Hopefully it works
int x;
int w;
int h;
int y;
Enemy e1;

class Enemy {
  
  
  Enemy(int startingX, int startingY, int startingW, int startingH){
    
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    
  }
  
  void render() {
    
    image(enemy, x, y, w, h);
    
  }
  
}
