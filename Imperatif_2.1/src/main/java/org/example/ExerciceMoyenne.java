package org.example;

import java.util.Arrays;
import java.util.Random;

public class ExerciceMoyenne {

    private final static Random RANDOM = new Random(System.currentTimeMillis());

    public static void main(String[] args) {
        int[] array = new int[RANDOM.nextInt(10)];

        for (int i = 0; i < array.length; i++) {
            array[i] = RANDOM.nextInt(100);
        }

        System.out.println(Arrays.toString(array));
        System.out.printf("La somme est %s", Arrays.stream(array).sum());
    }
}
