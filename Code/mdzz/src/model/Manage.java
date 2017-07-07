package model;

public class Manage {
	private int goodsID;
	private String gName;
	private String gShow;
	private String price;
	
	public int getGoodsID() {
		return goodsID;
	}

	public void setGoodsID(int goodsID) {
		this.goodsID = goodsID;
	}

	public String getgName() {
		return gName;
	}

	public void setgName(String gName) {
		this.gName = gName;
	}

	public String getgShow() {
		return gShow;
	}

	public void setgShow(String gShow) {
		this.gShow = gShow;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	

	public Manage(int goodsID, String gName, String gShow,String price) {
		super();
		this.goodsID = goodsID;
		this.gName = gName;
		this.gShow = gShow;
		this.price = price;
		
	}

	public Manage(String string, String gName2, String gShow2, String price2) {
		// TODO Auto-generated constructor stub
	}

	public String toString(){
		return "商品名"+this.gName+", 图片"+this.gShow+",价格"+this.price;
		
		
	}
	
}
