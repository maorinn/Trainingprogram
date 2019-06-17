package Javaben;

import java.sql.Connection;

import com.mysql.jdbc.JDBC42CallableStatement;

import Util.JDBCUtil;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub  
		Connection conn = JDBCUtil.getConn();
		for(int i=1;i<=10;i++) {
			System.out.println(conn);
		}
		

	}

}
