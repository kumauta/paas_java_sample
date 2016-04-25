package test;

public class Sample{

  public static void main(String[] args){
    while(true){
      System.out.println("Hello World");
      try{
        Thread.sleep(3000);
      }catch(Exception e){
      }
    }
  }
}
