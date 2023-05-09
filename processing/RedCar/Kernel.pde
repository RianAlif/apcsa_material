public class Kernel {
  float[][]kernel;

  /**Constructor takes the kernel that will be applied to the image
  *This implementation only allows 3x3 kernels
  */
  public Kernel(float[][]init) {
    kernel = new float[3][3];
    for(int row = 0; row < init.length; row++){
      for(int col = 0; col < init[row].length; col++){
        kernel[row][col] = init[row][col];
      }
    }
  }

  /**If part of the kernel is off of the image, return black, Otherwise
  *Calculate the convolution of r/g/b separately, and return that color\
  *if the calculation for any of the r,g,b values is outside the range
  *     0-255, then clamp it to that range (< 0 becomes 0, >255 becomes 255)
  */
  color calcNewColor(PImage img, int x, int y) {
  int r = 0;
  int g = 0;
  int b = 0;
  

  }

  /**Apply the kernel to the source,
  *and saves the data to the destination.*/
  void apply(PImage source, PImage destination) {
    for(int i = 0; i < source.width; i++){
      for(int j = 0; j < source.height; j++){
        color newColor = calcNewColor(source, i, j);
        destination.set(i, j, newColor);
  }

}
