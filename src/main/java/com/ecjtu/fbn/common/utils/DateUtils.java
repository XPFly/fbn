package com.ecjtu.fbn.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @description: 时间工具类
 * @author: xu_pf@suixingpay.com
 * @date: 2018/3/15
 */
public class DateUtils {
    private static String[] parsePatterns = { "yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm",
            "yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy/MM/dd HH:mm" , "yyyyMMddHHmmss"};

    /**
     * 获取当前时间,格式：yyyyMMddHHmmss
     * @return String
     */
    public static String getDateTimes(){
        return getDate(parsePatterns[6]);
    }

    private static String getDate(String pattern){
        return new SimpleDateFormat(pattern).format(new Date());
    }
}
