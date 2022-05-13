package shopCustomersVO;

public class ShopCustomersVO {
	private String cid;
	private String cpass;
	private String cname;
	private String ctel;
	private String caddress;
	private String cques;
	private String canswer;
	
	public ShopCustomersVO(String cid, String cpass, String cname, String ctel, String caddress, String cques,
			String canswer) {
		super();
		this.cid = cid;
		this.cpass = cpass;
		this.cname = cname;
		this.ctel = ctel;
		this.caddress = caddress;
		this.cques = cques;
		this.canswer = canswer;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getCpass() {
		return cpass;
	}

	public void setCpass(String cpass) {
		this.cpass = cpass;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCtel() {
		return ctel;
	}

	public void setCtel(String ctel) {
		this.ctel = ctel;
	}

	public String getCaddress() {
		return caddress;
	}

	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}

	public String getCques() {
		return cques;
	}

	public void setCques(String cques) {
		this.cques = cques;
	}

	public String getCanswer() {
		return canswer;
	}

	public void setCanswer(String canswer) {
		this.canswer = canswer;
	}

	

}
