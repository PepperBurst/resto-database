
import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PepperBurst
 */
public class Customer {
    String username;
    String password;
    String fName;
    String mName;
    String lName;
    String sex;
    int  id;
    
    PreparedStatement SQLStatement = null;
    ResultSet queryResultSet = null;
    Connection con = null;
    
    public Customer(){
        
    }
    
    public Customer(int inId, String inFname, String inMname, String inLname,
            String inUsername, String inPassword, String inSex){
        id = inId;
        fName = inFname;
        mName = inMname;
        lName = inLname;
        username = inUsername;
        password = inPassword;
        sex = inSex;
    }
    
    public String getFname(){
        return fName;
    }
    
    public String getMname(){
        return mName;
    }
    
    public String getLname(){
        return lName;
    }
    
    public String getUsername(){
        return username;
    }
    
    public String getPassword(){
        return password;
    }
    
    public String getSex(){
        return sex;
    }
    
    public int getID(){
        return id;
    }
    
    public void setPassword(String newPassword){
        connect();
        String oldPassword = password;
        try{
            password = newPassword;
            String sql = "Update Customer set cusPassword='"
                    + password + "' where cusID='"
                    + id + "'";
            SQLStatement = con.prepareStatement(sql);
            SQLStatement.execute();
        }catch(SQLException | HeadlessException e){
            System.out.println("Error:\t" + e);
            password  = oldPassword;
        }
    }
    
    public void setUsername(String newUsername){
        connect();
        String oldUsername = username;
        try{
            username = newUsername;
            String sql = "Update Customer set cusUsername='"
                    + username + "' where cusID='"
                    + id + "'";
            SQLStatement = con.prepareStatement(sql);
            SQLStatement.execute();
        }catch(SQLException | HeadlessException e){
            System.out.println("Error:\t" + e);
            username  = oldUsername;
        }
    }
    
    public void setFname(String newFname){
        connect();
        String oldFname = fName;
        try{
            fName = newFname;
            String sql = "Update Customer set cusFname='"
                    + fName + "' where cusID='"
                    + id + "'";
            SQLStatement = con.prepareStatement(sql);
            SQLStatement.execute();
        }catch(SQLException | HeadlessException e){
            System.out.println("Error:\t" + e);
            fName  = oldFname;
        }
    }
    
    public void setMname(String newMname){
        connect();
        String oldMname = mName;
        try{
            mName = newMname;
            String sql = "Update Customer set cusMname='"
                    + mName + "' where cusID='"
                    + id + "'";
            SQLStatement = con.prepareStatement(sql);
            SQLStatement.execute();
        }catch(SQLException | HeadlessException e){
            System.out.println("Error:\t" + e);
            mName  = oldMname;
        }
    }
    
    public void setLname(String newLname){
        connect();
        String oldLname = lName;
        try{
            lName = newLname;
            String sql = "Update Customer set cusLname='"
                    + lName + "' where cusID='"
                    + id + "'";
            SQLStatement = con.prepareStatement(sql);
            SQLStatement.execute();
        }catch(SQLException | HeadlessException e){
            System.out.println("Error:\t" + e);
            lName  = oldLname;
        }
    }
    
    public void setSex(String newSex){
        connect();
        String oldSex = sex;
        try{
            sex = newSex;
            String sql = "Update Customer set cusSex='"
                    + sex + "' where cusID='"
                    + id + "'";
            SQLStatement = con.prepareStatement(sql);
            SQLStatement.execute();
        }catch(SQLException | HeadlessException e){
            System.out.println("Error:\t" + e);
            sex  = oldSex;
        }
    }
    
    private void connect(){
        try{
            String host = "jdbc:mysql://localhost:3306/resto_database";
            String userName =  "root";
            String userPass =  "";
            con = DriverManager.getConnection(host, userName, userPass);
        }catch(SQLException | HeadlessException e){
            System.out.println("Error:\t" + e);
        }
    }
}
