import java.util.*;
public class EntrezUnNombre {
    public static void main(String[] args){
        try{
            Scanner input = new Scanner(System.in);
            System.out.println("Veuillez entrer un nombre:");
            int nombre = input.nextInt();
            System.out.println("Merci votre nombre est " + nombre);
        } catch (InputMismatchException e) {
            System.out.println("Ceci n’est pas un nombre, veuillez entrer un nombre:");
        }


    }
}
