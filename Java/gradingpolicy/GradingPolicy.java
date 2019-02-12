package gradingpolicy; /**
 * url : https://www.hackerrank.com/challenges/grading/problem
 */


import java.io.IOException;
import java.util.Scanner;

public class GradingPolicy {

    public static void main(String[] args) throws IOException {

        Scanner in = new Scanner(System.in);
        int numStudents = in.nextInt();

        for (int i = 0; i < numStudents; i++) {
            int x = in.nextInt();
            int rounded = roundGrade(x);

            System.out.println(rounded);
        }

        in.close();
    }

    public static int roundGrade(int grade) {
        int rounded = grade;

        int nextMultiple = getNextMultipleOfFive(grade);
        if (nextMultiple - grade < 3 && grade >= 38) {
            rounded = nextMultiple;
        }

        return rounded;
    }

    public static int getNextMultipleOfFive(int n) {
        int nextMultiple;

        int div = n / 5;
        nextMultiple = (div + 1) * 5;

        return nextMultiple;
    }
}
