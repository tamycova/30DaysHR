import java.util.*;
import java.io.*;
import java.math.*;
import java.text.*;


class Day10 extends MyScanner {

	public static void main(String args[]) throws Exception {
		Day10 in = new Day10();
		BufferedWriter out = new BufferedWriter(
				new OutputStreamWriter(System.out));

		int t = in.nextInt();
		while (t > 0) {
			long n = in.nextLong();
			String s = new String();
			while (n > 0) {
				s = modulo(n, 2) + "" + s;
				n = n >> 1;
			}
			out.write(s+"\n");
			out.flush();
			t--;
		}
	}

	private static long modulo(long S, long N) {
		return ((S) & (N - 1));
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