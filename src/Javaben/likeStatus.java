package Javaben;
/**
 * ����״̬ʵ����
 */
public class likeStatus {
	private int ispraise = 0;//����״̬
	private int Numberoflikes = 0;//������
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
