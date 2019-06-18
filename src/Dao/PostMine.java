package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Util.JDBCUtil;
import vo.PostMineVo;
public class PostMine {
//Ìû×ÓÄÚÈÝ    
public PostMineVo seleckUsersMine(String id) {
	Connection conn = null;
	PreparedStatement ps =null;
	ResultSet rs = null;
	PostMineVo mine=null;
	try {

		conn = JDBCUtil.getConn();
		String sql = "select * from post where block=?";
		ps= conn.prepareStatement(sql);
		ps.setString(1, id);
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

}
