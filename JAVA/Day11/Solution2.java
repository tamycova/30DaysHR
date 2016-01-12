import java.util.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int arr[][] = new int[6][6];
        for(int i = 0; i < 6; i++) {
            for(int j = 0; j < 6; j++) {
                arr[i][j] = in.nextInt();
            }
        }

        System.out.println(SolveHourGlass(arr));
    }

    static int SolveHourGlass(int[][] arr) {
        int max = 0;
        boolean flag = false;
        int sum = 0;
        for (int i=0; i <= 3; i++) {
            for (int j=0; j <= 3; j++) {
                sum = SumHourGlass(i, j, arr);
                if (sum > max || flag == false) {
                    max = sum;
                    flag = true;
                }
            }
        }
        return max;
    }

    static int SumHourGlass(int x, int y, int[][] arr) {
        return arr[y][x] + arr[y][x + 1] + arr[y][x + 2] + arr[y + 1][x + 1] + arr[y + 2][x] + arr[y + 2][x + 1] + arr[y + 2][x + 2];
    }
}
