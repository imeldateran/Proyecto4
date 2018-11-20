class Video{
 float x,y,w,h;
 int fil;
 
 Video(float x_,float y_,float w_,float h_,int fil_){
  x = x_;
  y = y_;
  w = w_;
  h = h_;
  fil = fil_;
 }
 void display(PImage cobb){
 image(cobb,x,y,w,h);
 fill(255,0,0);
 text(s, 10, 378);
 switch(fil){
   case 1: 
   image(clip1,0,0,213,180);
    if ((mouseX > 0) && (mouseX < 213) &&
    (mouseY > 0) && (mouseY < 180)) {
    filter(INVERT);
    }break;
   case 2: 
   image(clip2,213,0,213,180);
    if ((mouseX > 213) && (mouseX < 426) &&
    (mouseY > 0) && (mouseY < 180)) {
    filter(GRAY);
    }break;
    case 3: 
   image(clip3,426,0,213,180);
    if ((mouseX > 426) && (mouseX < 639) &&
    (mouseY > 0) && (mouseY < 180)) {
    filter(POSTERIZE,6/*X*10*/);
    }break;
    case 4: 
   image(clip4,0,180,213,180);
    if ((mouseX > 0) && (mouseX < 213) &&
    (mouseY > 180) && (mouseY < 360)) {
    filter(POSTERIZE,6*2);
    }else {
    filter(NORMAL);
    }break;
    case 5: 
   image(clip5,213,180,213,180);
    if ((mouseX > 213) && (mouseX < 426) &&
    (mouseY > 180) && (mouseY < 360)) {
    filter(OPAQUE);
    }else {
    }break;
    case 6: 
   image(clip6,426,180,213,180);
    if ((mouseX > 213) && (mouseX < 639) &&
    (mouseY > 180) && (mouseY < 360)) {
    filter(ERODE);
    }break;
  }
 }
}
