package base;

public class Page {
	private int currPage=1;
	private int pageSize=5;
	public Page(){
		currPage=1;
		pageSize=5;
	}
	public Page(int currPage,int pageSize){
		this.currPage=currPage;
		this.pageSize=pageSize;
	}
	public int getCurrPage(){
		return currPage;
	}
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public int getPagesize() {
		return pageSize;
	}
	public void setPagesize(int pagesize) {
		this.pageSize = pageSize;
	}


}
