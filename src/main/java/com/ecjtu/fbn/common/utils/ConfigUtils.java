package com.ecjtu.fbn.common.utils;

import java.util.Locale;
import java.util.ResourceBundle;

/**
 * @description:
 * @author: xu_pf@suixingpay.com
 * @date: 2018/3/8
 */
public class ConfigUtils {
    public static String getValue(String key){
        ResourceBundle bundle = ResourceBundle.getBundle("config/config", Locale.getDefault());
        if (bundle.containsKey(key)){
            return bundle.getString(key);
        }else {
            return "";
        }
    }

    public static String getValue(String key,String baseName){
        ResourceBundle bundle = ResourceBundle.getBundle(baseName, Locale.getDefault());
        if (bundle.containsKey(key)){
            return bundle.getString(key);
        }else {
            return "";
        }
    }
}
