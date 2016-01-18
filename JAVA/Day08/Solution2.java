
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.StringTokenizer;

public class Day8 {

	static BufferedReader br;
	static PrintWriter out;
	static StringTokenizer st;

	public static void main(String[] args) throws IOException {
		br = new BufferedReader(new InputStreamReader(System.in));
		out = new PrintWriter(new OutputStreamWriter(System.out));
		// br = new BufferedReader(new FileReader("in.txt"));
		// out = new PrintWriter(new FileWriter("out.txt"));
		int n = readInt();
		HashMap<String, String> hm = new HashMap<String, String>();
		while (n > 0) {
			String[] str = readLine().split(" ");
			StringBuilder name = new StringBuilder();
			for (int i = 0; i < str.length; i++) {
				if (i == 1) {
					name.append(" " + str[i]);
				} else {
					name.append(str[i]);
				}
			}
			String number = next();
			hm.put(name.toString(), number);
			n--;
		}
		while (true) {
			String[] str = readLine().split(" ");
			if (str[0].equals("\n")) {
				break;
			} else {
				StringBuilder name = new StringBuilder();
				for (int i = 0; i < str.length; i++) {
					if (i == 1) {
						name.append(" " + str[i]);
					} else {
						name.append(str[i]);
					}
				}
				if (hm.containsKey(name.toString())) {
					System.out.println(
							name.toString() + "=" + hm.get(name.toString()));
				} else {
					System.out.println("Not found");
				}
			}
		}
		out.close();
	}

	static String next() throws IOException {
		while ((st == null) || !st.hasMoreTokens()) {
			st = new StringTokenizer(br.readLine().trim());
		}
		return st.nextToken();
	}

	static long readLong() throws IOException {
		return Long.parseLong(next());
	}

	static int readInt() throws IOException {
		return Integer.parseInt(next());
	}

	static double readDouble() throws IOException {
		return Double.parseDouble(next());
	}

	static char readCharacter() throws IOException {
		return next().charAt(0);
	}

	static String readLine() throws IOException {
		return br.readLine().trim();
	}
}
