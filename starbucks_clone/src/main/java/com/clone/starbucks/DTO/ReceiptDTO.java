package com.clone.starbucks.DTO;

public class ReceiptDTO extends SaleDTO{
	
	private int no;
	private int price;
	

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
}
