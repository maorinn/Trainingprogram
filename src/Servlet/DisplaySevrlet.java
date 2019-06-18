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
	    //分页查询
	  	//页面会传有一个页码page
	  	//定义一个初始的页面显示行数
	  	int pageSize = 15;
	  	//获取页数
	    String page = request.getParameter("---");
	    //获取用户传的ID=？？？
	    String id = request.getParameter("---");
	    
	   /* //得到时间
	    post post = new post();
	    String time = post.getTime();*/
	    
	    //调用dao方法
	    UsersDao dao=new UsersDao();
	    //得到id的时间
	    /*
	     * 还没判断
	     * */
	    int time = dao.selectPostById(id);
	    
	    
	    //查询数据库表中的总行数
	    int countEmp = dao.countPost();
		System.out.println(countEmp);
	    
		//得出总页数
				int maxPage = 0;
				
				if(countEmp%pageSize>0){
					//有余数
					maxPage = (countEmp/pageSize) + 1;
				}else{
					//整除
					maxPage = countEmp/pageSize;
				}
	    
				//第一种。第一次进入查询，没有页码
				//实例方法
				/*
				 * 此方法有误
				 * 
				 * */
				Post post = new Post();
				if(page==null){
					//执行查询结果 
					List<Post> list = dao.selectPost(0, pageSize);
					request.setAttribute("page", 1);
					request.setAttribute("list", list);
					
				}else{
					//已经查询过并展示完，用户又在页面选中一个页码传过来
					//执行查询结果
					//公式：页数-1乘以行数
					List<Post> list = dao.selectPost((Integer.parseInt(page)-1)*pageSize, pageSize);
					
					
					request.setAttribute("page", Integer.parseInt(page));
					request.setAttribute("list", list);
					
				}
				//将总页数也存入请求作用域中
				request.setAttribute("maxPage", maxPage);
				
				//跳转到显示页面
				request.getRequestDispatcher("index.jsp").forward(request, response);
	    
	    
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
