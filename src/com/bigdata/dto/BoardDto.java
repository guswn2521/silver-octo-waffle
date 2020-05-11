package com.bigdata.dto;

public class BoardDto {
	int idx;
	String name;
	String email;
	String homepage;
    String title;
    String content;
    String pw;
    int hit;
    String regdate;
    int group;
    int step;
    int indent;
    
    public BoardDto() {
	}

	public BoardDto(int idx, String name, String email, String homepage, String title, String content, String pw,
			int hit, String regdate, int group, int step, int indent) {
		super();
		this.idx = idx;
		this.name = name;
		this.email = email;
		this.homepage = homepage;
		this.title = title;
		this.content = content;
		this.pw = pw;
		this.hit = hit;
		this.regdate = regdate;
		this.group = group;
		this.step = step;
		this.indent = indent;
	}

	public BoardDto(String name, String email, String homepage, String title, String content, String pw) {
		super();
		this.name = name;
		this.email = email;
		this.homepage = homepage;
		this.title = title;
		this.content = content;
		this.pw = pw;
	}
	
    
}
