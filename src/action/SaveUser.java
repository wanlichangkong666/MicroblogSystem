package action;



import java.io.File;
import java.util.List;

import vo.User;

import com.opensymphony.xwork2.ActionSupport;

import dao.UserDao;
import dao.impl.UserDaoImpl;




public class SaveUser extends ActionSupport{
	private User user;
	private File file;
	private String fileFileName;
	
	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public String execute() throws Exception{
		UserDao uDao=new UserDaoImpl();
		uDao.add(user);
		return SUCCESS;
	}
}
