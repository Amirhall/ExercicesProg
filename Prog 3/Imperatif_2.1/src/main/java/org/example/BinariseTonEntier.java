package org.example;

public class BinariseTonEntier {
    static void myMethod(String str) {
        Integer numero = Integer.valueOf(str);
        String binaire = Integer.toBinaryString(numero);
        System.out.print(binaire);
    }
    public static void main(String[] args) {
        myMethod("10");
    }
}
