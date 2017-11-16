package action;


import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import vo.Fan;
import vo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.FanDao;
import dao.UserDao;
import dao.impl.FanDaoImpl;
import dao.impl.UserDaoImpl;


public class AddIdol extends ActionSupport {
	private String username;
	private int have;
	public int getHave() {
		return have;
	}

	public void setHave(int have) {
		this.have = have;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	public String execute() throws Exception {
		HttpServletResponse response = null;
		response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		FanDao fDao=new FanDaoImpl();
		Fan fan=new Fan();
		UserDao uDao=new UserDaoImpl();
		
		User user=uDao.findByUsername(username);
		fan.setUserByUsername(user);
		Map session=ActionContext.getContext().getSession();
		fan.setUserByFusername((User)session.get("user"));
		fDao.add(fan);
		session.put("have",1);
		out.print("<script>history.back(-1)</script>");
		return null;
	}
}
