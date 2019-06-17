package Dao;

import java.sql.*;
import Javaben.Users;
import Util.JDBCUtil;


public class UsersDao {
	
	//查询用户名和密码是否正确方法
		public  boolean selecteUserName(String username,String password){
			boolean bl = false;
			Users Users = null;
			Connection conn = null;
			Statement st = null;
			ResultSet rs = null;
			Statement ps = null;
			try {
				conn = JDBCUtil.getConn();
				  //在使用预编译对象时，相当于一个占位符
				   String sql="select * from users where username=?  and password= ?";
				   ps=conn.prepareStatement(sql);
				   setString(1, username);
				   setString(2, password);
				   rs=ps.executeQuery(sql);
				   if (rs.next()) {					  				
					   Users = new Users();
					   bl = true;
					  
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}finally {
				JDBCUtil.closeAll(conn, ps, rs);
			}
		     	return bl;
		   }

		//查询用户名和密码是否正确方法
		public boolean selectUser2(String name,String password){
			boolean bl = false;
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			try {
				conn = JDBCUtil.getConn();				
				
				String sql = "select * from users where username=? and password= ?";
				
				//ps = conn.prepareStatement(sql);				
				//ps.setString(1, name);
				//ps.setString(2, password);
			
				
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
		
		//封装一个新增用户的方法（注册功能）
		public boolean RegisterUser(String name,String password,String email){
			boolean cc = false;
			int i=0;
			Connection conn = null;
			PreparedStatement pr = null;
			try {
				conn = JDBCUtil.getConn();
				System.out.println(conn);
				String sql = "insert into users(username,password,email) values(?,?,?)";
				 pr = conn.prepareStatement(sql);
				pr.setString(1, name);
				pr.setString(2, password);
				pr.setString(3, email);
				i = pr.executeUpdate();
				if (i>0) {
					cc=true;
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return cc;
		}
		//封装一个查询用户名是否存在的方法
		public boolean selectUserName(String name){
			boolean bl = false;
			Connection conn = null;
			Statement st = null;
			ResultSet rs = null;
			try {
				conn = JDBCUtil.getConn();
				
				st = conn.createStatement();
				
				
				String sql = "select * from users where username='"+name+"'";
			
				rs = st.executeQuery(sql);
				
				if(rs.next()){
					bl = true;
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return bl;
		}
		private void setString(int i, String name) {
			// TODO Auto-generated method stub
			
		}


}
