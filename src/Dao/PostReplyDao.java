package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Util.JDBCUtil;
import vo.PostMineVo;
import vo.post;
import vo.reply;

public class PostReplyDao {
	public boolean seleckPostReply(reply i) {
		Connection conn = null;
		PreparedStatement ps =null;
		ResultSet rs = null;
		boolean mine=false;
		try {

			conn = JDBCUtil.getConn();
			String sql = "insert into replier(postid,username,content,time) values(?,?,?,?)";
			ps= conn.prepareStatement(sql);
			int postid = Integer.parseInt(i.getPostid());
			ps.setInt(1, postid);
			int cc =ps.executeUpdate();
			if (cc>0) {
				mine = true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.closeAll(conn, ps, rs);
		}
		
		return mine;
	}
}
