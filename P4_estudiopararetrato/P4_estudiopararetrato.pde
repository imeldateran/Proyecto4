import processing.video.*;

Movie clip1,clip2,clip3,clip4,clip5,clip6;
Video V1,V2,V3,V4,V5,V6;
String s = "Para cambiar filtros, mueve el mouse en la pantalla";

void setup(){
 size(639,380);
 background(0);
 clip1 = new Movie(this,"Sequence 01_2.mov"); 
 clip1.loop();  
 clip2 = new Movie(this,"Sequence 01_3.mov"); 
 clip2.loop();   
 clip3 = new Movie(this,"Sequence 01_6.mov"); 
 clip3.loop();  
 clip4 = new Movie(this,"Sequence 01_5.mov"); 
 clip4.loop();  
 clip5 = new Movie(this,"Sequence 01_4.mov"); 
 clip5.loop();  
 clip6 = new Movie(this,"Sequence 01_1.mov"); 
 clip6.loop();  
 
 V1 = new Video(0,0,213,150,1);
 V2 = new Video(213,0,200,150,2);
 V3 = new Video(426,0,200,150,3);
 V4 = new Video(0,180,200,150,4);
 V5 = new Video(213,180,200,150,5);
 V6 = new Video(426,180,200,150,6);
}

void movieEvent(Movie cal) {
  cal.read();
}

void draw(){
 background(0);
 V1.display( clip1);
 V2.display( clip2);
 V3.display( clip3 );
 V4.display( clip4);
 V5.display( clip5 );
 V6.display( clip6 );
}
