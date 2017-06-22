package com.hb.day04;

public class GuestVo {
	private int sabun, pay;
	private String name, nalja;
	
	public GuestVo() {
		// TODO Auto-generated constructor stub
	}

	public GuestVo(int sabun, String name, String nalja, int pay) {
		super();
		this.sabun = sabun;
		this.name = name;
		this.nalja = nalja;
		this.pay = pay;
	}

	public int getSabun() {
		return sabun;
	}

	public void setSabun(int sabun) {
		this.sabun = sabun;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNalja() {
		return nalja;
	}

	public void setNalja(String nalja) {
		this.nalja = nalja;
	}

	@Override
	public String toString() {
		return "GuestVo [sabun=" + sabun + ", pay=" + pay + ", name=" + name + ", nalja=" + nalja + "]";
	}
	
}
