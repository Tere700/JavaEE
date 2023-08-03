package tw.brad.apis;
 //類別用來存資料 重點在屬性
public class Member {
	private int id; //屬性全小寫
	private String account, realname, birthday;
	private boolean isMale;
	
	public Member() {}	
	public Member(int id, String account, 
			String realname, String birthday) {
		this.id = id;
		this.account = account;
		this.realname = realname;
		this.birthday = birthday;
		//購物車 屬性出發的物件 物件的方式存資料
	}
	
	public boolean isMale() {
		return isMale;
	}
	public void setMale(boolean isMale) {
		this.isMale = isMale;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
	@Override
	public String toString() {
		return String.format("%s:%s", account,realname);
	}
	
}
