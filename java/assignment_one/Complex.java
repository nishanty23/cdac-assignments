import java.util.Scanner;

class Complex {
    double real;
    double imaginary;

    Complex(double real, double imaginary) {
        this.real = real;
        this.imaginary = imaginary;
    }

    void sum(Complex c) {
        System.out.println("Sum: " + (real + c.real) + " + " + (imaginary + c.imaginary) + "i");
    }

    void difference(Complex c) {
        System.out.println("Difference: " + (real - c.real) + " + " + (imaginary - c.imaginary) + "i");
    }

    void product(Complex c) {
        double realPart = (real * c.real) - (imaginary * c.imaginary);
        double imaginaryPart = (real * c.imaginary) + (imaginary * c.real);

        System.out.println("Product: " + realPart + " + " + imaginaryPart + "i");
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter real part of first number: ");
        double real1 = sc.nextDouble();

        System.out.print("Enter imaginary part of first number: ");
        double imaginary1 = sc.nextDouble();

        System.out.print("Enter real part of second number: ");
        double real2 = sc.nextDouble();

        System.out.print("Enter imaginary part of second number: ");
        double imaginary2 = sc.nextDouble();

        Complex c1 = new Complex(real1, imaginary1);
        Complex c2 = new Complex(real2, imaginary2);

        c1.sum(c2);
        c1.difference(c2);
        c1.product(c2);
    }
}
