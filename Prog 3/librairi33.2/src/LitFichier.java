import java.io.*;
import java.util.Scanner;

public class LitFichier {
    public static void main(String[] args){
        String[] listeFichiers = {"EdouardMontPetit.txt","histoirejava.txt"};
        lireFichier(listeFichiers);
    }
    static void lireFichier(String[] NomFichiers){
        for (int i = 0; i<NomFichiers.length;i++){
            try{
                File fichier = new File(NomFichiers[i]);
                Scanner fileReader = new Scanner(fichier);
                while (fileReader.hasNextLine()){
                    System.out.println(fileReader.nextLine());
                }
                fileReader.close();
                System.out.println("-----------------------------------");
            }
            catch (FileNotFoundException e){
                System.out.println("Fichier pas trouver");
            }

        }
    }
}
