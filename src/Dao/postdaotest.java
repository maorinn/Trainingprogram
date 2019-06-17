package Dao;

import vo.post;

public class postdaotest {

	public static void main(String[] args) {
		postDao p = new postDao();
		post post = new post("ÊÇÊÇ", "111", "11", "11");
		int insert = p.insert(post);
		System.out.println(insert);

	}

}
