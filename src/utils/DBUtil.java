package utils;

import model.User;

import java.util.HashMap;
import java.util.Map;

public class DBUtil {
    private static Map<String, User> db = new HashMap<String, User>();


    public static boolean addUser(String _username,String _password,int age,String sex){
        //To do
        if (db.containsKey(_username)){
            return false;
        }else{
            User user = new User(_username,_password,age,sex);
            db.put(_username,user);
            return true;
        }
    }
}
