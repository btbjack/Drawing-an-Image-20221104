//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float smallerDimension, largerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
Boolean widthLarger=false, heightLarger=false;
PImage pic;
Boolean nightMode=false;
//
size(700, 500); //Landscape
//Copy Display Algorithm
appWidth = width;
appHeight = height;
//
//Aspect Ratio of Background Image
//FIFA-2022-Background-HD-Wallpapers-126306.jpg
//Note: Dimesions are found in the image file / Right Click / Properties / Details
int picWidth = 800;
int picHeight = 600;
//Image Orientation: Landscape, Square, Portrait
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
/*Aspect Ratio Calculations
 if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
 if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
 if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
 if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
 */
//
//Better Image Stretch Algorithm
//We know the width is the larger dimension
float picWidthAdjusted, picHeightAdjusted;
if ( appWidth >= picWidth ) {
  picWidthAdjusted = appWidth;
  //
  if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
  if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
  //
  if ( appHeight >= picHeight) {
    //Calculated Diemension b/c smller than width
    if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
    if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
    picHeightAdjusted = backgroundImageHeight * imageHeightRatio;
    ] else {
      //Image smaller than CANVAS, needs separate algorithm
    }
  } else {
    //Image smaller than CANVAS, needs separate algorithm
  }
  //Population
  pic = loadImage("../Images Used/FIFA-2022-Background-HD-Wallpapers-126306.jpg");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  //
  // Adjust Iamge Varaibles for Asepct Ratio
  picWidthAdjusted = backgroundImageWidth * imageWidthRatio;
  picHeightAdjusted = backgroundImageHeight * imageHeightRatio;
  //
  println( appWidth, picWidth, picWidthAdjusted);
  println( appHeight, picHeight, picHeightAdjusted);
  //Rectangular Layout and Imgage Drawing to CANVAS
  //rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  if ( nightMode == false ) tint(255, 64); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(64, 64, 40); //RGB: Night Mode
  image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
