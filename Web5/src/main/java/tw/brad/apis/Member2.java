package tw.brad.apis;
 //類別用來存資料 重點在屬性
public class Member2 {
	private int id; //屬性全小寫
	private String account, realName, birthday;
	private boolean isMale;
	
	public Member2() {}	
	public Member2(int id, String account, 
			String realName, String birthday) {
		this.id = id;
		this.account = account;
		this.realName = realName;
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
	
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
	
}
