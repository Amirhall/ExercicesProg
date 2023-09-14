import java.util.ArrayList;

public class ListeSimple {
    public static void main(String[] args){
        System.out.println(repete(4,2));
    }
    public static ArrayList repete(int n, int nombreFois){
        ArrayList listeRetourner = new ArrayList();
        for (int i = 1;i <= n;i++){
            for (int index = 0; index < nombreFois;index++){
                listeRetourner.add(i);
            }
        }
        return listeRetourner;
    }
}
