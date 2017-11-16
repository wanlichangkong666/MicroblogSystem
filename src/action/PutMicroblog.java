package action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;









import vo.Microblog;
import vo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.MicroblogDao;
import dao.impl.MicroblogDaoImpl;

public class PutMicroblog extends ActionSupport{
	private Microblog microblog;



	public String execute() throws Exception
	{
		Map session=ActionContext.getContext().getSession();
		microblog.setUser((User)session.get("user"));
		Date date=new Date();
		Timestamp ts=new Timestamp(date.getTime());
		microblog.setTime(ts);
		MicroblogDao mDao=new MicroblogDaoImpl();
		mDao.add(microblog);
		return SUCCESS;
	}

	public Microblog getMicroblog() {
		return microblog;
	}

	public void setMicroblog(Microblog microblog) {
		this.microblog = microblog;
	}
}
