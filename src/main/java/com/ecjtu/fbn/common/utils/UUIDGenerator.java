package com.ecjtu.fbn.common.utils;

import java.util.Random;
import java.util.UUID;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/3/14
 */
public class UUIDGenerator {

    public static String UUIDWithNextInt(int size){
        String s="";
        Random random = new Random();
        for(int i = 0;i<size;i++){
            s += String.valueOf(random.nextInt(10));
        }
        return s;
    }

    public static String UUIDWith32(){
        return UUID.randomUUID().toString().replace("-","");
    }
}
