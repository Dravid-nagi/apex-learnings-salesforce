public class StringListTest {
    public static List<String> generateStringList(Integer num){
         List<String> result = new List<String>();
        for (Integer i = 0; i < num; i++) {
            result.add('Test ' + i);
        }
        return result;
        
    }
}