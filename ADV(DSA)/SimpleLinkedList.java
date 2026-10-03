import java.util.Scanner;

class SimpleLinkedList{
    Node head;

    class Node{
        String data;
        Node next;

        Node(String data){
            this.data = data;
            this.next = null;
        }
    }

    public void addFirst(String data){
        Node newNode = new Node(data);
        if(head == null){
            head = newNode;
            return;
        }
        newNode.next = head;
        head = newNode;
    }



    public static void main(String[] args){
        SimpleLinkedList list = new SimpleLinkedList();
        list.addFirst("A");
        list.addFirst("B");
    }
}
