package Servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.PostReplyDao;
import Dao.postDao;
import vo.post;
import vo.reply;

/**
 * Servlet implementation class PostReply
 */
@WebServlet("/PostReply")
public class PostReply extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//处理中文乱码
				request.setCharacterEncoding("utf-8");				
				
				Date date = new Date();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
				String time = sdf.format(date);
				String postid = request.getParameter("postid");
				String username = request.getParameter("username");
				String content = request.getParameter("content");
				reply reply = new reply(postid, time, username,content );
				PostReplyDao dao = new PostReplyDao();
				boolean insert = dao.seleckPostReply(reply);
				if (insert) {
					System.out.println("回帖成功");
				}else {
					System.out.println("回帖失败");
				}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
