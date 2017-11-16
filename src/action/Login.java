package action;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import vo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.UserDao;
import dao.impl.UserDaoImpl;

public class Login extends ActionSupport{
	private String username;			//用户名
	private String password;			//密码
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	//上述属性的set和get方法
	public String execute() throws Exception {
		Map session=ActionContext.getContext().getSession();
		UserDao userDao=new UserDaoImpl();
		User u=userDao.findByUsername(username);
		HttpServletResponse response = null;
		response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		if(u!=null)
		{
			session.put("have", 0);
			session.put("user", u);
			return SUCCESS;
		}
		else {
			out.print("<script language='javascript'>alert('用户名或密码错误！');window.location='login.jsp';</script>");
			return null;
		}
		
	}

}
