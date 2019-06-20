package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import Dao.PraiseDao;
import Javaben.likeStatus;

/**
 * 判断用户点赞状态
 */
@WebServlet("/isAwesome")
public class isAwesome extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		int postid = Integer.parseInt(request.getParameter("postid"));
		int ispraise = 0;//是否点赞
		int Numberoflikes =0;
			
		
		PraiseDao praiseDao = new PraiseDao();
		//获取帖子点赞列表
		String amlist = praiseDao.getamlist(postid);
		if (amlist!=null&&!amlist.equals("")) {
			
		
		String[] praiselist = amlist.split("\\|");
		Numberoflikes = praiselist.length;
		System.out.println("点赞数量"+praiselist);
		for (String c : praiselist) {
			if (c.equals(username)) {
				//判断是否点赞
				ispraise = 1;
			}
		}
		//创建帖子赞实体类返回json
		likeStatus likeStatus = new likeStatus(ispraise, Numberoflikes);
		JSONObject jsonTeam = (JSONObject) JSON.toJSON(likeStatus);
		System.out.println(jsonTeam);
		response.getWriter().print(jsonTeam);
		}else {
			//如果赞为空
			likeStatus likeStatus = new likeStatus(0, 0);
			JSONObject jsonTeam = (JSONObject) JSON.toJSON(likeStatus);
			System.out.println(jsonTeam);
			response.getWriter().print(jsonTeam);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
