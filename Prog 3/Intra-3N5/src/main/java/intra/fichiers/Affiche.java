package intra.fichiers;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Affiche
{
    public static void main( String[] args ) throws FileNotFoundException {

        // TODO ton code ici
        try{
            FileReader fileReader = new FileReader("message.txt");
            while(fileReader.ready()){
                System.out.print((char) fileReader.read());

            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
}