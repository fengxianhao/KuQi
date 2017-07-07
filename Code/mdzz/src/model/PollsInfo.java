package model;

public class PollsInfo {
	private String cName;//�ͻ�����
	private int goodsID;//��Ʒ���
	public PollsInfo() {
		super();
	}
	public PollsInfo(String cName, int goodsID, int poll) {
		super();
		this.cName = cName;
		this.goodsID = goodsID;
		this.poll = poll;
	}
	private int poll;//���޶���
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
	public int getPoll() {
		return poll;
	}
	public void setPoll(int poll) {
		this.poll = poll;
	}
}
