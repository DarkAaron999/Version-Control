class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  boolean isDeleted;
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    
    isDeleted = false;
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
    
    if (position.y > height) {
      isDeleted = true;
    }
  }
  
  void display(){
    if (!isDeleted) {
    fill(random(255), random(255), random(255));
    ellipse(position.x, position.y, 10, 10);
    }
  }
}
