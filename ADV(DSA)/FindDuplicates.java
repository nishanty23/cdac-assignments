import java.util.Scanner;

class FindDuplicates {

    static class Node {
        public int data;
        public Node next;

        public Node(int data) {
            this.data = data;
            this.next = null;
        }
    }

    static Node head = null;

    public static Node insert(Node head, int data) {
        Node newNode = new Node(data);

        if (head == null) {
            head = newNode;
            return head;
        }

        Node currNode = head;

        while (currNode.next != null) {
            currNode = currNode.next;
        }

        currNode.next = newNode;

        return head;
    }

    public static void display(Node head) {
        Node currNode = head;

        while (currNode != null) {
            System.out.print(currNode.data + " -> ");
            currNode = currNode.next;
        }

        System.out.println("null");
    }

    public static void findDuplicates(Node head) {

        Node current = head;

        System.out.print("Duplicate elements: ");

        while (current != null) {

            Node runner = current.next;
            boolean isDuplicate = false;

            while (runner != null) {

                if (current.data == runner.data) {
                    isDuplicate = true;
                    break;
                }

                runner = runner.next;
            }

            // Check whether this duplicate was already printed
            Node previous = head;
            boolean alreadyPrinted = false;

            while (previous != current) {

                if (previous.data == current.data) {
                    alreadyPrinted = true;
                    break;
                }

                previous = previous.next;
            }

            if (isDuplicate && !alreadyPrinted) {
                System.out.print(current.data + " ");
            }

            current = current.next;
        }

        System.out.println();
    }

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter size: ");
        int size = sc.nextInt();

        head = null;

        for (int i = 0; i < size; i++) {
            System.out.print("Enter element " + (i + 1) + ": ");
            int data = sc.nextInt();

            head = insert(head, data);
        }

        System.out.println("\nLinked List:");
        display(head);

        findDuplicates(head);

        sc.close();
    }
}
