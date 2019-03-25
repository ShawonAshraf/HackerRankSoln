package twodarrayds;

// https://www.hackerrank.com/challenges/2d-array/problem

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class TwoDArrayDS {

    private static final int ROW = 6;
    private static final int COLUMN = 6;

    public static void main(String[] args) {
        int[][] arr = new int[ROW][COLUMN];
        Scanner in = new Scanner(System.in);

        // take input
        for (int i = 0; i < ROW; i++) {
            for (int j  = 0; j < COLUMN; j++) {
                arr[i][j] = in.nextInt();
            }
        }
        // close the scanner
        in.close();

        int sum = getMaxSum(arr);
        System.out.println(sum);

    }

    private static int getMaxSum(int[][] arr) {
        int max = Integer.MIN_VALUE;
        ArrayList<Integer> sumList = new ArrayList<>();

        for (int i = 0; i <= ROW / 2; i++) {
            for (int j = 0; j <= COLUMN / 2; j++) {
                int[][] hg = createHourGlass(arr, i, j);
                int sum = getHourGlassSum(hg);
                log(hg, i, j, sum);
                sumList.add(sum);
            }
        }

        for (int sum: sumList) {
            if (sum > max) {
                max = sum;
            }
        }

        return max;
    }


    private static int[][] createHourGlass(int[][] arr, int startRow, int columnNumber) {
        int[][] hourGlass = new int[3][3];
        // init with 0
        for (int[] row: hourGlass) {
            Arrays.fill(row, 0);
        }

        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                if (i == 1) {
                    hourGlass[i][j + 1] = arr[startRow + i][columnNumber + 1];
                    break;
                } else {
                    hourGlass[i][j] = arr[startRow + i][columnNumber + j];
                }
            }
        }
        return hourGlass;
    }

    private static int getHourGlassSum(int[][] hg) {
        int sum = 0;
        for (int[] aHg : hg) {
            for (int anAHg : aHg) {
                sum += anAHg;
            }
        }
        return sum;
    }

    private static void log(int[][] arr, int k, int j, int sum) {
        System.out.println("Logging HG for  # (" + k + ", " + j + ") has sum : " + sum);
        for (int[] row: arr) {
            System.out.println(Arrays.toString(row));
        }
        System.out.println();
    }

}
