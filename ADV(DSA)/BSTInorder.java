import java.util.*;

class BSTInorder {

    static class Node {
        int key;
        Node left;
        Node right;

        Node(int k) {
            key = k;
            left = null;
            right = null;
        }
    }

    static Node root = null;

    // Insert a node into BST
    static Node insert(Node root, int key) {

        // If tree is empty
        if (root == null) {
            return new Node(key);
        }

        // Smaller values go to left
        if (key < root.key) {
            root.left = insert(root.left, key);
        }

        // Greater values go to right
        else if (key > root.key) {
            root.right = insert(root.right, key);
        }

        // Duplicate values are ignored
        else {
            return root;
        }

        return root;
    }

    // Inorder traversal: Left -> Root -> Right
    static void inorder(Node root) {

        if (root == null) {
            return;
        }

        inorder(root.left);

        System.out.print(root.key + " ");

        inorder(root.right);
    }

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of nodes: ");
        int size = sc.nextInt();

        root = null;

        for (int i = 0; i < size; i++) {
            System.out.print("Enter element " + (i + 1) + ": ");
            int key = sc.nextInt();

            root = insert(root, key);
        }

        System.out.println("\nInorder traversal:");
        inorder(root);

        sc.close();
    }
}
