package vo;

public class reply {
	private String postid;
	private String time;
	private String username;
	private String content;
	public reply() {
		super();
	}
	public reply(String postid, String time, String username, String content) {
		super();
		this.postid = postid;
		this.time = time;
		this.username = username;
		this.content = content;
	}
	public String getPostid() {
		return postid;
	}
	public void setPostid(String postid) {
		this.postid = postid;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	

}
