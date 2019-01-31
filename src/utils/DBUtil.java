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

    public static boolean hasUser(User _user){
        return db.containsKey(_user.getUsername());
    }
    public static boolean hasUser(String _username){
        return db.containsKey(_username);
    }

    public static User verifyAccount(String _username,String _password){
        if (db.containsKey(_username)){
            if (db.get(_username).getPassword().equals(_password)){
                return db.get(_username);
            }else {
                return null;
            }
        }

        return null;
    }
}
