/**
 * https://www.hackerrank.com/challenges/apple-and-orange/problem
 */

package apple_and_orange;

import java.io.IOException;
import java.util.Scanner;

public class AppleAndOrange {
    public static void main(String[] args) throws IOException {
        int s, t, a, b, d, m, n;
        int apples = 0, oranges = 0;

        Scanner in = new Scanner(System.in);

        s = in.nextInt();
        t = in.nextInt();
        in.nextLine();

        a = in.nextInt();
        b = in.nextInt();
        in.nextLine();

        m = in.nextInt();
        n = in.nextInt();
        in.nextLine();

        // m apples
        for (int i = 0; i < m; i++) {
            int distance = in.nextInt();
            if(isOnSamsHouse(distance + a, s, t)) {
                apples++;
            }
        }

        // n oranges
        for (int i = 0; i < n; i++) {
            int distance = in.nextInt();
            if(isOnSamsHouse(distance + b, s, t)) {
                oranges++;
            }
        }

        in.close();

        System.out.println(apples);
        System.out.println(oranges);
    }

    public static boolean isOnSamsHouse(int distance, int s, int t) {
        boolean isOnHouse = false;
        if (distance >= s && distance <= t) {
            isOnHouse = true;
        }
        return isOnHouse;
    }
}
