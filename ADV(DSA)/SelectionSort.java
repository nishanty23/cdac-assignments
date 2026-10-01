import java.util.Scanner;
import java.util.Arrays;

class SelectionSort{
    public static void input(int arr[], int size, Scanner sc){
        System.out.print("Enter elements of array: ");
        for(int i=0; i<size; i++){
            arr[i] = sc.nextInt();
        }
    }

    public static void sort(int arr[], int size){
        for(int i=0; i<size-1; i++){
            for(int j=i+1; j<size; j++){
                if(arr[i] > arr[j]){
                    int temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }
        }
    }

    public static void display(int arr[], int size){
        System.out.println("Elements of the array: ");
        for(int i=0; i<size; i++){
            System.out.print(arr[i]+" ");
        }
    }

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter size of array: ");
        int size = sc.nextInt();
        int arr[] = new int[size];
        input(arr, size, sc);
        System.out.println("Before sorting: "+Arrays.toString(arr));
        sort(arr, size);
        //display(arr, size);
        System.out.println("After sorting: "+Arrays.toString(arr));
    }
}
