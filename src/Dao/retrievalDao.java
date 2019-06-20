package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Javaben.Post;
import Util.JDBCUtil;
import vo.Replier;

public class retrievalDao {
	//封装一个根据ID查询帖子
	public List<Replier> selectRetrievalAll(int id){
		List<Replier> list = new ArrayList<Replier>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = JDBCUtil.getConn();
			
			String sql = "select * from replier where postid=?";
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, id);
			
			rs=ps.executeQuery();
			while(rs.next()){
				Replier rep = new Replier();
				rep.setUsername(rs.getString("username"));
				rep.setCalss(rs.getString("class"));
				rep.setContent(rs.getString("content"));
				rep.setTime(rs.getString("time"));
				list.add(rep);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.closeAll(conn, ps, rs);
		}
		return list;
		
	}
}
