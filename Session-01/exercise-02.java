import java.util.Scanner;

public class AgeCheck {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Enter your age: ");
        int age = scanner.nextInt();

        if (age > 18) {
            System.out.println("You are an adult and allowed to enter.");
        } else if (age == 18) {
            System.out.println("You just reached the legal age and are allowed to enter.");
        } else {
            System.out.println("You are a child and NOT allowed to enter.");
        }
        
        scanner.close();
    }
}
