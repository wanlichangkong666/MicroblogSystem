package action;

import java.util.List;
import java.util.Map;

import vo.Comment;
import vo.Microblog;
import vo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.CommentDao;
import dao.MicroblogDao;
import dao.impl.CommentDaoImpl;
import dao.impl.MicroblogDaoImpl;

public class OtherComment extends ActionSupport {
	private int id;
	private List<Comment> list;
	
	public List<Comment> getList() {
		return list;
	}
	public void setList(List<Comment> list) {
		this.list = list;
	}
	private Comment comment;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
		Microblog microblog=mDao.findById(id);
		Comment comment=(Comment) session.get("comment");
		int id=microblog.getId();
		list=cDao.findById(id);
		return SUCCESS;
	}
}
