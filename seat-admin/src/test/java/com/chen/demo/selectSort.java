package com.chen.demo;

import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.Arrays;

public class selectSort {
    @Test
    public static void main(String[] args) {
        int arr[] = {52, 15, 87, 98, 22, 41, 21, 32, 14, 22, 9};
        for (int i = 0; i < arr.length; i++) {
            //最小数的索引
            int minIndex = i;
            for (int j = i; j < arr.length; j++) {

                //找到最小数，并记录最小数的索引
                if (arr[j] < arr[minIndex]) {
                    minIndex = j;
                }
            }
            //交换符合条件的数
            int tmp = arr[i];
            arr[i] = arr[minIndex];
            arr[minIndex] = tmp;
        }
        System.out.println(Arrays.toString(arr));
    }
}
