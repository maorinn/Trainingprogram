package Dao;

import java.sql.*;
import Javaben.Users;
import Util.JDBCUtil;


public class UsersDao {
	
	//��ѯ�û����������Ƿ���ȷ����
		public  boolean selecteUserName(String username,String password){
			boolean bl = false;
			Users Users = null;
			Connection conn = null;
			Statement st = null;
			ResultSet rs = null;
			Statement ps = null;
			try {
				conn = JDBCUtil.getConn();
				  //��ʹ��Ԥ�������ʱ���൱��һ��ռλ��
				   String sql="select * from users where username=?  and password= ?";
				   ps=conn.prepareStatement(sql);
				   setString(1, username);
				   setString(2, password);
				   rs=ps.executeQuery(sql);
				   if (rs.next()) {					  				
					   Users = new Users();
					   bl = true;
					  
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}finally {
				JDBCUtil.closeAll(conn, ps, rs);
			}
		     	return bl;
		   }

		//��ѯ�û����������Ƿ���ȷ����
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
		
		//��װһ�������û��ķ�����ע�Ṧ�ܣ�
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
		//��װһ����ѯ�û����Ƿ���ڵķ���
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


}
