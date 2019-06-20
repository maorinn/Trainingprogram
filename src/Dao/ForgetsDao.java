package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



import Javaben.Users;
import Util.JDBCUtil;

/**
 * 此类专门用来写针对数据库users表的增删改查封装方法
 * @author seewo
 *
 */
public class ForgetsDao {
	
	//查询用户名和邮箱是否正确方法
	public boolean selectUser(String email,String username){
		boolean bl = false;
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConn();
			
			st = conn.createStatement();
			
			String sql = "insert into users(email,username) values(?,?)";
			
			rs = st.executeQuery(sql);
			
			if(rs.next()){
				bl = true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.closeAll(conn, st, rs);
		}
		
		return bl;
	}
	
	//查询用户名和密码是否正确方法
	public boolean selectUser2(String username,String email){
		boolean bl = false;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConn();
			
			//？在使用预编译对象时  相当于一个占位符
			String sql = "select * from users where email = ? and username = ? ";
			
			//PreparedStatement在Java当中称为预编译对象
			ps = conn.prepareStatement(sql);
			
			//给预编译中sql语句的?传值
			//set类型方法
			//第一个参数表示：你要给sql语句中第几个问号注入值
			//第二个参数表示：注入的值
			ps.setString(1, username);
			ps.setString(2, email);
			
			//执行查询操作
			rs = ps.executeQuery();
			
			if(rs.next()){
				bl = true;
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.closeAll(conn, ps, rs);
		}
		return bl;
	}
	
	//封装一个查询用户名是否存在的方法
	public boolean selectUserName(String username){
		boolean bl = false;
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConn();
			
			st = conn.createStatement();
			
			//编写查询用户名的sql语句
			String sql = "select * from users where userId='"+username+"'";
			//执行查询操作
			rs = st.executeQuery(sql);
			
			if(rs.next()){
				bl = true;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.closeAll(conn, st, rs);
		}
		return bl;
	}
	
	public boolean updateUsers(String username,String email,String password){
	boolean bl=false;
	Connection conn =null;
	PreparedStatement ps =null;
	
			try {
				 conn = JDBCUtil.getConn();
				
				 ps = conn.prepareStatement("update users set password=? where username=? and email=?");
				ps.setString(1, password);
				ps.setString(2, username);
				ps.setString(3, email);
				int i = ps.executeUpdate();
				if(i>0) {
					bl=true;
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCUtil.closeAll(conn, ps);
			}
			return bl;
			
		    
	}

	
}
