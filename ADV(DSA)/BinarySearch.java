import java.util.Scanner;

public class BinarySearch {

    static int binarySearch(int[] arr, int low, int high, int key) {

        // Base condition
        if (low > high) {
            return -1;
        }

        int mid = low + (high - low) / 2;

        // Element found
        if (arr[mid] == key) {
            return mid;
        }

        // Search in right half
        if (arr[mid] < key) {
            return binarySearch(arr, mid + 1, high, key);
        }

        // Search in left half
        return binarySearch(arr, low, mid - 1, key);
    }

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int[] arr = {10, 20, 30, 40, 50, 60, 70};

        System.out.print("Enter element to search: ");
        int key = sc.nextInt();

        int result = binarySearch(arr, 0, arr.length - 1, key);

        if (result != -1) {
            System.out.println("Element found at index: " + result);
        } else {
            System.out.println("Element not found");
        }
    }
}
