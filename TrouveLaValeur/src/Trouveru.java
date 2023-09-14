public class Trouveru {
    static void trouve(String[] tableau, String mot) {
        try {
            for (int i = 0; i < tableau.length; i++) {
                if (mot == tableau[i]) {
                    int index = i;
                    System.out.println("L'index du mot dans le tableau est: " + index);
                    break;
                }
            }
        } catch (Exception e) {
            int s = 0;
        }

    }

    public static void main(String[] args) {
        String[] tableau = {"rouge", "jaune", "rose", "vert", "noir"};
        trouve(tableau, "jaune");
    }
}

