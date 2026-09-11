class Student {
    String name;
    int roll_no;
    String phone_no;
    String address;

    public static void main(String[] args) {
        Student s1 = new Student();
        s1.roll_no = 2;
        s1.name = "Anshul";

        System.out.println("Part A:");
        System.out.println("Name: " + s1.name);
        System.out.println("Roll No: " + s1.roll_no);

        Student sam = new Student();
        sam.name = "Akshat";
        sam.roll_no = 1;
        sam.phone_no = "9876543210";
        sam.address = "Delhi";

        Student john = new Student();
        john.name = "Shivam";
        john.roll_no = 2;
        john.phone_no = "9876501234";
        john.address = "Mumbai";

        System.out.println("\nPart B:");

        System.out.println("Student 1");
        System.out.println("Name: " + sam.name);
        System.out.println("Roll No: " + sam.roll_no);
        System.out.println("Phone No: " + sam.phone_no);
        System.out.println("Address: " + sam.address);

        System.out.println("\nStudent 2");
        System.out.println("Name: " + john.name);
        System.out.println("Roll No: " + john.roll_no);
        System.out.println("Phone No: " + john.phone_no);
        System.out.println("Address: " + john.address);
    }
}
