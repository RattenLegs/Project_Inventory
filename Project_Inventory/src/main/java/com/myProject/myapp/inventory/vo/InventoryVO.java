package com.myProject.myapp.inventory.vo;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*
CREATE TABLE inventorylist(
  bno NUMBER(10, 0) PRIMARY KEY,
  shoeGender VARCHAR2(300) NOT NULL,
  design VARCHAR2(50) NOT NULL,
  color VARCHAR2(50) NOT NULL,
  shoeSize VARCHAR2(50) NOT NULL,
  shoeNum VARCHAR2(50) NOT NULL,
  price VARCHAR2(50) NOT NULL,
  salePercent VARCHAR2(50) NOT NULL,
  sale VARCHAR2(50) NOT NULL,  
  regdate DATE DEFAULT sysdate,
  updatedate DATE DEFAULT NULL
);



CREATE SEQUENCE inventorylist_seq
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 5000
  NOCYCLE
  NOCACHE;
*/

@Getter
@Setter
@ToString
public class InventoryVO {
	private int bno;
	private String shoeGender;
	private String design;
	private String color;
	private int shoeSize;
	private int shoeNum;
	private int price;
	private int salePercent;
	private int sale;
	private Timestamp regdate;
	private Timestamp updatedate;
	private boolean newMark;
}
