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
    private int age;
    private String firstname;
    private String lastname;
    
    //default construstor
    public Staff(){
        age = 0;
        firstname = null;
        lastname = null;
    }
    //normal constructor
    public Staff(int a,String b, String c){
        age = a;
        firstname = b;
        lastname = c;
    }
    //retriever
    public int getAge(){
        return age;
    }
    public String getFirstname(){
        return firstname;
    }
    public String getLastname(){
        return lastname;
    }
    
    public String getFullname(){
        return (firstname + " "+ lastname);
    }
    //modifier
    public void setAge(int a){
        age =a;
    }
    public void setFirstname(String a){
        firstname =a;
    }
    public void setLastname(String a){
        lastname =a;
    }
    
}
