package com.chen.demo;


import org.junit.jupiter.api.Test;

import java.util.Arrays;

// 基数排序(radix sort)又称桶排序（bucket sort）
public class bucketSort {
    @Test
    public static void main(String[] args) {
        int array[] = {52, 15, 87, 98, 22, 41, 21, 32, 14, 22, 9};

        // 桶  10个桶  每个桶的最大容量默认为数组长度
        int[][] bucket = new int[10][array.length];
        // 每个桶的当前容量
        int[] capacity = new int[10];

        //元素求出最大数
        int max = array[0];
        for (int r = 0; r < array.length; r++) {
            if (array[r] > max) {
                max = array[r];
            }
        }
        //求出最大长度 用于判断循环几大轮
        int length = (max + "").length();

        //取得（个位 十位 百位。。。。）基数
        for (int b = 0, u = 1; b < length; b++, u *= 10) {
            for (int i = 0; i < array.length; i++) {
                int base = array[i] / u % 10;  //比如基数为 4
                //将基数按照规则放进桶中
                bucket[base][capacity[base]] = array[i];     //放进第四个桶中 的第一几个当前容量位置
                capacity[base]++;   //容量增加
            }
            // 取出数据
            int d = 0;
            for (int k = 0; k < capacity.length; k++) {
                if (capacity[k] != 0) {
                    for (int p = 0; p < capacity[k]; p++) {
                        array[d] = bucket[k][p];
                        d++;
                    }
                }
                //注意：清零
                capacity[k] = 0;
            }
        }
        System.out.println(Arrays.toString(array));
    }
}
