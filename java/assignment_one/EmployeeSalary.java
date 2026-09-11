class EmployeeSalary {
    double salary;
    int hours;

    void getInfo(double salary, int hours) {
        this.salary = salary;
        this.hours = hours;
    }

    void addSal() {
        if (salary < 500) {
            salary = salary + 10;
        }
    }

    void addWork() {
        if (hours > 6) {
            salary = salary + 5;
        }
    }

    public static void main(String[] args) {
        EmployeeSalary e = new EmployeeSalary();

        e.getInfo(450, 8);
        e.addSal();
        e.addWork();

        System.out.println("Final Salary: $" + e.salary);
    }
}
