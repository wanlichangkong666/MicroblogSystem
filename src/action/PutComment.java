package action;

import java.sql.Timestamp;
import java.util.Date;
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
import vo.User;



public class PutComment extends ActionSupport{
	private Comment comment;
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	public String execute() throws Exception
	{
		Map session=ActionContext.getContext().getSession();
		comment.setUser((User)session.get("user"));
		MicroblogDao mDao=new MicroblogDaoImpl();
		Microblog microblog=mDao.findById((int)session.get("mid"));
		comment.setMicroblog(microblog);
		Date date=new Date();
		Timestamp ts=new Timestamp(date.getTime());
		comment.setTime(ts);
		CommentDao cDao=new CommentDaoImpl();
		cDao.add(comment);
		return SUCCESS;
		
	}
}
