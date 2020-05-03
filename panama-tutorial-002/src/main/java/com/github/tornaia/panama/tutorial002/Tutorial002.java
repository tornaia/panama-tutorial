package com.github.tornaia.panama.tutorial002;

public class Tutorial002 {

    public static void main(String[] args) {
        System.out.println("Start");
        int operand0 = Integer.parseInt(args[0]);
        int operand1 = Integer.parseInt(args[1]);
        int result = sum(operand0, operand1);
        System.out.println(String.format("Sum of %d and %d is %d", operand0, operand1, result));
        System.out.println("End");
    }

    public static int sum(int a, int b) {
        return com.github.tornaia.panama.tutorial002.c.sum_h.sum(a, b);
    }
}
