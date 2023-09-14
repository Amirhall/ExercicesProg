package org.example;

public class EclateTaString {
    static void myMethod(String mot){
        for (int i = 0; i < mot.length();i++){
            System.out.println(mot.charAt(i));
        }
    }
    public static void main(String[] args){
        myMethod("Amir");
    }
}
