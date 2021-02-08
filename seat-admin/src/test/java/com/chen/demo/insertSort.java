package com.chen.demo;


import org.junit.jupiter.api.Test;

public class insertSort {
    @Test
    public static void main(String[] args) {
        int a[] = {52, 15, 87, 98, 22, 41, 21, 32, 14, 22, 9};
        int temp = 0;
        for (int i = 0; i < a.length; i++) {
            int j = i - 1;
            temp = a[i];
            for (; j >= 0 && temp < a[j]; j--) {
                a[j + 1] = a[j];
            }
            a[j+1]=temp;
        }
        for (int i = 0; i < a.length; i++) {
            String str = a[i]+",";
            System.out.println(str);
        }
    }
}
