package Dao;

import java.util.List;

import vo.PostMineVo;
import vo.post;

public class text {
  public static void mian(String[]args){
	  int id=1;
	  PostMine dao=new PostMine();
	 List<PostMineVo> mix = dao.seleckUsersMine(id);
	 for(PostMineVo a:mix){
		 System.out.println(a);
	 }
	 }
}
