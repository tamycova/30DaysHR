import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int test = in.nextInt();
        while(test>0){
            int number = in.nextInt();
            System.out.println(convertToBinary(number));
            test--;
        }
    }
    static String convertToBinary(int number){
        if(number >0){
           return convertToBinary(number/2)+number%2;
        }
        return "";
    }
}
