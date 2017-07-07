package model;

public class GoodsInfo {
	private int goodsID;//��Ʒ���
	private String gName;//��Ʒ����
	private String gShow;//��ƷͼƬ
	private String gType;//��Ʒ����
	private float price;//��Ʒ�۸�
	private String gStatus;//��Ʒ״̬
	private String baseNub;//��Ʒ���
	private int pollCount;//��������
	public GoodsInfo(int goodsID, String gName, String gShow, String gType,
			float price, String gStatus, String baseNub, int pollCount) {
		super();
		this.goodsID = goodsID;
		this.gName = gName;
		this.gShow = gShow;
		this.gType = gType;
		this.price = price;
		this.gStatus = gStatus;
		this.baseNub = baseNub;
		this.pollCount = pollCount;
	}
	public GoodsInfo() {
		super();
	}
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
	public String getgType() {
		return gType;
	}
	public void setgType(String gType) {
		this.gType = gType;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getgStatus() {
		return gStatus;
	}
	public void setgStatus(String gStatus) {
		this.gStatus = gStatus;
	}
	public String getBaseNub() {
		return baseNub;
	}
	public void setBaseNub(String baseNub) {
		this.baseNub = baseNub;
	}
	public int getPollCount() {
		return pollCount;
	}
	public void setPollCount(int pollCount) {
		this.pollCount = pollCount;
	}
}
