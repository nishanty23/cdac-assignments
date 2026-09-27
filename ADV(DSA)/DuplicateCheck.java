import java.util.HashSet;
import java.util.Set;
import java.util.Random;

class DuplicateCheck{
    static boolean hasDuplicate(int arr[]){
        Set<Integer> seen = new HashSet<>();
        for(int x : arr){
            if(!seen.add(x)){
                return true;
            }
        }
        return false;
    }

    public static void main(String[] args){
        for(int n=10; n<200; n = n*2){
            int arr[] = new Random(7).ints(n, 0, Integer.MAX_VALUE).distinct().toArray();
            long timeStart = System.nanoTime();
            boolean result = hasDuplicate(arr);
            long timeTaken = (System.nanoTime() - timeStart) / 1_000_000;
            System.out.println("n = "+n+"   time taken: "+timeTaken+" ms    "+result);
        }
    }
}
