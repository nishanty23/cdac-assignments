//The Employee Assignment
//
//Create a menu based console application for holding the data of the Employees in an Organisation.
//The details of the Employee entered by the user from the console will be stored in a array list
//which can be then traversed by the user by choosing the appropriate menu selection.
//Each sub menu of the section will loop until the Exit to Main Menu option is not selected.
//
//1. Add an Employee
//	a. Manager
//	b. Engineer
//	c. Sales Person
//	d. Exit to Main Menu
//2. Display
//	a. All Employees
//	b. First Employee
//	c. Next Employee
//	d. Previous Employee
//	e. Last Employee
//	f. Exit to Main Menu
//3. Sort
//	a. All Managers
//	b. All Engineers
//	c. All Sales Person
//	d. All Employees Alphabetic order ascending
//	e. All Employees Alphabetic order descending
//	f. Exit to Main Menu
//4. Save to File
//5. Load from File
//6. Exit

import java.util.Scanner;
import java.util.ArrayList;

class Employee{
    public int empId;
    public String empName;
    public double salary;
    public String dept;
}

class Manager extends Employee{
    
}

class Engineer extends Employee{
    
}

class SalesPerson extends Employee{

}

class EmployeeManagement{
    public ArrayList<Employee> emp = new ArrayList<>();
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int choice = 0;
        do{
            System.out.println("Enter a choice:");
            System.out.println("1 -> Add an Employee");
            System.out.println("2 -> Display");
            System.out.println("3 -> Sort");
            System.out.println("4 -> Save to File");
            System.out.println("5 -> Load from File");
            System.out.println("6 -> Exit to Main Menu");
            choice = sc.nextInt();
            if(choice == 1){
                int addChoice = 0;
                do{
                    System.out.println("1 -> Manager");
                    System.out.println("2 -> Engineer");
                    System.out.println("3 -> Sales Person");
                    System.out.println("4 -> Exit to Main Menu");
                    addChoice = sc.nextInt();
                    if(addChoice == 1){
                        Manager m = new Manager();
                    }
                    if(addChoice == 2){
                        Engineer e = new Engineer();
                    }
                    if(addChoice == 3){
                        SalesPerson sp = new SalesPerson();
                    }
                }while(addChoice != 4);
            }
        }while(choice != 6);
    }
}
