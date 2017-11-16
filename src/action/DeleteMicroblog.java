package action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.CommentDao;
import dao.MicroblogDao;
import dao.impl.CommentDaoImpl;
import dao.impl.MicroblogDaoImpl;
import vo.Comment;
import vo.Microblog;

public class DeleteMicroblog extends ActionSupport {
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	private List<Microblog> list;
	public List<Microblog> getList() {
		return list;
	}
	public void setList(List<Microblog> list) {
		this.list = list;
	}
	private Microblog microblog;
	private Comment comment;
	public Microblog getMicroblog() {
		return microblog;
	}

	public void setMicroblog(Microblog microblog) {
		this.microblog = microblog;
	}

	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}

	public String execute() throws Exception{
		Map session=ActionContext.getContext().getSession();
		MicroblogDao mDao=new MicroblogDaoImpl();
		CommentDao cDao=new CommentDaoImpl();
		cDao.delete(id);
		mDao.delete(id);
		return SUCCESS;
	}
}
