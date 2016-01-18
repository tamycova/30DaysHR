import java.util.*;
import java.io.*;
import java.math.*;
import java.text.*;

class Day_6_Review extends MyScanner {

	public static void main(String args[]) throws Exception {
		Day_6_Review in = new Day_6_Review();
		int n = in.nextInt();
		for (int i = 0; i < n; i++) {
			for (int j = n - 1; j > i; j--) {
				System.out.print(" ");
			}
			for (int j = 0; j <= i; j++) {
				System.out.print("#");
			}
			System.out.println();
		}

	}
}


// Scanner Class
class MyScanner {
	BufferedReader br;
	StringTokenizer st;
 
	public MyScanner() {
	
		br = new BufferedReader(new InputStreamReader(System.in));
	
	}
 
	public String nextToken() throws Exception {
 
		while(st == null || !st.hasMoreElements()) {
			
			  st = new StringTokenizer(br.readLine());
			
		}
		return st.nextToken();
	}
 
	public int nextInt() throws Exception, Exception {
		return Integer.parseInt(nextToken());
	}
 
	public long nextLong() throws Exception {
		return Long.parseLong(nextToken());
	}
 
	public double nextDouble() throws Exception {
		return Double.parseDouble(nextToken());
	}
}
