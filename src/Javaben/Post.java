package Javaben;

public class Post {
	private String title;
	private String username;
	private String time;
	private String mine;
	private String scan;
	private String block;
	public Post() {
		super();
	}
	public Post(String title, String username, String time, String mine, String scan, String block) {
		super();
		this.title = title;
		this.username = username;
		this.time = time;
		this.mine = mine;
		this.scan = scan;
		this.block = block;
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
	public String getScan() {
		return scan;
	}
	public void setScan(String scan) {
		this.scan = scan;
	}
	public String getBlock() {
		return block;
	}
	public void setBlock(String block) {
		this.block = block;
	}
	@Override
	public String toString() {
		return "Post [title=" + title + ", username=" + username + ", time=" + time + ", mine=" + mine + ", scan="
				+ scan + ", block=" + block + "]";
	}
	
	
	
	

}
