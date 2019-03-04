import java.util.Scanner;
	class Calc3{
	public static void main(String[] args){
	System.out.println("숫자 두개를 입력하시오.");
	Scanner scan = new Scanner(System.in);
	String num1 = scan.next();
	String opcode = scan.next();
	String num2 = scan.next();
	int a = Integer.parseInt(num1);
	int b = Integer.parseInt(num2);

	int result = 0;

	if(opcode.equals("+")){
                           result = a + b ;
	}else if(opcode.equals("-")){
                           result = a - b ;
	}else if(opcode.equals("*")){
		result = a * b ;
	}else if(opcode.equals("/")){
		result = a / b ;
	}else{
		result= 0;
	
	}System.out.println( num1 + opcode + num2 + "=" + result);
	
   }
}