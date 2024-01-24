package intra.programmation;

public class ExoProgrammation {

    public static int compteChiffre(int chiffre, int nombre) throws IllegalArgumentException {
        if (chiffre > 9 || chiffre < 0 ){
            throw new IllegalArgumentException("chiffre entre 0 et 9");
        }
        int repetitions = 0;
        String nombreString = String.valueOf(nombre);
        String[] chiffresIndividuels = nombreString.split("");
        for (int i = 0; i < chiffresIndividuels.length; i++) {
            if(chiffresIndividuels[i].equals(String.valueOf(chiffre))){
                repetitions++;
            }
        }
        System.out.println(repetitions);
        return repetitions;

    }


}
