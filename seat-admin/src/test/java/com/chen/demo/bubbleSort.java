package com.chen.demo;

import org.junit.jupiter.api.Test;

import java.lang.reflect.Array;
import java.util.Arrays;

public class bubbleSort {
    @Test
    public static void main(String[] args) {
        int a[] = {52, 15, 87, 98, 22, 41, 21, 32, 14, 22, 9};
        int temp; //临时变量
        for (int i = 0; i < a.length - 1; i++) {
            for (int j = 0; j < a.length - 1; j++) {
                if (a[j + 1] < a[j]) {
                    temp = a[j + 1];
                    a[j + 1] = a[j];
                    a[j] = temp;
                }
            }
        }
        System.out.println(Arrays.toString(a));
    }
}
