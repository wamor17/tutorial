/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author Iron-kike
 */
public class Modelo {
    public Modelo(){}
    public Connection connection;
    
    public Modelo(String url, String us, String pw) throws SQLException{
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, us, pw);
            System.out.println("¡LA CONEXIÓN SE HA REALIZADO CON ÉXITO!");
        } 
        catch(Exception e){
            System.out.println("¡LA CONEXIÓN HA FALLADO!");
            connection = null;
        }
    }
    
    public void Open(String url, String us, String pw) throws SQLException{
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, us, pw);
            System.out.println("¡LA CONEXIÓN SE HA REALIZADO CON ÉXITO!");
        } 
        catch(Exception e){
            System.out.println("¡LA CONEXIÓN HA FALLADO!");
            connection = null;
        }
    }
    
    public void Close() throws SQLException {
        if(connection!=null){
            connection.close();
        }
        System.out.println("¡LA CONEXIÓN SE HA CERRADO CON ÉXITO!");
    }
}
