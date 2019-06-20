package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



import Javaben.Users;
import Util.JDBCUtil;

/**
 * ����ר������д������ݿ�users�����ɾ�Ĳ��װ����
 * @author seewo
 *
 */
public class ForgetsDao {
	
	//��ѯ�û����������Ƿ���ȷ����
	public boolean selectUser(String email,String username){
		boolean bl = false;
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConn();
			
			st = conn.createStatement();
			
			String sql = "insert into users(email,username) values(?,?)";
			
			rs = st.executeQuery(sql);
			
			if(rs.next()){
				bl = true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.closeAll(conn, st, rs);
		}
		
		return bl;
	}
	
	//��ѯ�û����������Ƿ���ȷ����
	public boolean selectUser2(String username,String email){
		boolean bl = false;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConn();
			
			//����ʹ��Ԥ�������ʱ  �൱��һ��ռλ��
			String sql = "select * from users where email = ? and username = ? ";
			
			//PreparedStatement��Java���г�ΪԤ�������
			ps = conn.prepareStatement(sql);
			
			//��Ԥ������sql����?��ֵ
			//set���ͷ���
			//��һ��������ʾ����Ҫ��sql����еڼ����ʺ�ע��ֵ
			//�ڶ���������ʾ��ע���ֵ
			ps.setString(1, username);
			ps.setString(2, email);
			
			//ִ�в�ѯ����
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
	
	//��װһ����ѯ�û����Ƿ���ڵķ���
	public boolean selectUserName(String username){
		boolean bl = false;
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConn();
			
			st = conn.createStatement();
			
			//��д��ѯ�û�����sql���
			String sql = "select * from users where userId='"+username+"'";
			//ִ�в�ѯ����
			rs = st.executeQuery(sql);
			
			if(rs.next()){
				bl = true;
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.closeAll(conn, st, rs);
		}
		return bl;
	}
	
	public boolean updateUsers(String username,String email,String password){
	boolean bl=false;
	Connection conn =null;
	PreparedStatement ps =null;
	
			try {
				 conn = JDBCUtil.getConn();
				
				 ps = conn.prepareStatement("update users set password=? where username=? and email=?");
				ps.setString(1, password);
				ps.setString(2, username);
				ps.setString(3, email);
				int i = ps.executeUpdate();
				if(i>0) {
					bl=true;
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCUtil.closeAll(conn, ps);
			}
			return bl;
			
		    
	}

	
}
