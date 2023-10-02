package intra.fichiers;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class Ecrit
{
    public static void main( String[] args ) throws IOException {

        // TODO ton code ici
        try{
            File fichier = new File(args[0]);
            FileWriter fileWriter = new FileWriter(fichier);
            fileWriter.write(args[1]);
            fileWriter.close();
        }
        catch (ArrayIndexOutOfBoundsException e){
            System.out.println("minimum 2 arguments");
        }

    }
}
