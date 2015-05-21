public class Ninety_Nine_Bottles{
  public static void main(String []args){
    for (int bottleCount = 99; bottleCount >= 1; bottleCount--){
      char plural = 0;
      if (bottleCount != 1) plural = 's';
      System.out.println(bottleCount + " bottle" + plural + " of beer on the wall, " + bottleCount + " bottle" + plural + " of beer!");
      if (bottleCount-1 != 1) plural = 's';
      else plural = 0;
      System.out.println("Take one down, pass it around, " + (bottleCount - 1) + " bottle" + plural + " of beer on the wall!");
      System.out.println();
    }
  }
}