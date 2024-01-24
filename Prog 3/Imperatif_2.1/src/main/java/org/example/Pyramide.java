package org.example;


public class Pyramide {

    public static void main(String[] args) {
        for (int i = 1; i <= 2; i++) {
            System.out.print(" ");
        }

        System.out.print("*");
        System.out.println();
        System.out.print(" ");

        for (int i = 1; i <= 3; i++) {
            System.out.print("*");
        }

        System.out.println();
        for (int i = 1; i <= 6; i++) {
            System.out.print("*");
        }
    }
}