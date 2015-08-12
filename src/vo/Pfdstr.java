package vo;

public class Pfdstr {
	
	int pfdstrnum;	//첨삭스트링 일련번호
	int pfdnum;		//첨삭스트링을 가지는 첨삭 댓글의 일련번호
	String pfdstr;   	//첨삭스트링
	
	public Pfdstr(){}

	public Pfdstr(int pfdstrnum, int pfdnum, String pfdstr) {
		super();
		this.pfdstrnum = pfdstrnum;
		this.pfdnum = pfdnum;
		this.pfdstr = pfdstr;
	}

	public int getPfdstrnum() {
		return pfdstrnum;
	}

	public void setPfdstrnum(int pfdstrnum) {
		this.pfdstrnum = pfdstrnum;
	}

	public int getPfdnum() {
		return pfdnum;
	}

	public void setPfdnum(int pfdnum) {
		this.pfdnum = pfdnum;
	}

	public String getPfdstr() {
		return pfdstr;
	}

	public void setPfdstr(String pfdstr) {
		this.pfdstr = pfdstr;
	}

	@Override
	public String toString() {
		return "Pfdstr [pfdstrnum=" + pfdstrnum + ", pfdnum=" + pfdnum
				+ ", pfdstr=" + pfdstr + "]";
	}
	
	
	
	
	

}
