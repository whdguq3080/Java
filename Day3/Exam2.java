import java.util.Scanner;
class Exam2{
	public static void main(String[] args){
	Scanner scan = new Scanner(System.in);
	System.out.println("얼마에요?");
	String num = scan.next();
	int a = Integer.parseInt(num);
	System.out.println(a +"원 입니다.");

	System.out.println("몇개 드릴까요?");	
	String num1 = scan.next();
	int b = Integer.parseInt(num1);
	System.out.println(b+"개 주세요.");
	
	int add = 0;

	if(a>=1000){
		add= a*b/10*8;			        
	}else if(a>=500){
		add=a*b/10*9;
	}else {
		add=a*b;
	} 
	System.out.println("DC해서 총 금액은"+ add + "원 입니다.");


}
}