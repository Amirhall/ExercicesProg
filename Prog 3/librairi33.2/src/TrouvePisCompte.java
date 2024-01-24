import java.util.*;

public class TrouvePisCompte {
    public static void main(String[] args) {
        List <Integer> liste = new ArrayList<Integer>();
        liste.add(5);
        liste.add(23);
        liste.add(5);
        liste.add(354);
        liste.add(12);
        liste.add(7);
        liste.add(5);
        liste.add(2);
        System.out.println(trouve(5,liste));
        System.out.println(trouve(243,liste));
        System.out.println(compte(1000,liste));
        System.out.println(compte(5,liste));
    }

    public static boolean trouve(int element, List<Integer> liste) {
        for (int i = 0; i < liste.size(); i++) {
            if (element == liste.get(i)) {
                return true;
            }
        }
        return false;

    }

    public static int compte(int element, List<Integer> liste) {
        int compte = 0;
        for (int i = 0; i < liste.size(); i++) {
            if (element == liste.get(i)) {
                compte++;
            }
        }
        return compte;
    }
}
