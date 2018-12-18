/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PepperBurst
 */
public class Item {
    int id;
    String name;
    String course;
    int price;
    int stock;
    
    public Item(){
        
    }
    
    public Item(int inId, String inName, String inCourse, int inPrice, int inStock){
        this.id = inId;
        this.name = inName;
        this.course = inCourse;
        this.price = inPrice;
        this.stock = inStock;
    }
    
    public int getID(){
        return this.id;
    }
    
    public String getName(){
        return this.name;
    }
    
    public String getCourse(){
        return this.course;
    }
    
    public int getPrice(){
        return this.price;
    }
    
    public String getPriceS(){
        return Integer.toString(this.price);
    }
    
    public int getStock(){
        return this.stock;
    }
}
