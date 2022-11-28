import static org.junit.Assert.*;
import org.junit.*;

import java.util.ArrayList;
import java.util.List;

class myChecker implements StringChecker{
  public boolean checkString(String s){
    return true;
  }
}
public class TestListExamples {
  // Write your grading tests here!
  @Test
  public void test1Filter(){
    List<String> input1 = new ArrayList<>();
        input1.add("cool");
        input1.add("color");
        input1.add("hello");
        
        assertArrayEquals(input1.toArray() , ListExamples.filter(input1, new myChecker()).toArray());
  }
  @Test
  public void testNullFilter(){
    List<String> input1 = new ArrayList<>();
        
        
        assertArrayEquals(input1.toArray() , ListExamples.filter(input1, new myChecker()).toArray());
  }

}
