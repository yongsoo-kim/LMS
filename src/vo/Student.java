package vo;

public class Student {
	/*	CREATE TABLE student
	(
		id varchar2(20) NOT NULL,
		password varchar2(20) NOT NULL,
		name varchar2(20) NOT NULL,
		phone varchar2(30),
		email varchar2(30),
		birth date,
		eip number DEFAULT 0,
		jlpt varchar2(10) DEFAULT '0',
		japanese varchar2(10) DEFAULT '중',
		class_ varchar2(10),
		propic varchar2(100),
		avapic varchar2(100),
		confirm number DEFAULT 0,
		flagnum varchar2(10),
		type number NOT NULL,
		PRIMARY KEY (studentid)
	);*/
	String id;
	String password;
	String name;
	String phone;
	String email;
	String birth;
	int eip;
	String japanese;
	String class_;
	String propic;
	String avapic;
	int confirm;
	int type;
	String flagnum;
	String jlpt;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getEip() {
		return eip;
	}
	public void setEip(int eip) {
		this.eip = eip;
	}
	public String getJapanese() {
		return japanese;
	}
	public void setJapanese(String japanese) {
		this.japanese = japanese;
	}
	public String getClass_() {
		return class_;
	}
	public void setClass_(String class_) {
		this.class_ = class_;
	}
	public String getPropic() {
		return propic;
	}
	public void setPropic(String propic) {
		this.propic = propic;
	}
	public String getAvapic() {
		return avapic;
	}
	public void setAvapic(String avapic) {
		this.avapic = avapic;
	}
	public int getConfirm() {
		return confirm;
	}
	public void setConfirm(int confirm) {
		this.confirm = confirm;
	}
	public String getFlagnum() {
		return flagnum;
	}
	public void setFlagnum(String flagnum) {
		this.flagnum = flagnum;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	public String getJlpt() {
		return jlpt;
	}
	public void setJlpt(String jlpt) {
		this.jlpt = jlpt;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + "]";
	}
	
}
