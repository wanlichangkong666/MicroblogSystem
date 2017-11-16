package base;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport{
	private List<File> head;
	private List<String> uploadFileName;
	public String execute() throws Exception
	{
		if(head!=null){
			for(int i=0;i<head.size();i++)
			{
				InputStream is= new FileInputStream(head.get(i));
				OutputStream os=new FileOutputStream("d:\\Upload\\"+getUploadFileName().get(i));
				byte buffer[] =new byte[1024];
				int count =0;
				while((count=is.read(buffer))>0){
					os.write(buffer,0,count);
				}
				os.close();
				is.close();
			
			}
		}
		return SUCCESS;
		
	}
	public List<File> getUpload() {
		return head;
	}
	public void setUpload(List<File> upload) {
		this.head = upload;
	}
	public List<String> getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(List<String> uploadFileName) {
		this.uploadFileName = uploadFileName;
	}


}
