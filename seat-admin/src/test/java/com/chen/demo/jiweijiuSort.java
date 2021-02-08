package com.chen.demo;

import org.junit.jupiter.api.Test;

import java.util.Arrays;

public class jiweijiuSort {
    @Test
    public static void main(String[] args) {
        int[] array = {52, 15, 87, 98, 22, 41, 21, 32, 14, 22, 9};
        for (int i = 0; i < array.length / 2; i++) {
            for (int j = 0; j < array.length - i - 1; j++) {
                if (array[j] > array[j + 1]) {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
            for (int j = array.length - i - 1; j > i; j--) {
                if (array[j] < array[j - 1]) {
                    int temp = array[j];
                    array[j] = array[j - 1];
                    array[j - 1] = temp;
                }
            }
        }
            System.out.println(Arrays.toString(array));
    }
}
