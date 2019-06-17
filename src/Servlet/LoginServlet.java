package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.UsersDao;
import Javaben.Users;

/**
 * ������������¼������
 */
@WebServlet("/LoginServlet.action")
public class LoginServlet extends HttpServlet {
	
	private static final String name = null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//�õ�ҳ�洫�����û���������
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		//ȥ���ݿ��ѯ��֤�û����������Ƿ���ȷ
		UsersDao dao = new UsersDao();
		Users user = dao.selectUser2(username, password);
		
		//�ж�  �����ȷ����ת����½�ɹ���ҳ�棨չʾԱ���б����ҳ��
		if(user!=null){
			
			//���浽session������
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			
			//��¼�ɹ���ҳ��url
			response.sendRedirect("---.html");
		}else{
            //����������ת����½ҳ��
			//������û���������µ�¼
			response.sendRedirect("---.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

