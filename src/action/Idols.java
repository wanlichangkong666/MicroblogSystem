package action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import vo.Fan;
import vo.User;
import dao.FanDao;
import dao.MicroblogDao;
import dao.impl.FanDaoImpl;
import dao.impl.MicroblogDaoImpl;

public class Idols extends ActionSupport {
	private List<Fan> list;
	public List<Fan> getList() {
		return list;
	}
	public void setList(List<Fan> list) {
		this.list = list;
	}
	public String execute() throws Exception {
		Map session=ActionContext.getContext().getSession();
		FanDao fDao=new FanDaoImpl();
		User user=(User)session.get("user");
        list=fDao.findByFusername(user.getUsername());
        return SUCCESS;
	}
}
