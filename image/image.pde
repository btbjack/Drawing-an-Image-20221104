//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
PImage pic;
Boolean nightMode=false;
int tintDayMode=255, tintDayModeOpacity=50, tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
void setup() {
  size(700, 500); //Landscape
//Copy Display Algorithm
appWidth = width;
appHeight = height;
//
//Image Dimensions 
//FIFA-2022-Background-HD-Wallpapers-126306.jpg
//Note: Dimesions are found in the image file / Right Click / Properties / Details
int picWidth = 800;
int picHeight = 600;
//Image Orientation: Landscape, Square, Portrait
float smallerDimension, largerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
Boolean widthLarger=false, heightLarger=false;
if ( picWidth >= picHeight ) { //True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}
//
//Teaching Example: width is known to be larger 
//
//Better Image Stretch Algorithm
//We know the width is the larger dimension

if ( appWidth >= picWidth ) {
  picWidthAdjusted = appWidth;
  //
  if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
  if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
  //
  if ( appHeight >= picHeight) {
    //Calculated Diemension b/c smller than width
    if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
    picHeightAdjusted = backgroundImageHeight * imageHeightRatio;
    if ( appHeight < picHeightAdjusted ) {
      println("STOP: image is tooo big for CANVAS");
    
    }
  } else {
      //Image smaller than CANVAS, needs separate algorithm
       println("STOP: image is tooo big for CANVAS");
        
    }
  } else {
    //Image smaller than CANVAS, needs separate algorithm
    println("CANVAS is smaller than image");
  }
  //
  //Population
  pic = loadImage("../Images Used/FIFA-2022-Background-HD-Wallpapers-126306.jpg");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  //
  //Verify Variables Values after Algorithm
  println("App Width:", appWidth, "and App Height:", appHeight);
  println("Image dimentions are:", picWidth, picHeight);
  println("Larger Image dimension is:", largerDimension);
  println("Adjusted Image dimensions are (stretch is goal):", picWidthAdjusted, picHeightAdjusted);
  //
   //Rectangular Layout and Imgage Drawing to CANVAS
  //rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  //Background Image must be single executed code
   if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
  image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
}//End setup
//
void draw() {}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {
//
//Mouse Pressed will control background image
if (mouseButton == LEFT) {
nightMode = true;
tint(64, 64, 40, 50)
image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);

}
if (mouseButton == RIGHT) {
nightMode = false;
tint(255, 50); //Gray Scale: use 1/2 tint value for white (i.e
}
}//
//End Main Program

 
 
