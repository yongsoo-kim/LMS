package member;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.SessionAware;

import vo.Admin;
import vo.Student;
import vo.Subject;
import vo.Teacher;

import com.opensymphony.xwork2.ActionSupport;

public class memberAction extends ActionSupport implements SessionAware{
	Student student;
	Teacher teacher;
	Subject subject;
	Admin admin;
	List<Subject> subjectList;
	List<Student> studentList;
	List<Teacher> teacherList;
	List<Student> studentListnotConfirmed;
	List<Teacher> teacherListnotConfirmed;
	Map<String, Object> session;
	HashMap<String,Object> hashmap;
	
	String id;
	String password;
	int type;
	
	private File upload;					//profile사진upload용
	private String uploadFileName;			
	private String uploadContentType;
	
	String path="D:/workspace/LMS/WebContent/upload/";//프로젝트폴더내에 업로드 하는 것 알아보기
	
	String[] japLev = {"상","중","하"};
	
	public String execute() throws Exception {
		System.out.println(student);
		SimpleDateFormat sdf_filename = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss");
		String inputdate_file = sdf_filename.format(new Date());
		if(upload !=null){
			if(upload.exists()){
				System.out.println(uploadFileName+" "+uploadContentType);
				String savedfile = inputdate_file+uploadFileName;
				//String originalfile = uploadFileName;				
				File destFile = new File(path+savedfile);
				FileUtils.copyFile(upload, destFile);
				student.setPropic(savedfile);
			}}
		System.out.println("append profile: "+student);
		new memberDAO().memberJoin(student);
		session.put("userSign", student);
		return SUCCESS;
	}
	public String login() throws Exception {
		System.out.println(id+" "+password+" "+type);
		if(type==0){
			System.out.println("관리자용");
			hashmap= new HashMap<>();
			hashmap.put("id", id); hashmap.put("password", password);//스트링으로 검색조건을 만족함
			admin = new memberDAO().adminLogin(hashmap); //객체 받아오는 부분
			if(admin!=null){
				session.put("userSign", admin);
			}
		}else if(type==1){
			System.out.println("선생님안녕하세요");
			hashmap= new HashMap<>();
			hashmap.put("id", id); hashmap.put("password", password);
			teacher = new memberDAO().teacherLogin(hashmap);
			if(teacher!=null){
				session.put("userSign", teacher);
			}
		}else if(type==2){
			System.out.println("학생이네");
			hashmap= new HashMap<>();
			hashmap.put("id", id); hashmap.put("password", password);
			student = new memberDAO().studentLogin(hashmap);
			if(student!=null){
				session.put("userSign", student);
			}
		}
		
		return SUCCESS;
	}
	public String logout() throws Exception {
		session.remove("userSign");
		return SUCCESS;
	}
	public String mypageForm() throws Exception {
		System.out.println("Welcome to MyPage");
		if(session.get("userSign") instanceof Student){
			student = (Student)session.get("userSign");
			id = student.getId();
		}
		System.out.println("Welcome to MyPage2");
		System.out.println(id);
		subjectList= new memberDAO().myStudyList(id);
		System.out.println("Welcome to MyPage3");
		return SUCCESS;
	}
	public String profileUpdate() throws Exception {
		System.out.println("Hello0");
		//new memberDAO().profileUpdate(student);
		System.out.println("Hello1");
		//getOneofStudents();
		session.put("userSign", student);
		return SUCCESS;
	}
	public String memberManagementForm() throws Exception {
		System.out.println("managementForm");
		studentListnotConfirmed=new memberDAO().studentListforConfirm();
		teacherListnotConfirmed=new memberDAO().teacherListforConfirm();
		studentList = new memberDAO().studentList();
		teacherList = new memberDAO().teacherList();
		System.out.println(studentList);
		System.out.println(teacherList);
		return SUCCESS;
	}
	public String teacherConfirm() throws Exception {
		new memberDAO().teacherConfirm(id);
		return SUCCESS;
	}
	public String studentConfirm() throws Exception {
		System.out.println(id);
		new memberDAO().studentConfirm(id);
		System.out.println("Confirmed");
		return SUCCESS;
	}
	public String subjectList() throws Exception {
		System.out.println("여기는 강의목록페이지야 친구");
		return SUCCESS;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
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
	public List<Subject> getSubjectList() {
		return subjectList;
	}
	public void setSubjectList(List<Subject> subjectList) {
		this.subjectList = subjectList;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public List<Student> getStudentList() {
		return studentList;
	}
	public void setStudentList(List<Student> studentList) {
		this.studentList = studentList;
	}
	public List<Teacher> getTeacherList() {
		return teacherList;
	}
	public void setTeacherList(List<Teacher> teacherList) {
		this.teacherList = teacherList;
	}
	public String[] getJapLev() {
		return japLev;
	}
	public void setJapLev(String[] japLev) {
		this.japLev = japLev;
	}
	public List<Student> getStudentListnotConfirmed() {
		return studentListnotConfirmed;
	}
	public void setStudentListnotConfirmed(List<Student> studentListnotConfirmed) {
		this.studentListnotConfirmed = studentListnotConfirmed;
	}
	public List<Teacher> getTeacherListnotConfirmed() {
		return teacherListnotConfirmed;
	}
	public void setTeacherListnotConfirmed(List<Teacher> teacherListnotConfirmed) {
		this.teacherListnotConfirmed = teacherListnotConfirmed;
	}
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
}
