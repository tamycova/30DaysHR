import java.util.*;
import java.io.*;
import java.math.*;
import java.text.*;

class Day_5_Loop extends MyScanner {
	public static void main(String args[]) throws Exception {
		Day_5_Loop in = new Day_5_Loop();
		int t = in.nextInt();
		while (t > 0) {
			int a = in.nextInt();
			int b = in.nextInt();
			int n = in.nextInt();
			int sum = a + b;
			System.out.print(sum + " ");
			for (int i = 1; i < n; i++) {
				sum += (Math.pow(2, i) * b);
				System.out.print(sum + " ");
			}
			System.out.println();
			t--;
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
