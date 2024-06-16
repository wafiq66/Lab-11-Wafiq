/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package person.bean;

import java.io.Serializable;
/**
 *
 * @author user
 */
public class Staff {
   
    private String name;
    private int salary;
    private String designation;
    //default constructor
    public Staff(){
        name = null;
        salary = 0;
        designation = null;
    }
    //normal constructor
    public Staff(String a,int b, String c){
        name = a;
        salary = b;
        designation = c;
    }
    //retriever
    public String getName(){
        return name;
    }
    public int getSalary(){
        return salary;
    }
    public String getDesignation(){
        return designation;
    }
    //modifier
    public void setName(String a){
        name =a;
    }
    public void setSalary(int a){
        salary =a;
    }
    public void setDesignation(String a){
        designation =a;
    }
}
