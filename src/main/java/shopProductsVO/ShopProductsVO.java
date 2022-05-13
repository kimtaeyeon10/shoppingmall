package shopProductsVO;

public class ShopProductsVO {
	
	private String pcode;
	private String psize;
	private String panme;
	private int pcount;
	private int pprice;
	private String ptext;
	private String pimg;
	
	public ShopProductsVO() {
		// TODO Auto-generated constructor stub
	}

	public ShopProductsVO(String pcode, String psize, String panme, int pcount, int pprice, String ptext,
			String pimg) {
		super();
		this.pcode = pcode;
		this.psize = psize;
		this.panme = panme;
		this.pcount = pcount;
		this.pprice = pprice;
		this.ptext = ptext;
		this.pimg = pimg;
	}

	public ShopProductsVO(String pcode) {
		this.pcode = pcode;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getPsize() {
		return psize;
	}

	public void setPsize(String psize) {
		this.psize = psize;
	}

	public String getPanme() {
		return panme;
	}

	public void setPanme(String panme) {
		this.panme = panme;
	}

	public int getPcount() {
		return pcount;
	}

	public void setPcount(int pcount) {
		this.pcount = pcount;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public String getPtext() {
		return ptext;
	}

	public void setPtext(String ptext) {
		this.ptext = ptext;
	}

	public String getPimg() {
		return pimg;
	}

	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	
	
	
}
