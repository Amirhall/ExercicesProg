import java.io.*;
import java.util.Scanner;

public class LitFichier {
    public static void main(String[] args){
        String[] listeFichiers = {"EdouardMontPetit.txt","histoirejava.txt"};
        LitFichier.main(listeFichiers);
    }
    static void LireFichier(String[] NomFichiers) throws FileNotFoundException {
        for (int i = 0; i<NomFichiers.length;i++){
            try{
                Scanner fileReader = new Scanner(NomFichiers[i]);
                while (fileReader.hasNextLine()){
                    System.out.println(fileReader.nextLine());
                }
                fileReader.close();
                System.out.println("-----------------------------------");
            }
            catch (Exception e){

            }

        }
    }
}
