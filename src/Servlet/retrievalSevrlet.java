package Servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.retrievalDao;
import vo.Replier;

@WebServlet("/retrievalSevrlet")
public class retrievalSevrlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("postid");
        retrievalDao dao=new retrievalDao();
        List<Replier> list = dao.selectRetrievalAll(Integer.parseInt(id));
        if(list!=null){
        	request.setAttribute("hflist", list);
        	request.getRequestDispatcher("Postct.jsp").forward(request, response);
        }else {
			request.setAttribute("list", "«¿…≥∑¢£°£°£°");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
