import java.util.Scanner;
class Calc{
    public static void main(String[] args){
        System.out.println("°è»ê±â");
        Scanner Scan = new Scanner(System.in);
        
        int a = Scan.nextInt();
        String op = Scan.next();
        int b = Scan.nextInt();

        int add = 0;
        
        switch(op){
        case("+") : add=a+b; break;
        case("-") : add=a-b; break;
        case("*") : add=a*b; break;
        case("/") : add=a/b; break;
        case("%") : add=a%b; break;
        default : add=0; break;
        }
        System.out.println(a+op+b+"="+add); 
    }
}