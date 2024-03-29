package Dao;

import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sun.crypto.provider.RSACipher;

import Util.JDBCUtil;

public class PraiseDao{
	
    public boolean AddPraise(int postid,String username){
    	boolean c = false;
    	Connection conn = null;
		PreparedStatement pr = null;
    	try {
    		conn = JDBCUtil.getConn();
    		String sql ="UPDATE post set praise = ? where postid=?";
    		//取出原有数据
    		String praiselist = this.getamlist(postid);
    		String newpr = username+"|";//新的
    		if (praiselist!=null) {
    			newpr = this.getamlist(postid)+newpr;
			}
    		PreparedStatement ps = conn.prepareStatement(sql);
    		ps.setString(1, newpr);
    		ps.setInt(2, postid);
    		int i = ps.executeUpdate();
    		if (i>0) {
				c = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
    	return c;
    }
    
    //获取点赞列表
    
    public String getamlist(int postid) {
    	
		ArrayList<String> list = new ArrayList<String>();
		Connection conn =  JDBCUtil.getConn();
		String sql = "select praise from post where postid=?";
		String praise = null; 
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, postid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				praise =  rs.getString(1);
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
		return praise;
	}
    
    
    //取消点赞方法
    public boolean Cancel(int postid,String username) {
		Connection conn = JDBCUtil.getConn();
		boolean c = false;
		PreparedStatement ps = null;
		//取出原有数据
		String praiselist = this.getamlist(postid);
		//删除他的点赞
		String replaceAll = praiselist.replaceAll(username+"\\|","");
		String sql ="UPDATE post set praise = ? where postid=?";
		try {
			 ps = conn.prepareStatement(sql);
			ps.setString(1, replaceAll);
			ps.setInt(2, postid);
			int i = ps.executeUpdate();
			if (i>0) {
				c = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
				JDBCUtil.closeAll(conn, ps);
		}
		return c;
	}
    
    
}
