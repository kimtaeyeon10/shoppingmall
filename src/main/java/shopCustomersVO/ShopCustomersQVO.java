package shopCustomersVO;

public class ShopCustomersQVO {
	
	private String cpass;
	private String cques;
	private String canswer;
	
	
	public ShopCustomersQVO(String cpass, String cques, String canswer) {
		this.cpass = cpass;
		this.cques = cques;
		this.canswer = canswer;
	}
	public ShopCustomersQVO() {
		
	}
	
	public String getCpass() {
		return cpass;
	}
	public void setCpass(String cpass) {
		this.cpass = cpass;
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
