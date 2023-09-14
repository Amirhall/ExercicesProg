public class AttrapeOuTransmet {
    public static void main() {
        try {
            calcul();
            lireFichier();
        } catch (ArithmeticException a) {
            System.out.println("Problème dans les valeurs du calcul");
        } catch (IllegalArgumentException i ) {
            System.out.println("Problème dans les paramètres du programme");
        } catch (InterruptedException t){
            System.out.println("Problème avec le thread en cours");
        }
    }

    public static void lireFichier(){
        // Code qui lit un fichier...
        // Q : Catch ou Throws?
    }
}
