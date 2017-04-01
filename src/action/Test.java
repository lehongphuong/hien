package action;

import java.net.URLDecoder;
import java.net.URLEncoder;

public class Test {
	
	public static void main(String[] args) {
		System.out.println(URLDecoder.decode("import+java.io.*%3B%0Aimport+java.io.*%3B%0Aimport+java.util.*%3B%0Aimport+java.text.*%3B%0Aimport+java.math.*%3B%0Aimport+java.util.regex.*%3B%0A%0Aclass+myCode%0A%7B%0A++++public+static+void+main+(String%5B%5D+args)+throws+java.lang.Exception%0A++++%7B%0A++++++++Scanner+in+%3D+new+Scanner(System.in)%3B%0A++++++++int+n+%3D+in.nextInt()%3B%0A++++++++System.out.println(%22Hello+Java+%22%2Bn)%3B%0A++++%7D%0A%7D%0A"));
	}

}
