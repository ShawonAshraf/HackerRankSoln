package bubble_sort;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;
import java.util.stream.Collectors;

public class BubbleSortSwapCount {
    public static void main(String[] args) throws IOException {
        Scanner in = new Scanner(System.in);

        int n = in.nextInt();
        in.nextLine();

        ArrayList<Integer> data = new ArrayList<>();
        data.addAll(Arrays.asList(in.nextLine().split(" ")).stream().map(Integer::parseInt).collect(Collectors.toList()));

        int count = bubbleSortAscending(data);

        System.out.println(String.format("Array is sorted in %d swaps.", count));
        System.out.println("First Element: " + data.get(0));
        System.out.println("Last Element: " + data.get(n - 1));

        in.close();
    }

    public static int bubbleSortAscending(ArrayList<Integer> data) {
        int swapCount = 0;
        int len = data.size();

        for (int i = 0; i < len; i++) {
            for (int j = 0; j < len - 1; j++) {
                if (data.get(j) > data.get(j + 1)) {
                    // swap
                    Integer temp = data.get(j);
                    data.set(j, data.get(j + 1));
                    data.set(j + 1, temp);

                    swapCount++;
                }
            }
        }

        return swapCount;
    }
}
