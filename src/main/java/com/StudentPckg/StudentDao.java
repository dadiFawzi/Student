package com.StudentPckg;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class StudentDao {


    public static Connection getConnection() {
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/Student";
        String username = "root";
        String password = "oussamatefo";


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        return conn;
    }

    public static int addStudent(Student s) throws SQLException {
        Connection con = getConnection();
        int status = 0;

        PreparedStatement ps = con.prepareStatement("insert into student(name,email,password) values(?,?,?)");
        ps.setString(1, s.getName());
        ps.setString(2, s.getEmail());
        ps.setString(3, s.getPassword());

        status = ps.executeUpdate();


        return status;
    }

    public static int modifyStudent(Student s) throws SQLException {
        Connection con = getConnection();
        int status = 0;

        PreparedStatement ps = con.prepareStatement("UPDATE student.student SET name = ?, email = ?, password = ? WHERE id = ?;");

ps.setString(1,s.getName());
ps.setString(2,s.getEmail());
ps.setString(3,s.getPassword());
ps.setInt(4,s.getId());
System.out.println(s.toString());
        status = ps.executeUpdate();


        return status;
    }

    public static int deleteStudent(Student s) throws SQLException {
        int status = 0;
        Connection con = getConnection();

        PreparedStatement ps = con.prepareStatement("delete from student where id=?");
        ps.setInt(1,s.getId());
        status = ps.executeUpdate();

        return status;

    }

    public static List<Student> getAllStudent() throws SQLException {
        List<Student> list = new LinkedList<>() ;
        Connection con = getConnection() ;
        PreparedStatement ps = con.prepareStatement("select * from student");

        ResultSet res = ps.executeQuery() ;
        while (res.next()){

            Student st = new Student() ;
            st.setId(res.getInt("id"));
            st.setName(res.getString("name"));
            st.setEmail(res.getString("email"));
            list.add(st);

        }

        return list ;
    }

    public static Student getStudent(int id ) throws SQLException {
        List<Student> list = new LinkedList<>() ;
        Student st= new Student() ;
        Connection con = getConnection() ;
        PreparedStatement ps = con.prepareStatement("select * from student where id=?");
        ps.setInt(1,id);
        ResultSet res = ps.executeQuery() ;
        while (res.next()){
            st.setId(res.getInt("id"));
            st.setName(res.getString("name"));
            st.setEmail(res.getString("email"));
            st.setPassword(res.getString("password"));
            list.add(st);
            System.out.println(st.getName());
        }
st=list.get(0);
        return st ;
    }

}