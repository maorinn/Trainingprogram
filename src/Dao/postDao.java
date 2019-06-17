package Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.omg.CORBA.PUBLIC_MEMBER;

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
	}
