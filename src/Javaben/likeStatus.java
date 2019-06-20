package Javaben;
/**
 * 点赞状态实体类
 */
public class likeStatus {
	private int ispraise = 0;//点赞状态
	private int Numberoflikes = 0;//点赞数
	public int getIspraise() {
		return ispraise;
	}
	public void setIspraise(int ispraise) {
		this.ispraise = ispraise;
	}
	public int getNumberoflikes() {
		return Numberoflikes;
	}
	public void setNumberoflikes(int numberoflikes) {
		Numberoflikes = numberoflikes;
	}
	public likeStatus(int ispraise, int numberoflikes) {
		super();
		this.ispraise = ispraise;
		this.Numberoflikes = numberoflikes;
	}
	@Override
	public String toString() {
		return "likeStatus [ispraise=" + ispraise + ", Numberoflikes=" + Numberoflikes + "]";
	}
	
}
