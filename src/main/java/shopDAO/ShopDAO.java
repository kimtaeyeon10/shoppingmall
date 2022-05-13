package shopDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.apache.naming.java.javaURLContextFactory;

import shopCartsVO.ShopCartJoinVO;
import shopCartsVO.ShopCartsVO;
import shopCustomersVO.ShopCustomersQVO;
import shopCustomersVO.ShopCustomersVO;
import shopDBConn.ShopDBConn;
import shopProductsVO.ShopProductsVO;
import shopSalesVO.ShopSalesVO;

public class ShopDAO {

	private Connection con;
	PreparedStatement pshrt = null;
	ResultSet rs = null;

	public ShopDAO() throws ClassNotFoundException, SQLException {
		con = new ShopDBConn().getConnection();
	}

	// ---------------------------------------------------------------------//
	// --------------------------------start--------------------------------//
	// 뭘 넣어볼까?

	// -------------------------------로그인시작---------------------------------//
	public boolean shoplojin(String id, String passward) throws SQLException {

		String sql = "select cusid , cuspassward " + " from customers" + " where cusid = ?" + " and cuspassward = ?";
		pshrt = con.prepareStatement(sql);
		pshrt.setString(1, id);
		pshrt.setString(2, passward);
		rs = pshrt.executeQuery();

		if (rs.next()) {
			return true;
		} else {
			return false;
		}

	}

	// -------------------------------로그인끝----------------------------------//

	// -------------------------------남성상품전체보기시작---------------------------------//

	public ArrayList<ShopProductsVO> getAllMProducts() throws SQLException {

		ArrayList<ShopProductsVO> allproductsarray = new ArrayList<ShopProductsVO>();
		// spl문에 조건을 추가하면 카테고리별 조회가 가능할것
		String sql = "select * " + " from products" + " where p_code like 'm%'" + " and P_size is null";
		pshrt = con.prepareStatement(sql);
		rs = pshrt.executeQuery();

		while (rs.next()) {
			String pcode = rs.getString("p_code");
			String psize = rs.getString("p_size");
			String panme = rs.getString("p_name");
			int pcount = rs.getInt("p_count");
			int pprice = rs.getInt("p_price");
			String ptext = rs.getString("p_text");
			String pimg = rs.getString("p_img");

			ShopProductsVO spv = new ShopProductsVO(pcode, psize, panme, pcount, pprice, ptext, pimg);

			allproductsarray.add(spv);

		}

		return allproductsarray;
	}

	// -------------------------------남성상품전체보기끝---------------------------------//
 
	// -------------------------------남자상의시작---------------------------------//

	public ArrayList<ShopProductsVO> getAllMSProducts() throws SQLException {

		ArrayList<ShopProductsVO> allmsproductsarray = new ArrayList<ShopProductsVO>();
		// spl문에 조건을 추가하면 카테고리별 조회가 가능할것
		String sql = "select * " + " from products" + " where p_code like 'ms%'" + " and P_size is null";
		pshrt = con.prepareStatement(sql);
		rs = pshrt.executeQuery();

		while (rs.next()) {
			String pcode = rs.getString("p_code");
			String psize = rs.getString("p_size");
			String panme = rs.getString("p_name");
			int pcount = rs.getInt("p_count");
			int pprice = rs.getInt("p_price");
			String ptext = rs.getString("p_text");
			String pimg = rs.getString("p_img");

			ShopProductsVO spv = new ShopProductsVO(pcode, psize, panme, pcount, pprice, ptext, pimg);

			allmsproductsarray.add(spv);

		}

		return allmsproductsarray;
	}

	// -------------------------------남자상의보기끝---------------------------------//

	// -------------------------------남자하의시작---------------------------------//

	public ArrayList<ShopProductsVO> getAllMHProducts() throws SQLException {

		ArrayList<ShopProductsVO> allmhproductsarray = new ArrayList<ShopProductsVO>();
		// spl문에 조건을 추가하면 카테고리별 조회가 가능할것
		String sql = "select * " + " from products" + " where p_code like 'mh%'" + " and P_size is null";
		pshrt = con.prepareStatement(sql);
		rs = pshrt.executeQuery();

		while (rs.next()) {
			String pcode = rs.getString("p_code");
			String psize = rs.getString("p_size");
			String panme = rs.getString("p_name");
			int pcount = rs.getInt("p_count");
			int pprice = rs.getInt("p_price");
			String ptext = rs.getString("p_text");
			String pimg = rs.getString("p_img");

			ShopProductsVO spv = new ShopProductsVO(pcode, psize, panme, pcount, pprice, ptext, pimg);

			allmhproductsarray.add(spv);

		}

		return allmhproductsarray;
	}

	// -------------------------------남자하의보기끝---------------------------------//

	// -------------------------------비밀번호질문찾기 시작---------------------------------//

	// ------------------------------ 질문찾기 시작 --------------------------------//
	public ArrayList<ShopCustomersQVO> getbimil(String cid) throws SQLException, ClassNotFoundException {
		ArrayList<ShopCustomersQVO> bimilarray = new ArrayList<ShopCustomersQVO>();
		String sql = "select cuspassward, cusques, cusanswer " + " from customers" + " where cusid = ? ";

		pshrt = con.prepareStatement(sql);
		pshrt.setString(1, cid);
		rs = pshrt.executeQuery();

		while (rs.next()) {

			String cpass = rs.getString("cuspassward");
			String cques = rs.getString("cusques");
			String canswer = rs.getString("cusanswer");

			ShopCustomersQVO scv = new ShopCustomersQVO(cpass, cques, canswer);
			bimilarray.add(scv);
		}
		return bimilarray;
	}

	// ------------------------------ 질문찾기 끝 --------------------

	// -------------------------------상품전체보기시작---------------------------------//

	public ArrayList<ShopProductsVO> getAllProducts() throws SQLException {

		ArrayList<ShopProductsVO> allproductsarray = new ArrayList<ShopProductsVO>();
		// spl문에 조건을 추가하면 카테고리별 조회가 가능할것
		String sql = "select * " + " from products" + " where P_size is null";

		pshrt = con.prepareStatement(sql);
		rs = pshrt.executeQuery();

		while (rs.next()) {
			String pcode = rs.getString("p_code");
			String psize = rs.getString("p_size");
			String panme = rs.getString("p_name");
			int pcount = rs.getInt("p_count");
			int pprice = rs.getInt("p_price");
			String ptext = rs.getString("p_text");
			String pimg = rs.getString("p_img");

			ShopProductsVO spv = new ShopProductsVO(pcode, psize, panme, pcount, pprice, ptext, pimg);

			allproductsarray.add(spv);

		}

		return allproductsarray;
	}

	// -------------------------------상품전체보기끝---------------------------------//

	// -------------------------------상품디테일---------------------------------//

	public ArrayList<ShopProductsVO> getProductDetail(String pname) throws SQLException {

		ArrayList<ShopProductsVO> allproductsarray = new ArrayList<ShopProductsVO>();
		// spl문에 조건을 추가하면 카테고리별 조회가 가능할것
		String sql = "select * " + " from products" + " where p_name = ?" + " and p_size is null";

		pshrt = con.prepareStatement(sql);
		pshrt.setString(1, pname);
		rs = pshrt.executeQuery();

		while (rs.next()) {
			String pcode = rs.getString("p_code");
			String psize = rs.getString("p_size");
			String panme = rs.getString("p_name");
			int pcount = rs.getInt("p_count");
			int pprice = rs.getInt("p_price");
			String ptext = rs.getString("p_text");
			String pimg = rs.getString("p_img");

			ShopProductsVO spv = new ShopProductsVO(pcode, psize, panme, pcount, pprice, ptext, pimg);

			allproductsarray.add(spv);

		}

		return allproductsarray;
	}

	// ------------------------------- 회원정보수정 ----------------------------------//

	public boolean update(String pw, String tel, String add, String ques, String ans, String id) {
		String sql = "UPDATE customers SET cuspassward=?, custel=?, cusaddress=?, cusques=?, cusanswer=? WHERE cusid =?";
		try {
			pshrt = con.prepareStatement(sql);
			pshrt.setString(1, pw);
			pshrt.setString(2, tel);
			pshrt.setString(3, add);
			pshrt.setString(4, ques);
			pshrt.setString(5, ans);
			pshrt.setString(6, id);
			pshrt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("update Exception");
			return false;
		}
		return true;
	}

	// ------------------------------- 회원정보 끝 -----------------------------------//

	////////////// 원하는 한사람 찾는 메소드 만들기 ////////////
	public ShopCustomersVO search(String oriId) throws SQLException {
		ShopCustomersVO tv = null;
		String sql = "SELECT * " + "FROM customers" + " WHERE cusid = ? ";
		pshrt = con.prepareStatement(sql);
		pshrt.setString(1, oriId);
		rs = pshrt.executeQuery();
		if (rs.next()) {
			String suid = rs.getString("cusid");
			String supass = rs.getString("cuspassward");
			String suname = rs.getString("cusname");
			String sutel = rs.getString("custel");
			String suadd = rs.getString("cusaddress");
			String suques = rs.getString("cusques");
			String suanswer = rs.getString("cusanswer");
			tv = new ShopCustomersVO(suid, supass, suname, sutel, suadd, suques, suanswer);
		} else {
			tv = null;
		}
		return tv;
	}

	// ------------------------------회원가입--------------------------------//
	public boolean join_cus(String cid, String cpass, String cname, String ctel, String caddress, String cques,
			String canswer) {
		String sql = "insert into customers values(?,?,?,?,?,?,?)";

		try {
			pshrt = con.prepareStatement(sql);
			pshrt.setString(1, cid);
			pshrt.setString(2, cpass);
			pshrt.setString(3, cname);
			pshrt.setString(4, ctel);
			pshrt.setString(5, caddress);
			pshrt.setString(6, cques);
			pshrt.setString(7, canswer);
			pshrt.executeUpdate();/////////
		} catch (SQLException e) {
			System.out.println("insert Exception");
			return false;
		}
		return true;

	}

	// -----------------------------회원목록--------------------------------//
	public ArrayList<ShopCustomersVO> getAllInfo() throws SQLException {
		ArrayList<ShopCustomersVO> sArray = new ArrayList<ShopCustomersVO>();
		// spl문에 조건을 추가하면 카테고리별 조회가 가능할것
		String sql = "select * from customers";
		pshrt = con.prepareStatement(sql);
		rs = pshrt.executeQuery();

		while (rs.next()) {
			String cid = rs.getString("cusid");
			String cpass = rs.getString("cuspassward");
			String cname = rs.getString("cusname");
			String ctel = rs.getString("custel");
			String cadd = rs.getString("cusaddress");
			String cques = rs.getString("cusques");
			String cans = rs.getString("cusanswer");

			ShopCustomersVO scv = new ShopCustomersVO(cid, cpass, cname, ctel, cadd, cques, cans);

			sArray.add(scv);

		}

		return sArray;
	}
	// -----------------------------------------------------------------//

	// -------------------------------여성전체보기---------------------------------//
	public ArrayList<ShopProductsVO> getallWProducts() throws SQLException {

		ArrayList<ShopProductsVO> allproductsarray = new ArrayList<ShopProductsVO>();
		// spl문에 조건을 추가하면 카테고리별 조회가 가능할것
		String sql = "select * " + " from products " + " where p_code like 'w%' " + " and P_size is null";
		pshrt = con.prepareStatement(sql);
		rs = pshrt.executeQuery();

		while (rs.next()) {
			String pcode = rs.getString("p_code");
			String psize = rs.getString("p_size");
			String panme = rs.getString("p_name");
			int pcount = rs.getInt("p_count");
			int pprice = rs.getInt("p_price");
			String ptext = rs.getString("p_text");
			String pimg = rs.getString("p_img");

			ShopProductsVO spv = new ShopProductsVO(pcode, psize, panme, pcount, pprice, ptext, pimg);

			allproductsarray.add(spv);

		}

		return allproductsarray;
	}

	// -------------------------------여성상의보기---------------------------------//
	public ArrayList<ShopProductsVO> getallWSProducts() throws SQLException {

		ArrayList<ShopProductsVO> allproductsarray = new ArrayList<ShopProductsVO>();
		// spl문에 조건을 추가하면 카테고리별 조회가 가능할것
		String sql = "select * " + " from products where p_code like 'ws%' " + " and P_size is null";
		pshrt = con.prepareStatement(sql);
		rs = pshrt.executeQuery();

		while (rs.next()) {
			String pcode = rs.getString("p_code");
			String psize = rs.getString("p_size");
			String panme = rs.getString("p_name");
			int pcount = rs.getInt("p_count");
			int pprice = rs.getInt("p_price");
			String ptext = rs.getString("p_text");
			String pimg = rs.getString("p_img");

			ShopProductsVO spv = new ShopProductsVO(pcode, psize, panme, pcount, pprice, ptext, pimg);

			allproductsarray.add(spv);

		}

		return allproductsarray;
	}

	// -------------------------------여성하의보기---------------------------------//
	public ArrayList<ShopProductsVO> getallWHProducts() throws SQLException {

		ArrayList<ShopProductsVO> allproductsarray = new ArrayList<ShopProductsVO>();
		// spl문에 조건을 추가하면 카테고리별 조회가 가능할것
		String sql = "select * " + " from products where p_code like 'wh%' " + " and P_size is null";
		pshrt = con.prepareStatement(sql);
		rs = pshrt.executeQuery();

		while (rs.next()) {
			String pcode = rs.getString("p_code");
			String psize = rs.getString("p_size");
			String panme = rs.getString("p_name");
			int pcount = rs.getInt("p_count");
			int pprice = rs.getInt("p_price");
			String ptext = rs.getString("p_text");
			String pimg = rs.getString("p_img");

			ShopProductsVO spv = new ShopProductsVO(pcode, psize, panme, pcount, pprice, ptext, pimg);

			allproductsarray.add(spv);

		}

		return allproductsarray;
	}

	// -------------------------------검색결과보기---------------------------------//
	public ArrayList<ShopProductsVO> getpSearchroducts(String keyword) throws SQLException {

		ArrayList<ShopProductsVO> allproductsarray = new ArrayList<ShopProductsVO>();
		// spl문에 조건을 추가하면 카테고리별 조회가 가능할것
		String sql = "select * " + " from products " + " where p_name like ? " + " and p_size is null";
		pshrt = con.prepareStatement(sql);
		pshrt.setString(1, "%" + keyword + "%"); // ?로 통채로 보내버리기 !!!!!!!! setString안에
		rs = pshrt.executeQuery();

		while (rs.next()) {
			String pcode = rs.getString("p_code");
			String psize = rs.getString("p_size");
			String panme = rs.getString("p_name");
			int pcount = rs.getInt("p_count");
			int pprice = rs.getInt("p_price");
			String ptext = rs.getString("p_text");
			String pimg = rs.getString("p_img");

			ShopProductsVO spv = new ShopProductsVO(pcode, psize, panme, pcount, pprice, ptext, pimg);

			allproductsarray.add(spv);
		}

		return allproductsarray;
	}

	//--------------------- 장바구니보기 시작---------------------//

	public ArrayList<ShopCartsVO> getCartList(String cid) throws SQLException {

		ArrayList<ShopCartsVO> clarr = new ArrayList<ShopCartsVO>();

		String sql = "select * " + " from carts " + " where cart_cid = ? ";

		pshrt = con.prepareStatement(sql);
		pshrt.setString(1, cid);
		rs = pshrt.executeQuery();

		while (rs.next()) {

			String ccid = rs.getString("CART_CID");
			String cpcode = rs.getString("CART_PCODE");
			String cpname = rs.getString("CART_PNAME");

			ShopCartsVO cartvo = new ShopCartsVO(ccid, cpcode, cpname);

			clarr.add(cartvo);
		}
		return clarr;
	}

	// --------------------- 장바구니보기 끝 ---------------------//
	
	// ------------------------------찾는다 상품 해당 사이즈--------------------------------//
		public ArrayList<ShopProductsVO> find_pcode(String psize, String pname) throws SQLException {
			String sql = "select p_code"
						+ " from products"
						+ " where p_size = ?"
						+ " and p_name = ?";
					
			
			ArrayList<ShopProductsVO> findproductsarray = new ArrayList<ShopProductsVO>();

			
				pshrt = con.prepareStatement(sql);
				pshrt.setString(1, psize);
				pshrt.setString(2, pname);
				rs = pshrt.executeQuery();
				
				while (rs.next()) {
					String fc = rs.getString("p_code");
					ShopProductsVO fpc = new ShopProductsVO(fc);
					findproductsarray.add(fpc);
				}
				return findproductsarray;
				
	

		}

	// -----------------------------찾는다 상품 해당 사이즈--------------------------------//
		// ------------------------------장바구니클릭시작--------------------------------//
		public boolean cart_in(String cid, String pcode, String pname) {
			String sql = "insert into carts values(?,?,?)";

			try {
				pshrt = con.prepareStatement(sql);
				pshrt.setString(1, cid);
				pshrt.setString(2, pcode);
				pshrt.setString(3, pname);
				pshrt.executeUpdate();
				
				} catch (SQLException e) {
					System.out.println("insert Exception");
					return false;
				}
					return true;

			}

	// -----------------------------장바구니클릭끝--------------------------------//
		// --------------------- 장바구니 join 시작 -----------------//
		
		public ArrayList<ShopCartJoinVO> getCartJoinList(String cid) throws SQLException {

			ArrayList<ShopCartJoinVO> cjarr = new ArrayList<ShopCartJoinVO>();

			String sql = "select c.cart_cid, p.P_IMG, p.P_NAME, p.P_SIZE, p.P_PRICE "
					   + " from products p join carts c "
					   + " on p.p_code = c.cart_pcode "
					   + " where c.cart_cid = ?";

			pshrt = con.prepareStatement(sql);
			pshrt.setString(1, cid);
			rs = pshrt.executeQuery();

			while (rs.next()) {

				String ccid = rs.getString("CART_CID");
				String pimg = rs.getString("P_IMG");
				String pname = rs.getString("P_NAME");
				String psize = rs.getString("P_SIZE");
				int pprice = rs.getInt("P_PRICE");
				

				ShopCartJoinVO cartjvo = new ShopCartJoinVO( ccid, pimg, pname, psize, pprice);

				cjarr.add(cartjvo);
			}
			return cjarr;
		}
		
		// --------------------- 장바구니 join 끝 ------------------//
	
        // ------------------------------상품등록-------------------------------//
        public boolean registerProd(String pcode, String psize, String panme, int pcount, int pprice, String ptext,
                        String pimg) {
                String sql = "insert into products values(?,?,?,?,?,?,?)";

                try {
                        pshrt = con.prepareStatement(sql);
                        pshrt.setString(1, pcode);
                        pshrt.setString(2, psize);
                        pshrt.setString(3, panme);
                        pshrt.setInt(4, pcount);
                        pshrt.setInt(5, pprice);
                        pshrt.setString(6, ptext);
                        pshrt.setString(7, pimg);
                        pshrt.executeUpdate();/////////
                } catch (SQLException e) {
                        System.out.println("insert Exception");
                        return false;
                }
                return true;

        }
        //-----------------------sml다 가져오기------------------------------------
    	public ArrayList<ShopProductsVO> getallsizeProducts(String keyword) throws SQLException {

    		ArrayList<ShopProductsVO> allproductsarray = new ArrayList<ShopProductsVO>();
    		// spl문에 조건을 추가하면 카테고리별 조회가 가능할것
    		String sql = "select * " 
    					+ " from products "
    					+ " where p_name = ? " 
    					+ " and p_size is not null";
    		pshrt = con.prepareStatement(sql);
    		pshrt.setString(1, keyword);
    		rs = pshrt.executeQuery();

    		while (rs.next()) {
    			String pcode = rs.getString("p_code");
    			String psize = rs.getString("p_size");
    			String panme = rs.getString("p_name");
    			int pcount = rs.getInt("p_count");
    			int pprice = rs.getInt("p_price");
    			String ptext = rs.getString("p_text");
    			String pimg = rs.getString("p_img");

    			ShopProductsVO spv = new ShopProductsVO(pcode, psize, panme, pcount, pprice, ptext, pimg);

    			allproductsarray.add(spv);

    		}

    		return allproductsarray;
    	}
        
    	 //-----------------------sml다 가져오기 끝------------------------------------
    	//----------------------당일 매출----------------------------------
    	public int todaysales() throws SQLException {
    		int money = 0;
    		String sql = "select sum(pan_price)"
    					+ " from sales"
    					+ " WHERE TO_CHAR(SYSDATE, 'yy/MM/dd') = TO_CHAR(pan_date, 'yy/MM/dd')";
    		
    		pshrt = con.prepareStatement(sql);
			rs = pshrt.executeQuery();
			while (rs.next()) {
    			money = rs.getInt("sum(pan_price)");   		
				}
			return money;
    	}
    	//----------------------당일 매출끝----------------------------------
    	
    	
    	//------------------------------ 주문목록 시작 -----------------------------//
        public ArrayList<ShopSalesVO> getPAllInfo() throws SQLException {
          ArrayList<ShopSalesVO> sArray = new ArrayList<ShopSalesVO>();
          
          String sql = "select * from sales "
                   + " WHERE TO_CHAR(SYSDATE, 'MM') = TO_CHAR(pan_date, 'MM')";
          
          pshrt = con.prepareStatement(sql);
          rs = pshrt.executeQuery();

          while (rs.next()) {
             
             String sid = rs.getString("PAN_ID");
             Date sdate = rs.getDate("PAN_DATE");
             String spname = rs.getString("PAN_PCODE");
             String scount = rs.getString("PAN_PCOUNT");
             int sprice = rs.getInt("PAN_PRICE");

             ShopSalesVO scv = new ShopSalesVO(sid, sdate, spname, scount, sprice);

             sArray.add(scv);

          }

          return sArray;
       } 
     //------------------------------ 주문목록 끝 ------------------------------//   
        
    	//----------------------당일 주문----------------------------------
    	public int todaypan() throws SQLException {
    		int sale = 0;
    		String sql = "select count(*)"
    					+ " from sales"
    					+ " WHERE TO_CHAR(SYSDATE, 'yy/MM/dd') = TO_CHAR(pan_date, 'yy/MM/dd')";
    		
    		pshrt = con.prepareStatement(sql);
			rs = pshrt.executeQuery();
			while (rs.next()) {
				sale = rs.getInt("count(*)");   		
				}
			return sale;
    	}
    	//----------------------당일 주문끝----------------------------------
    	
    	//----------------------회원수----------------------------------
    	public int cuscount() throws SQLException {
    		int sale = 0;
    		String sql = "select count(*)"
    					+ " from customers";
    		
    		pshrt = con.prepareStatement(sql);
			rs = pshrt.executeQuery();
			while (rs.next()) {
				sale = rs.getInt("count(*)");   		
				}
			return sale;
    	}
    	//----------------------당일 주문끝----------------------------------
        
    	//----------------------오늘의 최고존엄----------------------------------
    	public int vip1() throws SQLException {
    		int sale = 0;
    		String sql = "select *"
    					+ " from ( SELECT pan_id , sum(pan_price) , RANK() OVER(ORDER BY sum(pan_price) DESC) as rank "
    					+ "  FROM sales"
    					+ " where TO_CHAR(SYSDATE, 'yy/MM/dd') = TO_CHAR(pan_date, 'yy/MM/dd')"
    					+ " group by pan_id)"
    					+ " where rank = 1";
    		
    		pshrt = con.prepareStatement(sql);
			rs = pshrt.executeQuery();
			while (rs.next()) {				
				sale = rs.getInt("sum(pan_price)");  
				}
			return sale;
    	}
    	public String vip2() throws SQLException {
    		String vip = null;
    		String sql = "select *"
    					+ " from ( SELECT pan_id , sum(pan_price) , RANK() OVER(ORDER BY sum(pan_price) DESC) as rank "
    					+ "  FROM sales"
    					+ " where TO_CHAR(SYSDATE, 'yy/MM/dd') = TO_CHAR(pan_date, 'yy/MM/dd')"
    					+ " group by pan_id)"
    					+ " where rank = 1";
    		
    		pshrt = con.prepareStatement(sql);
			rs = pshrt.executeQuery();
			while (rs.next()) {				
				vip = rs.getString("pan_id");  
				}
			return vip;
    	}
    	//----------------------오늘의 최고존엄끝----------------------------------
        
        
    	//------------------------------ 당월매출 시작 -----------------------------//
        public int dang() throws SQLException {
          int dang = 0;
          String sql = "select sum(pan_price) "
          			+ "from sales "
                   + " WHERE TO_CHAR(SYSDATE, 'MM') = TO_CHAR(pan_date, 'MM')";
          
          pshrt = con.prepareStatement(sql);
          rs = pshrt.executeQuery();

          while (rs.next()) {
             dang = rs.getInt("sum(pan_price)");
          }

          return dang;
       } 
     //------------------------------ 당월매출 끝 ------------------------------//
        
      //------------------------------ 전월매출 시작 -----------------------------//
        public int jhun() throws SQLException {
          int jhun = 0;
          String sql = "select sum(pan_price) "
          			+ "from sales "
                   + " WHERE TO_CHAR(add_months(SYSDATE, -1),'yyyymm') = TO_CHAR(pan_date, 'yyyyMM')";
          
          pshrt = con.prepareStatement(sql);
          rs = pshrt.executeQuery();

          while (rs.next()) {
        	  jhun = rs.getInt("sum(pan_price)");
          }

          return jhun;
       } 
     //------------------------------ 전월매출 끝 ------------------------------//
        
      //------------------------------장바구니테이블 > 판매테이블 시작 ------------------------------//
        public ArrayList<ShopCartJoinVO> ctop(String cid) throws SQLException {

			ArrayList<ShopCartJoinVO> cjarr = new ArrayList<ShopCartJoinVO>();

			String sql = "select c.cart_cid,  p.P_PRICE, p.p_code "
					   + " from products p join carts c "
					   + " on p.p_code = c.cart_pcode "
					   + " where c.cart_cid = ?";

			pshrt = con.prepareStatement(sql);
			pshrt.setString(1, cid);
			rs = pshrt.executeQuery();

			while (rs.next()) {

				String ccid = rs.getString("CART_CID");
				int pprice = rs.getInt("P_PRICE");
				String pcode = rs.getString("p_code");

				ShopCartJoinVO cartjvo = new ShopCartJoinVO( ccid, pprice, pcode);

				cjarr.add(cartjvo);
			}
			return cjarr;
		}
        
        public boolean ctop2(String sid, String spcode, int scount, int sprice) throws SQLException {
			
			String sql = "insert into sales values(?,?,?,?,?)";
			
			SimpleDateFormat format = new SimpleDateFormat("yymmdd");
			java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
			String sdate = format.format(date);
			
			pshrt = con.prepareStatement(sql);
			pshrt.setString(1, sid);
			pshrt.setDate(2, date);	//sysdate
			pshrt.setString(3, spcode);
			pshrt.setInt(4, scount);
			pshrt.setInt(5, sprice);
			pshrt.executeUpdate();
			return true;

	

		}
        
        
        
      //------------------------------ 장바구니테이블 > 판매테이블 끝 ------------------------------//
        
        
     // --------------------- 장바구니 비우기 ----------------------------
        public boolean delcartList(String cid){
          String sql = "delete from carts where cart_cid=?";
          
          try{
             pshrt=con.prepareStatement(sql);
             pshrt.setString(1, cid);
             pshrt.executeUpdate();
          }catch(SQLException e){
             System.out.println("delete Exception");
             return false;
          }
          return true;
       }
        // ------------------------장바구니 비우기끝--------------------------
        
        
        // 장바구니 삭제 버튼
        public boolean cartDel(int num, String uid) throws SQLException {

        	String sql = "delete from carts"
            		+ " where rowid = (select rid from "
            		+ " (select rownum rn, rowid rid from carts"
            		+ " where cart_cid = ?) "
            		+ " where rn = ?)";
  
                 pshrt=con.prepareStatement(sql);
                 pshrt.setString(1, uid);
                 pshrt.setInt(2, num);                
                 pshrt.executeUpdate();

              return true;
           }
     // 회원탈퇴
    	public boolean delete(String id) throws SQLException {
    		String sql = "delete from customers where cusid=?";/////
    		
    			pshrt = con.prepareStatement(sql);
    			pshrt.setString(1, id);
    			pshrt.executeUpdate();
    		
    		return true;
    	}
         
        
      

}