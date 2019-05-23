/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package employee;

import java.sql.*;

/**
 *
 * @author Chanpreet
 */
public class EmployeeDao {
    public static Connection getConnection()
    {
        Connection con=null;
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
    
        }catch(Exception ex){System.out.println("===Error in get Connection employee===="+ex);}
          
        return con;
    }
    
    public static int save(ModelEmployee e)
    {
        int status=0;
        if(e.getGrade().equals("A"))
                e.setSalary(100000);
        else if(e.getGrade().equals("B"))
                e.setSalary(70000);
        else if(e.getGrade().equals("C"))
                e.setSalary(40000);
        else if(e.getGrade().equals("D"))
                e.setSalary(25000);
        else
                e.setSalary(15000);
        String query="insert into employee(name,password,email,sex,address,dob,phno,grade,salary,bonus,bond_length) values(?,?,?,?,?,?,?,?,?,?,?)";
        Connection con=EmployeeDao.getConnection();
        try {
            PreparedStatement ps=con.prepareStatement(query);
            
            ps.setString(1, e.getName());
            ps.setString(2, e.getPassword());
            ps.setString(3, e.getEmail());
            ps.setString(4, e.getSex());
            ps.setString(5, e.getAddress());
            ps.setString(6, e.getDob());
            ps.setLong(7,e.getPhno());
            ps.setString(8, e.getGrade());
            ps.setLong(9, e.getSalary());
            ps.setLong(10, e.getBonus());
            ps.setFloat(11, e.getBond_length());
            
            status=ps.executeUpdate();
        
        } catch (Exception ex) {
            System.out.println("===error in employee save======"+ex);
        }
        return status;
    }

}
