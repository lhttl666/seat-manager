package com.chen.demo;

import org.junit.jupiter.api.Test;

import java.util.Arrays;

// 希尔排序
public class shellsSort {
    @Test
    public static void main(String[] args) {
        int arr[] = {52, 15, 87, 98, 22, 41, 21, 32, 14, 22, 9};
        shellSort(arr);
        System.out.println(Arrays.toString(arr));
    }

    private static void shellSort(int[] arr) {
        //step:步长
        for (int step = arr.length / 2; step > 0; step /= 2) {
            //对一个步长区间进行比较 [step,arr.length)
            for (int i = step; i < arr.length; i++) {
                int value = arr[i];
                int j;
                //对步长区间中具体的元素进行比较
                for (j = i - step; j >= 0 && arr[j] > value; j -= step) {
                    //j为左区间的取值，j+step为右区间与左区间的对应值。
                    arr[j + step] = arr[j];
                }
                //此时step为一个负数，[j + step]为左区间上的初始交换值
                arr[j + step] = value;
            }
        }
    }
}
