package org.seven.util;

import java.io.UnsupportedEncodingException;

public class Util {
    public static String String_UTF(String s){
        try {
            byte b[]= s.getBytes("ISO8859_1");
            s=new String(b,"utf-8");
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return s;
    }
    public static String String_reduce(String s){
        if(s.length()>91){
            return s.substring(0, 90)+"...";
        }
        return s;
    }
    public static String String_nbsp(String s){
        s=s.replaceAll("\n", "<br/>");
        s=s.replaceAll(" ", "&nbsp;");
        return s;
    }

}
