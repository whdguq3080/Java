import java.util.Scanner;
class Grade{
	public static void main(String[] args){
	System.out.println("ÇÐ»ý ÀÌ¸§À» ÀÔ·ÂÇÏ½Ã¿À.");
	Scanner scan = new Scanner(System.in);
	String name = scan.next();
 	

	System.out.println("±¹,¿µ,¼ö,»ç,°ú");

	String sub1= scan.next();
	String sub2= scan.next();
	String sub3= scan.next();
	String sub4= scan.next();
	String sub5= scan.next();

	int a = Integer.parseInt(sub1);
	int b = Integer.parseInt(sub2);
	int c = Integer.parseInt(sub3);
	int d = Integer.parseInt(sub4);
	int e = Integer.parseInt(sub5);

	
	int avr = a+b+c+d+e;
	int avr2 = avr/5;

	if(avr2>=90){
		System.out.println(name + "ÃÑÁ¡" + avr + "Á¡"+ "Æò±Õ" + avr2 + "Á¡" + "¼ºÀû A ÇÐÁ¡");
	}else if(avr2>=80){
 		System.out.println(name + "ÃÑÁ¡" + avr + "Á¡"+ "Æò±Õ" + avr2 + "Á¡" + "¼ºÀû B ÇÐÁ¡");
	}else if(avr2>=70){
		System.out.println(name + "ÃÑÁ¡" + avr + "Á¡"+ "Æò±Õ" + avr2 + "Á¡" + "¼ºÀû C ÇÐÁ¡");
	}else if(avr2>=60){
		System.out.println(name + "ÃÑÁ¡" + avr + "Á¡"+ "Æò±Õ" + avr2 + "Á¡" + "¼ºÀû E ÇÐÁ¡");
	}else{
		System.out.println(name + "ÃÑÁ¡" + avr + "Á¡"+ "Æò±Õ" + avr2 + "Á¡" + "¼ºÀû F ÇÐÁ¡");
}
}
}