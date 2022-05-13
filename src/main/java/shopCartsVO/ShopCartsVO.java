package shopCartsVO;

public class ShopCartsVO {

	private String ccid;
	private String cpcode;
	private String cpname;

	public ShopCartsVO() {
		
	}
	public ShopCartsVO(String ccid, String cpcode, String cpname) {
		this.ccid = ccid;
		this.cpcode = cpcode;
		this.cpname = cpname;
	}
	public String getCcid() {
		return ccid;
	}
	public void setCcid(String ccid) {
		this.ccid = ccid;
	}
	public String getCpcode() {
		return cpcode;
	}
	public void setCpcode(String cpcode) {
		this.cpcode = cpcode;
	}
	public String getCpname() {
		return cpname;
	}
	public void setCpname(String cpname) {
		this.cpname = cpname;
	}
	
	
	
}
