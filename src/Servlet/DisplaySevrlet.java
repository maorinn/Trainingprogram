package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.UsersDao;
import Javaben.Post;

@WebServlet("/DisplaySevrlet")
public class DisplaySevrlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    request.setCharacterEncoding("utf-8");
	    //��ҳ��ѯ
	  	//ҳ��ᴫ��һ��ҳ��page
	  	//����һ����ʼ��ҳ����ʾ����
	  	int pageSize = 15;
	  	//��ȡҳ��
	    String page = request.getParameter("---");
	    //��ȡ�û�����ID=������
	    String id = request.getParameter("---");
	    
	   /* //�õ�ʱ��
	    post post = new post();
	    String time = post.getTime();*/
	    
	    //����dao����
	    UsersDao dao=new UsersDao();
	    //�õ�id��ʱ��
	    /*
	     * ��û�ж�
	     * */
	    int time = dao.selectPostById(id);
	    
	    
	    //��ѯ���ݿ���е�������
	    int countEmp = dao.countPost();
		System.out.println(countEmp);
	    
		//�ó���ҳ��
				int maxPage = 0;
				
				if(countEmp%pageSize>0){
					//������
					maxPage = (countEmp/pageSize) + 1;
				}else{
					//����
					maxPage = countEmp/pageSize;
				}
	    
				//��һ�֡���һ�ν����ѯ��û��ҳ��
				//ʵ������
				/*
				 * �˷�������
				 * 
				 * */
				Post post = new Post();
				if(page==null){
					//ִ�в�ѯ��� 
					List<Post> list = dao.selectPost(0, pageSize);
					request.setAttribute("page", 1);
					request.setAttribute("list", list);
					
				}else{
					//�Ѿ���ѯ����չʾ�꣬�û�����ҳ��ѡ��һ��ҳ�봫����
					//ִ�в�ѯ���
					//��ʽ��ҳ��-1��������
					List<Post> list = dao.selectPost((Integer.parseInt(page)-1)*pageSize, pageSize);
					
					
					request.setAttribute("page", Integer.parseInt(page));
					request.setAttribute("list", list);
					
				}
				//����ҳ��Ҳ����������������
				request.setAttribute("maxPage", maxPage);
				
				//��ת����ʾҳ��
				request.getRequestDispatcher("index.jsp").forward(request, response);
	    
	    
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
