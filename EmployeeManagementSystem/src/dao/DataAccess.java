package dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import db.DatabaseAccess;
import model.Department;
import model.Employee;
import model.User;

public class DataAccess {
	
	public static boolean loginVerify(String user, String pass){
		boolean session = false;
			try {
				ResultSet rs = DatabaseAccess.getPreparedStatement("select * from users where username='" + user + "' and password='" + pass + "'").executeQuery();
				if(!rs.next()){
					session = false;
				}else{
					session = true;
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return session;
	}
	
	public static List<Employee> getAllEmployee(){
        List<Employee> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DatabaseAccess.getPreparedStatement("select * from Employee").executeQuery();
            while(rs.next()){
            	Employee e = new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9),rs.getString(10));
                ls.add(e);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
	
	public static List<Employee> getEmployee(int id){
        List<Employee> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DatabaseAccess.getPreparedStatement("select * from Employee where emp_Id =" + id).executeQuery();
            while(rs.next()){
            	Employee e = new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9),rs.getString(10));
                ls.add(e);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
	
	public static List<Department> getAllDepartMent(){
        List<Department> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DatabaseAccess.getPreparedStatement("select * from Department").executeQuery();
            while(rs.next()){
            	Department e = new Department(rs.getInt(1), rs.getString(2));
                ls.add(e);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
	
	public static List<Department> getDepartMent(int id){
        List<Department> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DatabaseAccess.getPreparedStatement("select * from Department where deptNo =" + id).executeQuery();
            while(rs.next()){
            	Department e = new Department(rs.getInt(1), rs.getString(2));
                ls.add(e);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
	
	public void addDept(Department d){
        try {
            PreparedStatement ps = DatabaseAccess.getPreparedStatement("insert into Department values(?,?)");
            ps.setInt(1, d.getDeptNo());
            ps.setString(2, d.getDeptName());
            
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
        	System.out.println("Error");
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
	
	public void addEmp(Employee e){
        try {
            PreparedStatement ps = DatabaseAccess.getPreparedStatement("insert into employee values(?,?,?,?,?,?,?,?,?,?)");
            ps.setInt(1, e.getEmpId());
            ps.setString(2, e.getFirstName());
            ps.setString(3, e.getLastName());
            ps.setString(4, e.getMiddleName());
            ps.setString(5, e.getBirthday());
            ps.setString(6, e.getAddress());
            ps.setString(7, e.getContactNo());
            ps.setString(8, e.getEmail());
            ps.setInt(9, e.getDeptNo());
            ps.setString(10, e.getJobTitle());
            
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
        	System.out.println("Error");
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
	
	public void edit(int id, String deptName){
        try {
            String sql = "update department SET deptName = ? where deptNo ="+id;
            PreparedStatement ps= DatabaseAccess.getPreparedStatement(sql);
            ps.setString(1, deptName);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
	
	public void editEmp(int id, String firstName, String lastName, String middleName, String birthday, String address, String contactNo, String email, int deptNo, String jobTitle){
        try {
            String sql = "update employee SET firstName = ?, lastName = ?, middleName = ?, birthday = ?, address = ?, contactNo = ?, email = ?, deptNo = ?, jobTitle = ? where emp_id ="+id;
            PreparedStatement ps= DatabaseAccess.getPreparedStatement(sql);
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, middleName);
            ps.setString(4, birthday);
            ps.setString(5, address);
            ps.setString(6, contactNo);
            ps.setString(7, email);
            ps.setInt(8, deptNo);
            ps.setString(9, jobTitle);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
	
	public void deleteDeparment(int id){
        try {
            String sql = "delete from department where deptNo = "+id;
            PreparedStatement ps = DatabaseAccess.getPreparedStatement(sql);
            //ps.setInt(1, id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
	
	public void deleteEmp(int id){
        try {
            String sql = "delete from employee where emp_id = "+id;
            PreparedStatement ps = DatabaseAccess.getPreparedStatement(sql);
            //ps.setInt(1, id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
	
	public static List<User> getUser(String id){
        List<User> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DatabaseAccess.getPreparedStatement("select * from users where username =" + id).executeQuery();
            while(rs.next()){
            	User e = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                ls.add(e);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }
	
	public static List<User> getAllUser(){
        List<User> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DatabaseAccess.getPreparedStatement("select * from users").executeQuery();
            while(rs.next()){
            	User e = new User(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                ls.add(e);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }
	
	public static List<Employee> searchEmp(String s){
        List<Employee> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DatabaseAccess.getPreparedStatement("SELECT * FROM employee WHERE firstName LIKE '%"+ s +"%' OR lastName LIKE '%"+ s +"%' OR jobTitle LIKE '%"+ s +"%'").executeQuery();
            while(rs.next()){
            	Employee e = new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getInt(9),rs.getString(10));
                ls.add(e);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return ls;
    }
	
	}
