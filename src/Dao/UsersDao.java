package Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import Javaben.Post;
import Javaben.Users;
import Util.JDBCUtil;


public class UsersDao {
	
	//查询用户名和密码是否正确方法
		public  Users selecteUserName(String username, String email, String password){
			boolean bl = false;
			Users Users = null;
			Connection conn = null;
			Statement st = null;
			ResultSet rs = null;
			PreparedStatement ps = null;
			try {
				conn = JDBCUtil.getConn();
				  //在使用预编译对象时，相当于一个占位符
				   String sql="select * from users where username=? and password= ? or email = ? and password = ?";
				   ps=conn.prepareStatement(sql);
				   ps.setString(1, username);
				   ps.setString(2, password);
				   ps.setString(3, email);
				   ps.setString(4, password);
				   rs=ps.executeQuery();
				   if (rs.next()) {			  				
					   Users = new Users();
					   Users.setEmail(rs.getString("username"));
					   Users.setEmail(rs.getString("email"));
					   Users.setPassword(rs.getString("password"));
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}finally {
				JDBCUtil.closeAll(conn, ps, rs);
			}
		     	return Users;
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


		//执行封装一个分页查询
		public List<Post> selectPost(int page,int pageSize){
			List<Post> list = new ArrayList<Post>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = JDBCUtil.getConn();
				
				String sql = "select * from post limit ?,?";
				
				ps = conn.prepareStatement(sql);
				
				ps.setInt(1, page);
				ps.setInt(2, pageSize);
			
				
				rs=ps.executeQuery();
				while(rs.next()){
					Post post = new Post();
					post.setId(rs.getInt("postid"));
					post.setTitle(rs.getString("title"));
					post.setUsername(rs.getString("username"));
					post.setTime(rs.getString("time"));
					post.setTime(rs.getString("mine"));
					post.setScan(rs.getString("scan"));
					post.setBlock(rs.getString("block"));
					list.add(post);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCUtil.closeAll(conn, ps, rs);
				
			}
			return list;
			
		}
		
		//根据id查询时间
		public int selectPostById(String time){
			int i=0;
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = JDBCUtil.getConn();
				
				String sql = "select time from post where id=?";
				
				ps = conn.prepareStatement(sql);
				
				ps.setString(1, time);;
			
				
				rs=ps.executeQuery();
				while(rs.next()){
					if(i>0){
						i = rs.getInt(i);
					}
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCUtil.closeAll(conn, ps, rs);
				
			}
			return i;
			
		}
		
		//计数
		public int countPost(){
			int i = 0;
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = JDBCUtil.getConn();
				
				String sql = "select count(*) from post";
				
				ps = conn.prepareStatement(sql);
				
				rs = ps.executeQuery();
				
				if(rs.next()){
					i = rs.getInt(1);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCUtil.closeAll(conn, ps, rs);
			}
			return i;
			
		}
		
		
		
		
		//封装一个根据ID查询帖子
		public List<Post> selectPost(int id){
			List<Post> list = new ArrayList<Post>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			try {
				conn = JDBCUtil.getConn();
				
				String sql = "select * from post where postid=?";
				
				ps = conn.prepareStatement(sql);
				
				ps.setInt(1, id);
				
			
				
				rs=ps.executeQuery();
				while(rs.next()){
					Post post = new Post();
					post.setTitle(rs.getString("title"));
					post.setUsername(rs.getString("username"));
					post.setTime(rs.getString("time"));
					post.setTime(rs.getString("mine"));
					post.setScan(rs.getString("scan"));
					post.setBlock(rs.getString("block"));
					list.add(post);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCUtil.closeAll(conn, ps, rs);
				
			}
			return list;
			
		}
		
}
