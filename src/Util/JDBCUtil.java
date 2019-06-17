package Util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.sql.DataSource;

import com.alibaba.druid.pool.DruidDataSourceFactory;


public class JDBCUtil {

	private static DataSource ds;
	
	//静态代码块
	static{
        try {
			InputStream is = JDBCUtil.class.getClassLoader().getResourceAsStream(".\\Util\\dr.properties");
			
			Properties pr = new Properties();
			
			pr.load(is);
			
			ds = DruidDataSourceFactory.createDataSource(pr);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
	/*
	 * 获取连接对象
	 */
	public static Connection getConn(){
		Connection conn = null;
		try {
			System.out.println(ds.hashCode());
			
			conn = ds.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	
	/*
	 * 关闭连接
	 */
	public static void closeAll(Connection conn,Statement st){
		try {
			//关闭Statement对象
			if(st!=null){
				st.close();
			}
			//关闭Connection对象
			if(conn!=null){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void closeAll(Connection conn,Statement st,ResultSet rs){
		
		try {
			//关闭ResultSet对象
			if(rs!=null){
				rs.close();
			}
			
			//关闭Statement对象
			if(st!=null){
				st.close();
			}
			//关闭Connection对象
			if(conn!=null){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
