package intra.listes;

import java.time.Month;
import java.util.*;

public class ExoListe
{
    public static List<Integer> joursParMois(int n) throws IllegalArgumentException {
        List<Integer> liste = new ArrayList<>();
        if (n > 12 || n < 0){
            throw new IllegalArgumentException("ptit con il y a 12 mois dans une année");
        }
        for (int i = 1; i <= n; i++) {
            liste.add(Month.of(i).length(false));

        }
        return liste;
    }

    public static List<Double> tri(List<Double> liste){

        // TODO ton code ici, et supprime la ligne ci-dessous :
        Collections.sort(liste);
        return liste;

    }

}
