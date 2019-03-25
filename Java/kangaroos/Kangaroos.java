/**
 * https://www.hackerrank.com/challenges/kangaroo/problem
 */

package kangaroos;

import java.io.IOException;
import java.util.Scanner;

public class Kangaroos {
    public static void main(String[] args) throws IOException {
        Scanner in = new Scanner(System.in);

        int x1, v1, x2, v2;

        x1 = in.nextInt();
        v1 = in.nextInt();
        x2 = in.nextInt();
        v2 = in.nextInt();

        if(v2 >= v1) {
            System.out.println("NO");
        } else {
            float x = (float)(x2 - x1) / (v2 - v1);
            double floored = Math.floor(x);
            if (Math.floor(x) == x) {
                System.out.println("YES");
            } else {
                System.out.println("NO");
            }
        }

        in.close();
    }
}
