public class JimmyetJohnny {
    public static void lireDesFichiersJimmy(){
        for (int i = 0 ; i < 10 ; i++ ){
            try {
                lireFichier(i);
            } catch (FileNotFoundException e) {
                System.out.println("fichier n'existe pas");
            }
        }
    }

    public static void lireDesFichiersJohnny(){
        try {
            for (int i = 0 ; i < 10 ; i++ ){
                lireFichier(i);
            }
        } catch (FileNotFoundException e) {
            System.out.println("fichier n'existe pas");
        }
    }
}
