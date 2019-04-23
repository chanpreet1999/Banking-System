/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package customer;

import java.sql.*;
import java.util.*;
/**
 *
 * @author Chanpreet
 */

public class CustomerDao {

    public static Connection getConnection() throws Exception {
        Connection con = null;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");

        } catch (ClassNotFoundException ex) {
            System.out.println("======error in get connection=====" + ex);
        }
        return con;
    }

    public static int save(ModelCustomer c) {
        Connection con = null;
        int i = 0;
        String query = "insert into customer(name,password,email,country,sex,address,dob,type,balance,phno) values(?,?,?,?,?,?,?,?,?,?)";
        try {
            con = CustomerDao.getConnection();
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, c.getName());
            ps.setString(2, c.getPassword());
            ps.setString(3, c.getEmail());
            ps.setString(4, c.getCountry());
            ps.setString(5, c.getSex());
            ps.setString(6, c.getAddress());
            ps.setString(7, c.getDob());
            ps.setString(8, c.getType());
            ps.setLong(9, c.getBalance());
            ps.setLong(10, c.getPhno());

            i = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            System.out.println("=====Exception in save customer=====" + ex);
        }
        return i;
    }

    public static ModelCustomer login(String user, String pass) {
        ModelCustomer m = new ModelCustomer();
        Connection con = null;
        String query = "select * from customer where name=? and password=?";
        try {

            con = CustomerDao.getConnection();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                m.setId(rs.getInt(1));
                m.setName(rs.getString(2));
                m.setPassword(rs.getString(3));
                m.setEmail(rs.getString(4));
                m.setCountry(rs.getString(5));
                m.setSex(rs.getString(6));
                m.setAddress(rs.getString(7));
                m.setDob(rs.getString(8));
                m.setType(rs.getString(9));
                m.setBalance(rs.getInt(10));
                m.setPhno(rs.getLong(11));

            } else {
                System.out.println("===No records found in Login=== ");
            }

        } catch (Exception ex) {
            System.out.println("====Exception in login customer====" + ex);
        }
        return m;
    }

    public static int delete(int id) {
        String query = "delete from customer where id=?";
        int status = 0;
        Connection con = null;
        try {
            con = CustomerDao.getConnection();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id);
            status = ps.executeUpdate();
        } catch (Exception ex) {
            System.out.println("=====Error in delete customer====");
        }

        return status;
    }

    public static int edit(ModelCustomer c) {
        Connection con = null;
        int i = 0;
        String query = "update customer set name=? ,password=? ,email=? ,country=? ,sex=? ,address=? ,dob=? ,type=? ,balance=? ,phno=? where id=?";
        try {
            con = CustomerDao.getConnection();
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, c.getName());
            ps.setString(2, c.getPassword());
            ps.setString(3, c.getEmail());
            ps.setString(4, c.getCountry());
            ps.setString(5, c.getSex());
            ps.setString(6, c.getAddress());
            ps.setString(7, c.getDob());
            ps.setString(8, c.getType());
            ps.setLong(9, c.getBalance());
            ps.setLong(10, c.getPhno());
            ps.setInt(11, c.getId());

            i = ps.executeUpdate();
            con.close();
        } catch (Exception ex) {
            System.out.println("=====Exception in save customer=====" + ex);
        }
        return i;
    }

    public static List<ModelCustomer> getAllRecords() {
        List<ModelCustomer> list = new ArrayList<>();
        Connection con = null;
        try {
            con = CustomerDao.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from customer");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ModelCustomer c = new ModelCustomer();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                c.setPassword(rs.getString("password"));
                c.setEmail(rs.getString("email"));
                c.setCountry(rs.getString("country"));
                c.setSex(rs.getString("sex"));
                c.setAddress(rs.getString("address"));
                c.setDob(rs.getString("dob"));
                c.setType(rs.getString("type"));
                c.setBalance(rs.getInt("balance"));
                c.setPhno(rs.getLong("phno"));
                list.add(c);
            }
        } catch (Exception ex) {
            System.out.println("=====Exception in get all customer records=====");
        }
        return list;
    }
    
    public static ModelCustomer getRecordById(int id)
    {
        ModelCustomer c=new ModelCustomer();
        try {
            Connection con=CustomerDao.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from customer where id=?");
            ps.setInt(1, id);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                c.setPassword(rs.getString("password"));
                c.setEmail(rs.getString("email"));
                c.setCountry(rs.getString("country"));
                c.setSex(rs.getString("sex"));
                c.setAddress(rs.getString("address"));
                c.setDob(rs.getString("dob"));
                c.setType(rs.getString("type"));
                c.setBalance((int) rs.getLong("balance"));
                c.setPhno((int)rs.getLong("phno"));
                System.out.println("========="+c.getCountry()+"=========");
            }
        } catch (Exception ex) {
            System.out.println("====Error in get customer record by id====");
            System.out.println("Exception is:"+ex);
        }
        System.out.println("========="+c.getName()+"=========");
        return c;
    }
}
