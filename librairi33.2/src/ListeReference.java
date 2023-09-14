import java.util.ArrayList;
import java.util.List;

public class ListeReference {

    @Override
    public String toString() {
        return "ListeReference{}";
    }

    public static void main(String[] args){
        Truc a = new Truc();
        Truc b = new Truc();
        Truc c = new Truc();
        a.popi = "aaaaa";
        a.pipo = 11111;
        b.popi = "bbbbb";
        b.pipo = 22222;
        c.popi = "cccccc";
        c.pipo = 33333;
        List <Truc> liste1 = new ArrayList<>();
        List <Truc> liste2 = new ArrayList<>();
        liste1.add(a);
        liste1.add(b);
        liste1.add(c);
        liste2.add(a);
        liste2.add(b);
        liste1.add(c);
        a.popi = "AAAAAAA";
        a.pipo = 00000;
        System.out.println(liste1);
        System.out.println(liste2);


    }


}
