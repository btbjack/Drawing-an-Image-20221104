//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float  topX, topY, topWidth, topHeight;
float  bottomX, bottomY, bottomWidth, bottonHeight;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
float picWidthAdjusted2=0.0, picHeightAdjusted2=0.0;
float picWidthAdjusted3=0.0, picHeightAdjusted3=0.0;
PImage pic, pic2, pic3;
Boolean nightMode=false;
int tintDayMode=255, tintDayModeOpacity=50, tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;

//
void setup() 
{
  size(700, 500); //Landscape
  //Copy Display Algorithm
  appWidth = width;
  appHeight = height;
  //
  //Image Dimensions 
  //FIFA-2022-Background-HD-Wallpapers-126306.jpg
  //Note: Dimesions are found in the image file / Right Click / Properties / Details
  int picWidth = 800; //World Cup image
  int picHeight = 600;
  int picWidth2 = 311; // image
  int picHeight2 = 553;
  int picWidth3 = 325; //Trent image
  int picHeight3 = 485;
  //
  //Image Orientation: Landscape, Square, Portrait
  float smallerDimension, largerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
  float smallerDimension2, largerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
  float smallerDimension3, largerDimension3, imageWidthRatio3=0.0, imageHeightRatio3=0.0;
  Boolean widthLarger=false, heightLarger=false, widthLarger2=false, heightLarger2=false;
  Boolean widthLarger3=false, heightLarger3=false
  if ( picWidth >= picHeight ) { //True if Landscape or Square
    largerDimension = picWidth;
    smallerDimension = picHeight;
    widthLarger = true;
  } else { //False if Portrait
    largerDimension = picHeight;
    smallerDimension = picWidth;
    heightLarger = true;

    //
    //Teaching Example: width is known to be larger 
    //Better Image Stretch Algorithm
    if ( appWidth >= picWidth ) {
      picWidthAdjusted = appWidth;
      //
      if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
      //
      if ( appHeight >= picHeight) {
        //Calculated Diemension b/c smller than width
        if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
        picHeightAdjusted = backgroundImageHeight * imageHeightRatio;
        if ( appHeight < picHeightAdjusted ) {
          println("STOP: image is tooo big for CANVAS");
          exit(); //stop further use of the APP
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
    pic2 = loadImage("../Images Used/Landscape/https://https://i2-prod.manchestereveningnews.co.uk/incoming/article23655775.ece/ALTERNATES/s1200c/0_GettyImages-1390686627.jpg");
    pic3 = loadImage("../Images Used/Portrait/https://d2x51gyc4ptf2q.cloudfront.net/content/uploads/2022/10/12103617/Trent-Liverpool.jpg");
    backgroundImageX = appWidth*0;
    backgroundImageY = appHeight*0;
    backgroundImageWidth = appWidth-1;
    backgroundImageHeight = appHeight-1;
    topX = appWidth * 1/4;
    topY = appHeight * 1/20;
    topWidth = appWidth * 1/2;
      topHeight = appHeight * 3/4;
      bottomX = appWidth * 1/2
      bottomY = appHeight * 3/4
      bottomWidth = appWidth * 1/4
      bottonHeight = appHeight * 4/20
      //
      //Verify Variables Values after Algorithm
      println("App Width:", appWidth, "and App Height:", appHeight);
    println("Image dimentions are:", picWidth, picHeight);
    println("Larger Image dimension is:", largerDimension);
    println("Adjusted Image dimensions are (stretch is goal):", picWidthAdjusted, picHeightAdjusted);
    //
    //Rectangular Layout and Imgage Drawing to CANVAS
    //rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    rect( topX, topY, topWidth, topHeight):
    rect( bottomX, bottomY, bottomWidth, bottomHeight );
    //
    //Algorithm uses rect-variables
    if ( picWidth2 >= picHeight2 ) { //True if Landscape or Square
      largerDimension2 = picWidth2;
      smallerDimension2 = picHeight2;
      widthLarger2 = true;
      //Landscape larger image to smaller rectangle (or larger)
      picWidthAdjusted2 = picWidth2; //stretch or reduce
      imageWidthRatio2 =  smallerDimension2 / largerDimension2;
      picHeightAdjusted2 = picWidthAdjusted2 * imageHeightRatio2;
      println("here", picWidthAdjusted2, picHeightAdjusted2);
      if ( picHeightAdjusted2 > topHeight ) {
        println("STOP: image is too big for rectangle layout");
        exit(); //stop further use of the APP
      }
    } else { //False if Portrait
      largerDimension2 = picHeight2;
      smallerDimension2 = picWidth2;
      heightLarger2 = true;
      //Portrait Image larger image to smaller rectangle (or larger)
      //Students to create
      picHeightAdjusted2 = bottomHeight; //stretch or reduce
      imageHeightRatio2 = smallerDimension2 / largerDimension2;
      picWidthAdjusted2 = picHeightAdjusted2 * imageHeightRatio2;
    }
    if ( picWidth3 >= picHeight3 ) { //True if Landscape or Square
      largerDimension3 = picWidth3;
      smallerDimension3 = picHeight3;
      widthLarger3 = true;
      //Landscape larger image to smaller rectangle (or larger)
      picWidthAdjusted3 = picWidth3; //stretch or reduce
      imageWidthRatio3 =  smallerDimension3 / largerDimension3;
      picHeightAdjusted3 = picWidthAdjusted3 * imageHeightRatio3;
      println("here", picWidthAdjusted3, picHeightAdjusted3);
      if ( picHeightAdjusted3 > topHeight ) {
        println("STOP: image is too big for rectangle layout");
        exit(); //stop further use of the APP
        }
      }
      //Background Image must be single executed code
      if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
      if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
      image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
    }//End setup
    //
    void draw() 
    {
      image(pic2, topX, topY, picWidthAdjusted2, picHeightAdjusted2);
      image(pic3, bottomX, bottomY, picWidthAdjusted3, picHeightAdjusted3);
    }//End draw
    //
    void keyPressed() {
    }//End keyPressed
    //
    void mousePressed() {
      //
      //Mouse Pressed will control background image
      if (mouseButton == LEFT) {
        nightMode = true;
        rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
        tint(64, 64, 40, 50);
        image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
      }
      if (mouseButton == RIGHT) {
        nightMode = false;
        rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
        tint(255, 50); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
        image(pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
      }
    }//End mousePressed
    //
    //End Main Program
  
