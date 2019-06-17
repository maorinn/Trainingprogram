package Util;

import java.sql.Connection;

public class text {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection conn = JDBCUtil.getConn();
		System.out.println(conn);

	}

}
