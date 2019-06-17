package Dao;

import Javaben.Users;

public class UserDaoTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
      UsersDao dao = new UsersDao();
      Users selecteUserName = dao.selecteUserName("120","123","2@2.com");
      System.out.println(selecteUserName);
	}

}
