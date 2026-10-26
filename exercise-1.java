import java.util.Scanner;

public class StudentInfo {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Enter your name: ");
        String name = input.nextLine();

        System.out.print("Enter your age: ");
        int age = input.nextInt();

        System.out.println("Name: " + name);
        System.out.println("Current Age: " + age);

        age = age + 1;
        System.out.println("Age next year: " + age);

        input.close();
    }
}