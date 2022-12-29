package com.myProject.myapp.freeboard.vo;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*
  CREATE TABLE freeboard(
    bno NUMBER(10, 0),
    title VARCHAR2(300) NOT NULL,
    writer VARCHAR2(50) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    regdate DATE DEFAULT sysdate,
    updatedate DATE DEFAULT NULL
);

ALTER TABLE freeboard
ADD CONSTRAINT freeboard_pk PRIMARY KEY(bno);

CREATE SEQUENCE freeboard_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 5000
    NOCYCLE
    NOCACHE;
 */

@Getter
@Setter
@ToString
public class FreeBoardVO {

	private int bno;
	private String title;
	private String writer;
	private String content;
	private Timestamp regDate;
	private Timestamp updateDate;
	private boolean newMark;

}
