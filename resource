package ResourcePpt;
 import java.io.*;
public class ResourceUse {
     public static void main(String[]args)
     {
    	  String filePath = "/home/himanshu/SirionTraining/IOFile.txt";
          
          // Try-with-resources to ensure the FileWriter is closed automatically
//    	  long startTime = System.currentTimeMillis();
    	  BufferedReader reader = null;
          try {
              reader = new BufferedReader(new FileReader(filePath));
              String line;
              while ((line = reader.readLine()) != null) {
                  System.out.println(line);
              }
          } catch (IOException e) {
              e.printStackTrace();
          } finally {
              if (reader != null) {
                  try {
//                	  long endTime = System.currentTimeMillis();
//                      System.out.println("Execution time: " + (endTime - startTime) + " ms");
                      reader.close();
                  } catch (IOException e) {
                      e.printStackTrace();
                  }
              }
          }
     }
}
