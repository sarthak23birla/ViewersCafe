import java.util.Arrays; 
import java.util.List; 
     
public class Application { 
    public static void executeWithoutLambdas() { 
        List<Integer> data = Arrays.asList(1,2,3); 
        for (Integer value : data) 
           System.out.println(value); 
    } 
    public static void executeWithLambdas() { 
         List<Integer> data = Arrays.asList(1,2,3); 
         data.forEach(value -> System.out.println(value)); 
   } 
   public static void main(String... args) { 
       executeWithoutLambdas(); 
       System.out.println(); 
         executeWithLambdas(); 
	} 
}