package Dao;

public class ForgetsDaotext {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ForgetsDao dao = new ForgetsDao();
		boolean updateUsers = dao.updateUsers("120", "123", "123");
		System.out.println(updateUsers);
		

	}

}
