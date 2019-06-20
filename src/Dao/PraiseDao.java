package Dao;

import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Util.JDBCUtil;

public class PraiseDao{
	
    public boolean AddPraise(int postid,String username){
    	boolean c = false;
    	Connection conn = null;
		PreparedStatement pr = null;
    	try {
    		conn = JDBCUtil.getConn();
    		String sql ="insert into post(praise) values(?)";
    		//取出原有数据
    		String praiselist = this.getamlist(postid)+username+"|";
    		PreparedStatement ps = conn.prepareStatement(sql);
    		ps.setString(1, praiselist);
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
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				praise =  rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return praise;
	}
    
    
    //取消点赞方法
    public boolean Cancel(int postid,String username) {
		Connection conn = JDBCUtil.getConn();
		boolean c = false;
		//取出原有数据
		String praiselist = this.getamlist(postid);
		//删除他的点赞
		String replaceAll = praiselist.replaceAll(username+"|","");
		String sql ="insert into post(praise) values(?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, replaceAll);
			int i = ps.executeUpdate();
			if (i>0) {
				c = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c;
	}
    
    
}
