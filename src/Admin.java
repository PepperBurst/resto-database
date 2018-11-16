
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
public class Admin {    
    String username;
    String fName;
    String mName;
    String lName;
    String password;
    int id;
    
    PreparedStatement SQLStatement = null;
    ResultSet queryResultSet = null;
    Connection con = null;

    public Admin(){
        
    }
    
    public Admin(int inId, String inFname, String inMname, String inLname,
            String inUsername, String inPassword){
        id = inId;
        fName = inFname;
        mName = inMname;
        lName = inLname;
        username = inUsername;
        password = inPassword;
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
    
    public int getID(){
        return id;
    }
    
    public String setPassword(String newPassword){
        this.connect();
        String oldPassword = password;
        String status;
        try{
            String sql1 = "Select Username from Admin where Username='"
                    + oldPassword + "'";
            SQLStatement = con.prepareStatement(sql1);
            queryResultSet = SQLStatement.executeQuery(sql1);
            if(!queryResultSet.next()){
                try{
                    password = newPassword;
                    String sql = "Update Admin set adminPassword='"
                            + password + "' where adminID='"
                            + id + "'";
                    SQLStatement = con.prepareStatement(sql);
                    SQLStatement.execute();
                    status = "ok";
                }catch(SQLException | HeadlessException e){
                    System.out.println("Error:\t" + e);
                    password  = oldPassword;
                    status = "SQLError";
                }
            }else{
                System.out.println("Password already exists");
                password  = oldPassword;
                status = "Exists";
            }
        }catch(SQLException | HeadlessException e){
            System.out.println("Error:\t" + e);
            password  = oldPassword;
            status = "SQLError";
        }
        return status;
    }
    
    public void setUsername(String newUsername){
        this.connect();
        String oldUsername = username;
        try{
            String sql1 = "Select Username from Admin where Username='"
                    + oldUsername + "'";
            SQLStatement = con.prepareStatement(sql1);
            queryResultSet = SQLStatement.executeQuery(sql1);
            if(!queryResultSet.next()){
                try{
                    username = newUsername;
                    String sql = "Update Admin set adminUsername='"
                            + username + "' where adminID='"
                            + id + "'";
                    SQLStatement = con.prepareStatement(sql);
                    SQLStatement.execute();
                }catch(SQLException | HeadlessException e){
                    System.out.println("Error:\t" + e);
                    username  = oldUsername;
                }
            }else{
                username  = oldUsername;
            }
        }catch(SQLException | HeadlessException e){
            System.out.println("Error: \t" + e);
        }
    }
    
    public void setFname(String newFname){
        this.connect();
        String oldFname = fName;
        try{
            fName = newFname;
            String sql = "Update Admin set adminFname='"
                    + fName + "' where adminID='"
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
            String sql = "Update Admin set adminMname='"
                    + mName + "' where adminID='"
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
            String sql = "Update Admin set adminLname='"
                    + lName + "' where adminID='"
                    + id + "'";
            SQLStatement = con.prepareStatement(sql);
            SQLStatement.execute();
        }catch(SQLException | HeadlessException e){
            System.out.println("Error:\t" + e);
            lName  = oldLname;
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
