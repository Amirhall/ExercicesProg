package org.example;

public class ConvertisDansTousLesSens {
    static void intToFloat(int num){
        float floatnum = (float) num;
        System.out.println("Int into Float:" + floatnum);
    }
    static void doubleIntoInt(double dub){
        int num = (int)dub;
        System.out.println("Double into int: " +num);
    }

    static void stringIntoInt(String str){
        int stringint = Integer.parseInt(str);
        System.out.println("String into int: " + stringint);
    }
    static void intToStrin(int num){
        String intString = String.valueOf(num);
        System.out.println("Int into string: " + intString);
    }
    public static void main(String[] args){
        intToFloat(253);
        doubleIntoInt(545.87);
        stringIntoInt("1234");
        intToStrin(135);
    }

}
