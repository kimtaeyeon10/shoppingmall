package shopSalesVO;
import java.util.Date;

public class ShopSalesVO {
	
	private String sid;
	private Date sdate;
	private String spcode;
	private String scount;
	private int sprice;
	
	public ShopSalesVO() {
		// TODO Auto-generated constructor stub
	}

	public ShopSalesVO(String sid, Date sdate, String spcode, String scount, int sprice) {
		super();
		this.sid = sid;
		this.sdate = sdate;
		this.spcode = spcode;
		this.scount = scount;
		this.sprice = sprice;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public Date getSdate() {
		return sdate;
	}

	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}


	public String getSpname() {
		return spcode;
	}

	public void setSpname(String spname) {
		this.spcode = spname;
	}

	public String getScount() {
		return scount;
	}

	public void setScount(String scount) {
		this.scount = scount;
	}

	public int getSprice() {
		return sprice;
	}

	public void setSprice(int sprice) {
		this.sprice = sprice;
	}
	
	
	
}
