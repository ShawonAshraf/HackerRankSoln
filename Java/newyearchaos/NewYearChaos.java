package newyearchaos;

import java.util.Scanner;

/**
 * https://www.hackerrank.com/challenges/new-year-chaos/problem
 */

public class NewYearChaos {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);

        int testCases = in.nextInt();

        for (int i = 0; i < testCases; i++) {
            int n = in.nextInt();
            int[] ar = new int[n];

            for (int k = 0; k < n; k++) {
                ar[k] = in.nextInt();
            }

            // process

            int count = 0;
            for (int k = n - 1; k >= 0; k--) {
                if(ar[k] - (k + 1) > 2) {
                    System.out.println("Too chaotic");
                    count = 0;
                    break;
                } else {
                    int j = ar[k] - 2 > 0 ? ar[k] - 2 : 0;
                    for (; j < k; j++) {
                        if (ar[j] > ar[k]) {
                            count++;
//                            System.out.println("# " + k + " count : " + count);
                        }
                    }
                }
            }

            if (count > 0) {
                System.out.println(count);
            }

        }

        in.close();
    }
}
