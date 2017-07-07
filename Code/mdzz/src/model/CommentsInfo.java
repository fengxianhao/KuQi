package model;

public class CommentsInfo {
	private String cName;//�ͻ�����
	private int goodsID;//��Ʒ���
	private String gComment;//����
	private String commData;//����ʱ��
	
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getGoodsID() {
		return goodsID;
	}
	public void setGoodsID(int goodsID) {
		this.goodsID = goodsID;
	}
	public String getgComment() {
		return gComment;
	}
	public void setgComment(String gComment) {
		this.gComment = gComment;
	}
	public String getCommData() {
		return commData;
	}
	public void setCommData(String commData) {
		this.commData = commData;
	}
	public CommentsInfo(String cName, int goodsID, String gComment, String commData) {
		super();
		this.cName = cName;
		this.goodsID = goodsID;
		this.gComment = gComment;
		this.commData = commData;
	}
	public CommentsInfo() {
		super();
	}
	
}
