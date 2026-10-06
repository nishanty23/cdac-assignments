import java.util.Arrays;
import java.util.PriorityQueue;
import java.util.TreeMap;
import java.util.TreeSet;

public class JavaTrees{
    public static void main(String[] args) {
        TreeSet<Integer> marks = new TreeSet<>(Arrays.asList(72, 45, 91, 60, 88, 33, 79));
        System.out.println("TreeSet (inorder = sorted) : " + marks);
        System.out.println("first / last               : " + marks.first() + " / " + marks.last());
        System.out.println("floor(80)   largest <= 80  : " + marks.floor(80));
        System.out.println("ceiling(80) smallest >= 80 : " + marks.ceiling(80));
        System.out.println("headSet(60) (< 60)         : " + marks.headSet(60));
        System.out.println("descendingSet              : " + marks.descendingSet());

        TreeMap<String, Integer> roll = new TreeMap<>();
        roll.put("Anshul", 101); roll.put("Shivam", 51); roll.put("Kaushik", 25); roll.put("Roman", 55);
        System.out.println("TreeMap keys (sorted)      : " + roll.keySet());
        System.out.println("firstEntry / lastEntry     : " + roll.firstEntry() + " / " + roll.lastEntry());

        PriorityQueue<Integer> pq = new PriorityQueue<>(Arrays.asList(72, 45, 91, 60, 88, 33, 79));
        System.out.println("PriorityQueue toString()   : " + pq + "   <- the internal ARRAY (heap order), not sorted!");
        StringBuilder sb = new StringBuilder();
        while (!pq.isEmpty()) sb.append(pq.poll()).append(' ');
        System.out.println("poll() repeatedly          : " + sb + "  <- smallest first, O(log n) each");
    }
}
