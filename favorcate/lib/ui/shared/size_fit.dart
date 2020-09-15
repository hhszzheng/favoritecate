import 'dart:ui';

class YFSizeFit{
  static double physicalWidth;
  static double physicalHeight;
  static double screenWidth;
  static double screenHeight;
  static double dpr;
  static double stateBarHeight;
  static double rpx;
  static double px;

  static void initialize(){
    //1.手机物理分辨率
    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;
    dpr = window.devicePixelRatio;
    screenWidth = physicalWidth / dpr;
    screenHeight = physicalHeight /dpr;
    stateBarHeight = window.padding.top / dpr;
    rpx = screenWidth / 750;
    px = screenWidth / 750 * 2;
  }

  static double setRpx(double size){
    return size * rpx;
  }

  static double setPx(double size){
    return size * px;
  }

}