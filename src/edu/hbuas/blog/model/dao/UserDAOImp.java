package edu.hbuas.blog.model.dao;

import edu.hbuas.blog.model.javabean.Users;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAOImp  extends BaseDAOImp implements  UserDAO{
    @Override
    public Users login(String username, String password) {
        String loginSQL="select *  from  users where username=? and password=?";
        Users u=null;
        try {
            PreparedStatement pre=getPre(loginSQL);
            pre.setString(1,username);
            pre.setString(2,password);
            ResultSet rs= pre.executeQuery();
            if(rs.next()) {
              u=new Users();
              u.setAge(rs.getInt("age"));
              u.setSex(rs.getInt("sex"));
              u.setUserid(rs.getInt("userid"));
              u.setNickname(rs.getString("nickname"));
              u.setImage(rs.getString("image"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return u;
    }

    @Override
    public Users login(String username) {
        String loginSQL="select *  from  users where username=?";
        Users u=null;
        try {
            PreparedStatement pre=getPre(loginSQL);
            pre.setString(1,username);
            ResultSet rs= pre.executeQuery();
            if(rs.next()) {
                u=new Users();
                u.setAge(rs.getInt("age"));
                u.setSex(rs.getInt("sex"));
                u.setUserid(rs.getInt("userid"));
                u.setNickname(rs.getString("nickname"));
                u.setImage(rs.getString("image"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return u;
    }

    @Override
    public boolean register(Users user) {
        String loginSQL="insert into users(username,password,nickname,sex,age,image,level) values(?,?,?,?,?,?,0)";
       boolean result=false;
        try {
            PreparedStatement pre=getPre(loginSQL);
            pre.setString(1,user.getUsername());
            pre.setString(2 ,user.getPassword());
            pre.setString(3 ,user.getNickname());
            pre.setLong(4 ,user.getSex());
            pre.setLong(5 ,user.getAge());
            pre.setString(6,user.getImage());
            result=pre.executeUpdate()>0?true:false;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    @Override
    public boolean checkUserExists(String username) {
        String sql="select 1 from  users where username=?";
        boolean result=false;
        ResultSet rs=null;
        try {
            PreparedStatement pre=getPre(sql);
            pre.setString(1,username);
            rs=pre.executeQuery();
            result=rs.next()?true:false;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}
