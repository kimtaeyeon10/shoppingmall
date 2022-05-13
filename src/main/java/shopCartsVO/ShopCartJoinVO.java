package shopCartsVO;

public class ShopCartJoinVO {
	
	private String ccid;
	private String pimg;
	private String pname;
	private String psize;
	private int pprice;
	private String pcode;
	
	public ShopCartJoinVO() {
		
	}

	public ShopCartJoinVO(String ccid, String pimg, String pname, String psize, int pprice) {
		this.ccid = ccid;
		this.pimg = pimg;
		this.pname = pname;
		this.psize = psize;
		this.pprice = pprice;
	}

	public ShopCartJoinVO(String ccid, int pprice, String pcode) {
		this.ccid = ccid;
		this.pprice = pprice;
		this.pcode = pcode;
	}

	public String getCcid() {
		return ccid;
	}

	public void setCcid(String ccid) {
		this.ccid = ccid;
	}

	public String getPimg() {
		return pimg;
	}

	public void setPimg(String pimg) {
		this.pimg = pimg;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPsize() {
		return psize;
	}

	public void setPsize(String psize) {
		this.psize = psize;
	}

	

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	
	
	
}
