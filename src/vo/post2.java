package vo;

public class post2 {
   private String title;
   private String username;
   private String time;
   private String scan;
public post2() {
	super();
}
public post2(String title, String username, String time, String scan) {
	super();
	this.title = title;
	this.username = username;
	this.time = time;
	this.scan = scan;
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
public String getScan() {
	return scan;
}
public void setScan(String scan) {
	this.scan = scan;
}
@Override
public String toString() {
	return "post2 [title=" + title + ", username=" + username + ", time=" + time + ", scan=" + scan + "]";
}
   
   
}
