package automacao.util;

public class Teste {
	
	public static void main(String[] args) {
		
		//String s ="-?(\\d{1,15}\\s*?([.]|$|\\s)\\s*?)+";
		String s ="^[-+\\s]?\\d{1,20}.\\d{5}$";
		
		
		System.out.println("-0.98000".matches(s));
		
		
		
		/*System.out.println("123.456,99".matches(s));
		System.out.println("123.456,99 €".matches(s));
		System.out.println("12,19".matches(s));
		System.out.println("12,19 €".matches(s));
		System.out.println("----------------");
		System.out.println("12222,19 €".matches(s)); // more than 3 digits
		System.out.println("12,,,19 €".matches(s));  // n=multiple commas
		System.out.println("a12,19 €".matches(s));   // invalid chars
		System.out.println("12€,19 €".matches(s));   // invalid type
*/	}

}
