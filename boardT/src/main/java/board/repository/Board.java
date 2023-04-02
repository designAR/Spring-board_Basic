package board.repository;

import java.time.LocalDateTime;

public class Board {
	private Long num;
	private String title;
	private String content;
	private LocalDateTime regdate;
	private Long readcnt;
	
	public Board(Long num, String title, String content, LocalDateTime regdate, Long readcnt) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.readcnt = readcnt;
	}
	
	public Board() {
		
	}

	public Long getNum() {
		return num;
	}

	public void setNum(Long num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public LocalDateTime getRegdate() {
		return regdate;
	}

	public void setRegdate(LocalDateTime regdate) {
		this.regdate = regdate;
	}

	public Long getReadcnt() {
		return readcnt;
	}

	public void setReadcnt(Long readcnt) {
		this.readcnt = readcnt;
	}

	@Override
	public String toString() {
		return "Board [num=" + num + ", title=" + title + ", content=" + content + ", regdate=" + regdate + ", readcnt="
				+ readcnt + "]";
	} // Board객체를 문자열로 반환하는 toString메소드로 
	  // Board [num=1, title=제목, content=내용, regdate=2022-04-02 12:34:56, readcnt=0] 형태로 필드의 값을 확인할 수 있다.
	
}
