package vo;

public class post {
 
	private String title;
	private String username;
	private String time;
	private String mine;
	public post() {
		super();
	}
	public post(String title, String username, String time, String mine) {
		super();
		this.title = title;
		this.username = username;
		this.time = time;
		this.mine = mine;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getMine() {
		return mine;
	}
	public void setMine(String mine) {
		this.mine = mine;
	}
	

}
