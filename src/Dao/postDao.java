package Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.omg.CORBA.PUBLIC_MEMBER;

import Javaben.Post;
import Util.JDBCUtil;
import vo.post;


public class postDao {
 
	public List<String> post(String tille,String username,String time,String mine){
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		List<String> list =null;
		try {

			conn = JDBCUtil.getConn();
			
			st = conn.createStatement();
			
			
			String sql = "select * from ?";
			
			rs = st.executeQuery(sql);
			 list = new ArrayList<String>();			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.closeAll(conn, st, rs);
		}
		
		return list;
	}
	public int insert(post post){
		PreparedStatement ps =null;
		Connection conn = null;
		int i=0;
		try {
			 conn = JDBCUtil.getConn();
			 ps = conn.prepareStatement("insert into post(title,username,time,mine) values (?,?,?,?)");
			ps.setString(1,post.getTitle());
			ps.setString(2,post.getUsername());
			ps.setString(3,post.getTime());
			ps.setString(4,post.getMine());
			 i = ps.executeUpdate();
			if(i>0){
				System.out.println("true");
			}else{
				System.out.println("false");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.closeAll(conn, ps);
		}
		return i;
		
		
		
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
