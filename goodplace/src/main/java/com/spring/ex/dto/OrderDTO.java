package com.spring.ex.dto;

public class OrderDTO {

	private int o_id;
	private String o_uid;
	private int o_pid;
	private int o_num;
	private int o_price;

	public OrderDTO(int o_id, String o_uid, int o_pid, int o_num, int o_price) {
		this.o_id = o_id;
		this.o_uid = o_uid;
		this.o_pid = o_pid;
		this.o_num = o_num;
		this.o_price = o_price;
	}

	public int getO_id() {
		return o_id;
	}

	public void setO_id(int o_id) {
		this.o_id = o_id;
	}

	public String getO_uid() {
		return o_uid;
	}

	public void setO_uid(String o_uid) {
		this.o_uid = o_uid;
	}

	public int getO_pid() {
		return o_pid;
	}

	public void setO_pid(int o_pid) {
		this.o_pid = o_pid;
	}

	public int getO_num() {
		return o_num;
	}

	public void setO_num(int o_num) {
		this.o_num = o_num;
	}

	public int getO_price() {
		return o_price;
	}

	public void setO_price(int o_price) {
		this.o_price = o_price;
	}

}
