class Employee {
    String name;
    int yearOfJoining;
    double salary;
    String address;

    Employee(String name, int yearOfJoining, double salary, String address) {
        this.name = name;
        this.yearOfJoining = yearOfJoining;
        this.salary = salary;
        this.address = address;
    }

    public static void main(String[] args) {
        Employee e1 = new Employee("Anshul", 1994, 55000, "Laxmi Nagar, Delhi");
        Employee e2 = new Employee("Akshat", 2000, 62000, "Rohini, Delhi");
        Employee e3 = new Employee("Shivam", 1999, 58000, "Dwarka, Delhi");

        System.out.println("Name\t\tYear of Joining\t\tSalary\t\tAddress");
        System.out.println(e1.name + "\t\t" + e1.yearOfJoining + "\t\t\t" + e1.salary + "\t\t" + e1.address);
        System.out.println(e2.name + "\t\t" + e2.yearOfJoining + "\t\t\t" + e2.salary + "\t\t" + e2.address);
        System.out.println(e3.name + "\t\t" + e3.yearOfJoining + "\t\t\t" + e3.salary + "\t\t" + e3.address);
    }
}
