package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.PraiseDao;

/**
 * ���޹���
 */
@WebServlet("/awesomes")
public class awesomes extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		int postid =  Integer.parseInt(request.getParameter("postid"));
		String username = request.getParameter("username");
		boolean ispraise = false;//�Ƿ����
		int Numberoflikes = 0;
		System.out.println("������");
		if (username==null||username.equals("")) {
			response.getWriter().println("�㻹δ��½��");
		}else {
			PraiseDao praiseDao = new PraiseDao();
			String praise = praiseDao.getamlist(postid);
			System.out.println(praise);
			//�ж������Ƿ��һ�λ���
			if (praise!=null&&!praise.equals("")) {
				String[] praiselist = praise.split("\\|");
				//��ȡ��������
				System.out.println("��Ϊ��");
				Numberoflikes = praiselist.length;
				for (String c : praiselist) {
					System.out.println("�û�����"+c);
					if (c.equals(username)) {
						//�ж��Ƿ����
						
						ispraise = true;
					}
				}
			}
			
			
			//û�е���
			if (!ispraise) {
				boolean addPraise = praiseDao.AddPraise(postid, username);
				if (addPraise) {
					response.getWriter().println("���޳ɹ�");
				}else {
					response.getWriter().println("δ֪����");
				}
			}else {
				//�����ˣ�ȡ������
				boolean cancel = praiseDao.Cancel(postid, username);
				if (cancel) {
					response.getWriter().println("ȡ������");
				}else {
					response.getWriter().println("δ֪����");
				}
			}
		
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
