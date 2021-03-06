package vo;

public class Board {
	
	private int boardnum;			//게시물 번호
	private String id;					//게시물 작성자 아이디
	private String title;			//게시물 제목
	private String content;			//게시물 내용
	private long inputdate;			//게시물 작성날짜.타임스탬프형식을 취한다.
	private int viewcount;			//조회수
	private String savedfile;		//실제저장된 이름
	private String originalfile;	//원래이름
	private String newornot;        //새로운 게시물인지 아닌지.
	private String rfInputdate;		//재정의된 입력시간(동적)
	private int    replycount;      //댓글의 수(동적)
	private String boardtype;		//개시글의 타입
	
	public Board(){}

	public Board(int boardnum, String id, String title, String content,
			long inputdate, int viewcount, String savedfile,
			String originalfile, String newornot, String rfInputdate,
			int replycount, String boardtype) {
		super();
		this.boardnum = boardnum;
		this.id = id;
		this.title = title;
		this.content = content;
		this.inputdate = inputdate;
		this.viewcount = viewcount;
		this.savedfile = savedfile;
		this.originalfile = originalfile;
		this.newornot = newornot;
		this.rfInputdate = rfInputdate;
		this.replycount = replycount;
		this.boardtype = boardtype;
	}

	public int getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public long getInputdate() {
		return inputdate;
	}

	public void setInputdate(long inputdate) {
		this.inputdate = inputdate;
	}

	public int getViewcount() {
		return viewcount;
	}

	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}

	public String getSavedfile() {
		return savedfile;
	}

	public void setSavedfile(String savedfile) {
		this.savedfile = savedfile;
	}

	public String getOriginalfile() {
		return originalfile;
	}

	public void setOriginalfile(String originalfile) {
		this.originalfile = originalfile;
	}

	public String getNewornot() {
		return newornot;
	}

	public void setNewornot(String newornot) {
		this.newornot = newornot;
	}

	public String getRfInputdate() {
		return rfInputdate;
	}

	public void setRfInputdate(String rfInputdate) {
		this.rfInputdate = rfInputdate;
	}

	public int getReplycount() {
		return replycount;
	}

	public void setReplycount(int replycount) {
		this.replycount = replycount;
	}

	public String getBoardtype() {
		return boardtype;
	}

	public void setBoardtype(String boardtype) {
		this.boardtype = boardtype;
	}

	@Override
	public String toString() {
		return "Board [boardnum=" + boardnum + ", id=" + id + ", title="
				+ title + ", content=" + content + ", inputdate=" + inputdate
				+ ", viewcount=" + viewcount + ", savedfile=" + savedfile
				+ ", originalfile=" + originalfile + ", newornot=" + newornot
				+ ", rfInputdate=" + rfInputdate + ", replycount=" + replycount
				+ ", boardtype=" + boardtype + "]";
	}
	
}
