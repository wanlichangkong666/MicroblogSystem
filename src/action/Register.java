package action;

import java.io.File;
import java.util.List;
import java.util.Map;





import vo.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Register extends ActionSupport{
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
	public String execute() throws Exception{
		String head=getFileFileName();
		head="head/"+head;
		user.setHead(head);
		String usr=user.getUsername();
		String pwd=user.getPassword();
		String pwd1=user.getPassword();
		int age=user.getAge();
		String sex=user.getSex();
		if(usr.equals("")||usr==null){
			addFieldError("usr","用户名不能为空！");
		}else if(pwd.equals("")||pwd==null){
			addFieldError("pwd","密码不能为空");
		}else if(pwd1.equals("")||pwd1==null){
			addFieldError("pwd1","重复密码不能为空");
		}else if(!pwd.equals(pwd1)){
			addFieldError("pwd","两次输入的密码不同");
		}else if (age<1||age>150){
			addFieldError("age","年龄必须在0-150之间");
		}else if(sex.equals("")||sex==null){
			addFieldError("sex","性别没有填");
		}else if(head.equals("")||head==null){
			addFieldError("head","没有上传头像");
		}
		if(hasErrors()){
			return INPUT;
		}
		System.out.println(fileFileName);
		return SUCCESS;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
