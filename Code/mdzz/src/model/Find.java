package model;

public class Find {
	private int id;
	private String imgAddress;
	private String price;
	private String name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImgAddress() {
		return imgAddress;
	}
	public void setImgAddress(String imgAddress) {
		this.imgAddress = imgAddress;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Find() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Find(int id, String imgAddress, String price, String name) {
		super();
		this.id = id;
		this.imgAddress = imgAddress;
		this.price = price;
		this.name = name;
	}
	
}
