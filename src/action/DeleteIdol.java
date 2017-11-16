package action;

import java.io.PrintWriter;
import java.util.List;
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

public class DeleteIdol extends ActionSupport{
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
		UserDao uDao=new UserDaoImpl();
		User user=uDao.findByUsername(username);
		Map session=ActionContext.getContext().getSession();
		User user1=(User)session.get("user");
		String username1=user1.getUsername();
		List<Fan> fans1=fDao.findByUsername(username);
		List<Fan> fans2=fDao.findByFusername(username);
		fDao.delete(fans1,username);
		fDao.delete(fans2,username1);
		out.print("<script>history.back(-1)</script>");
		return null;
	}

}
