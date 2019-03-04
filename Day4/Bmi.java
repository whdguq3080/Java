import java.util.Scanner;
class Bmi{
        public static void main(String[] args) {
        System.out.println("몸무게=");
        Scanner scan = new Scanner(System.in);
        Double w = scan.nextDouble();
        
        System.out.println("키");
        Double t = scan.nextDouble();

        String a = "";
        t = t/100;
        t = t*t;
        Double bmi = w/t;

        if(bmi>=40){
                a= "고도비만";
        }else if(bmi>=35){
                a= "중등도비만";
        }else if(bmi>=30){
                a= "경도비만";
        }else if(bmi>=25){
                a= "과체중";
        }else if(bmi>=18.5){
                a= "정상";
        }else{
                a= "저체중";
        }
        System.out.println("Bmi =" + bmi);
        System.out.println(a);
}
}