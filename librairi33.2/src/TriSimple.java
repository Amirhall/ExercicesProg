import java.util.ArrayList;
import java.util.List;
import java.util.Collections;
// FINIT
public class TriSimple {
    public static void main(String[] args){
        List <Double> liste = new ArrayList<Double>();
        liste.add(0.1);
        liste.add(12.34);
        liste.add(-0.1234);
        liste.add(3.1416);
        System.out.println(tri(liste));
    }
    public static List<Double> tri(List<Double> liste){
        Collections.sort(liste);
        return liste;

    }
}
