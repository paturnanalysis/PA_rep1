// Pattern Analysis report1 1516016 3EP4-33 Tomizu Tastuyoshi.
// Main program.
final int WIDTH  = 640;
final int HEIGHT = 480;
final int picNumber = 45;
PImage pics[];

void settings() {
  size(WIDTH, HEIGHT);
  //fullScreen();
  pics = new PImage[picNumber];
}

void setup() {
  // 画像読み込み
  for (int i = 0,j = 1; i < picNumber; i++, j++) {
    String str;
    if (i < 9) {
      str = "image/pic0" + j +".jpg";
    } else {
      str = "image/pic" + j +".jpg";
    }
    pics[i] = loadImage(str, "jpg");
  }
  
  // 画像表示
  for (int i = 0, x = 0, y = 0; i < picNumber; i++, x++) {   
    if (i!=0 && i%7==0){
      y++;
    }
    image(pics[i], x*WIDTH/7, y*HEIGHT/7, WIDTH/7, HEIGHT/7);
  }
}

void draw() {
}

//init