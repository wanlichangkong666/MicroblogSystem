package action;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import vo.Comment;
import vo.Microblog;

import com.opensymphony.xwork2.ActionSupport;

import dao.CommentDao;
import dao.MicroblogDao;
import dao.impl.CommentDaoImpl;
import dao.impl.MicroblogDaoImpl;

public class Welcome extends ActionSupport{

	private List<Microblog> list;
	public List<Microblog> getList() {
		return list;
	}

	public void setList(List<Microblog> list) {
		this.list = list;
	}
	public String execute() throws Exception {
		MicroblogDao mDao=new MicroblogDaoImpl();
		list=mDao.findAll();
		
		return SUCCESS;
	}
}
