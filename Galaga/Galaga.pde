/* Nakia & Luis Soto Ortega
  Galaga
  GD 205
*/

//https://www.youtube.com/watch?v=_k_yRbUeVxY&t=788s
//needed a video that would also teach me more about the terms instead of just making the mechanic

PImage ship;
PImage space;
PImage enemy;


ArrayList <Bullets> bulletList;
ArrayList <Enemy> enemyList;

void setup() {

  size(1000, 1000);
  
  space = loadImage("Space.png");
  space.resize(1000,0);
  ship = loadImage("Ship.png");
  enemy = loadImage("enemy1.png");
  
  bulletList = new ArrayList<Bullets>(); //constructor
  enemyList = new ArrayList<Enemy>(); //enemy constructor
  
  e1 = new Enemy(300, 200, 100, 200);
  
  //add arrayList
  enemyList.add(e1);
  
}

void draw() {
  
  background(255);
  image(space, -1, 3);
  character();
 
  println(bulletList.size()); //check the bullet list for bullets
  
  // for loop that goes through all bullets
  //: means in so in bulletList. aBullet in bulletList
  for (Bullets aBullet : bulletList) {
    aBullet.render();
    aBullet.move();
  }
  
  for (Enemy anEnemy : enemyList) {
     anEnemy.render();
   
  }
  
}


void keyPressed() {
  
  if (key == 'a' || key == 'A') {
    left = true;
  }
  
  if (key == 'd' || key == 'D') {
    right = true;
  }
  
  if (key == ' ' ){ //Press space
    bulletList.add(new Bullets(x1 + 25, y1)); //adjust bullets to the middle by adding 25 to the origina; x1 position
  }
  
}

void keyReleased() {
  
  if (key == 'a' || key == 'A') {
    left = false;
  }
  
  if (key == 'd' || key == 'D') {
    right = false;
  }
  
}
