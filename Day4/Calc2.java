import java.util.Scanner;
class Calc2{
    public static void main (String[] args){
        System.out.println("°è»ê±â");   
        Scanner scan = new Scanner(System.in);
        int a = scan.nextInt();
        String op = scan.next();
        int b = scan.nextInt();

        int add = 0;

        switch(op){
            case"+": add=a+b; break;
            case"-": add=a-b; break;
            case"*": add=a*b; break;
            case"/": add=a/b; break;
            case"%": add=a%b; break;
            default : add=0; break;
        }
            System.out.println();
     }
    }