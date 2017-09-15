public class Solution {

    public static void main(String[] args) {

        int i = 4;
        double d = 4.0;
        String s = "HackerRank ";

        Scanner scan = new Scanner(System.in);

// the section of code that you will edit begins here:

// Step 1: declare variables and string

        int i2;
        double d2;
        String s2;

// Step 2: read variables and string

        i2 = scan.nextInt();
        d2 = scan.nextDouble();
        scan.nextLine();
        s2 = scan.nextLine();

// Step 3: print calculated variables and concatenated string

        System.out.println(i + i2);
        System.out.println(d + d2);
        System.out.println(s.concat(s2));
        
// The section of code you will edit ends here

        scan.close();
    }
}
