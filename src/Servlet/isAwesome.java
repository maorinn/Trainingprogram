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
 * �ж��û�����״̬
 */
@WebServlet("/isAwesome")
public class isAwesome extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		int postid = Integer.parseInt(request.getParameter("postid"));
		int ispraise = 0;//�Ƿ����
		int Numberoflikes =0;
			
		
		PraiseDao praiseDao = new PraiseDao();
		//��ȡ���ӵ����б�
		String amlist = praiseDao.getamlist(postid);
		if (amlist!=null&&!amlist.equals("")) {
			
		
		String[] praiselist = amlist.split("\\|");
		Numberoflikes = praiselist.length;
		System.out.println("��������"+praiselist);
		for (String c : praiselist) {
			if (c.equals(username)) {
				//�ж��Ƿ����
				ispraise = 1;
			}
		}
		//����������ʵ���෵��json
		likeStatus likeStatus = new likeStatus(ispraise, Numberoflikes);
		JSONObject jsonTeam = (JSONObject) JSON.toJSON(likeStatus);
		System.out.println(jsonTeam);
		response.getWriter().print(jsonTeam);
		}else {
			//�����Ϊ��
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
