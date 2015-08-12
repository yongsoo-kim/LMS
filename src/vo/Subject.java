package vo;

public class Subject {
/*	CREATE TABLE subject
	(
		subject_seq number NOT NULL,
		-- 관리자의 id
		id varchar2(20) NOT NULL,
		subjectname varchar2(20) NOT NULL,
		-- 
		-- 
		flag varchar2(10) NOT NULL,
		class_num varchar2(10) NOT NULL,
		start_date varchar2(30) NOT NULL,
		end_date varchar2(30) NOT NULL,
		PRIMARY KEY (subject_seq)
	);*/
	int subject_seq;
	String id;
	String subjectname;
	String flag;
	String class_num;
	String start_date;
	String end_date;
	public int getSubject_seq() {
		return subject_seq;
	}
	public void setSubject_seq(int subject_seq) {
		this.subject_seq = subject_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSubjectname() {
		return subjectname;
	}
	public void setSubjectname(String subjectname) {
		this.subjectname = subjectname;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String getClass_num() {
		return class_num;
	}
	public void setClass_num(String class_num) {
		this.class_num = class_num;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public Subject(String subjectname) {
		super();
		this.subjectname = subjectname;
	}
	public Subject() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Subject [subjectname=" + subjectname + "]";
	}
}
