import java.io.*;
public class EcritFichier {
    public static void main(String[] args) throws IOException {
        try{
            File FicherNom = new File("Nom.txt");
            FileWriter ModifierFichierNom = new FileWriter("Nom.txt");
            ModifierFichierNom.write("Mon nom est Amir Hal Houssine");
            ModifierFichierNom.close();
        }
        catch(IOException e){
            System.out.println("Error");
        }

    }
}
