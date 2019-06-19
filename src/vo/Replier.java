package vo;

public class Replier {
    private int id;
    private String username;
    private String calss;
    private String content;
    private String time;
	public Replier() {
		super();
	}
	public Replier(int id, String username, String calss, String content, String time) {
		super();
		this.id = id;
		this.username = username;
		this.calss = calss;
		this.content = content;
		this.time = time;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCalss() {
		return calss;
	}
	public void setCalss(String calss) {
		this.calss = calss;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Replier [id=" + id + ", username=" + username + ", calss=" + calss + ", content=" + content + ", time="
				+ time + "]";
	}
    
}
