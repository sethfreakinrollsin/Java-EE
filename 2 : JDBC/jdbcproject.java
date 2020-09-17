import java.util.*;
import java.sql.*;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//package Jdbcproject;

/**
 *
 * @author seth
 */
public class jdbcproject {
     //Driver
    final static String sql_driver="com.mysql.jdbc.Driver";
    //URL
    final static String sql_url="jdbc:mysql://localhost:3306/starschema";

    //Authentication
    final static String username="root";
    final static String password="";
    
    public static void main(String[] args) {
        //Variables
        int id;
        String name;

        try{

        //Register Driver
        Class.forName(sql_driver);
        
            try ( //Establishing Connection
                    Connection conn = DriverManager.getConnection(sql_url, username, password)) {
                if(conn==null){
                    System.out.println("Connection Established ");
                }else{
                    System.out.println("Connection FAILED ");
                }       //Execute Query
                Statement stmt=conn.createStatement();
                //Query
                String  sql_query="select * from movie ";
                //Quering
                ResultSet rs=stmt.executeQuery(sql_query);
                //Extracting Data
                while(rs.next()){
                    id =rs.getInt("idmovie");
                    name=rs.getString("movie");
                    System.out.println("Movie \nID : "+id+"\tName : "+name+"\n");
                }       //Closing executed Query
                rs.close();
                //Closing Statements
                stmt.close();
                //Closing Server
            }
    }catch(Exception e){
        System.out.println("Error : "+e);
    }
    }
    
}
