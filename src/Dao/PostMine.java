package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Javaben.Post;
import Util.JDBCUtil;
import vo.PostMineVo;

public class PostMine {
//帖子内容    
public PostMineVo seleckUsersMine(int id) {
	Connection conn = null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	PostMineVo mine=null;
	try {

		conn = JDBCUtil.getConn();
		String sql = "select * from post where postid=?";
		ps= conn.prepareStatement(sql);
		ps.setInt(1, id);
		rs=ps.executeQuery();
		while (rs.next()) {
			mine = new PostMineVo();
			mine.setId(rs.getInt("postid"));
			mine.setTitle(rs.getString("title"));
			mine.setUsername(rs.getString("username"));
			mine.setTime(rs.getString("time"));
			mine.setMine(rs.getString("mine"));
			mine.setScan(rs.getString("scan"));
			mine.setBlock(rs.getString("block"));			
			
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		JDBCUtil.closeAll(conn, ps, rs);
	}
	
	return mine;
}

  //封装一个根据id查找帖子标题 名字 时间 浏览数
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
			post.setScan(rs.getString("scan"));
			post.setScan(rs.getString("scan"));
			post.setScan(rs.getString("block"));
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
