
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PepperBurst
 */
public class Tables {
    int id;
    int seats;
    boolean inUse;
    
    PreparedStatement SQLStatement = null;
    ResultSet queryResultSet = null;
    Connection con = null;
    
    public Tables(){
        
    }
    
    public Tables(int inId, boolean inInUse, int inSeats){
        id = inId;
        inUse = inInUse;
        seats = inSeats;
    }
}
