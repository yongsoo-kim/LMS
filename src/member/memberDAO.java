package member;


import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;




import vo.Admin;
import vo.Student;
import vo.Subject;
import vo.Teacher;
import common.MybatisConfig;

public class memberDAO {
	SqlSessionFactory sqlSessionFactory = MybatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	Student student;
	Teacher teacher;
	Admin admin;
	Subject subject;
	List<Subject> subjectList;
	List<Student> studentList;
	List<Teacher> teacherList;
	List<Teacher> teacherListnotConfirmed;
	List<Student> studentListnotConfirmed;
	public void memberJoin(Student student) throws Exception{
		sqlSession = sqlSessionFactory.openSession();
		sqlSession.insert("member.memberJoin",student);
		sqlSession.commit();
		sqlSession.close();
	}
	public Student studentLogin(HashMap<String, Object> hashmap) throws Exception{
		sqlSession = sqlSessionFactory.openSession();
		student = sqlSession.selectOne("member.studentLogin", hashmap);
		sqlSession.close();
		return student;
	}
	public Teacher teacherLogin(HashMap<String, Object> hashmap) throws Exception{
		sqlSession = sqlSessionFactory.openSession();
		teacher = sqlSession.selectOne("member.teacherLogin", hashmap);
		sqlSession.close();
		return teacher;
	}
	public Admin adminLogin(HashMap<String, Object> hashmap) throws Exception{
		sqlSession = sqlSessionFactory.openSession();
		admin = sqlSession.selectOne("member.adminLogin", hashmap);
		sqlSession.close();
		return admin;
	}
	public void profileUpdate(Student student) throws Exception{
		sqlSession = sqlSessionFactory.openSession();
		sqlSession.update("member.profileUpdate",student);
		sqlSession.commit();
		sqlSession.close();
	}
	public List<Subject> myStudyList(String id) throws Exception{
		System.out.println("dao1");
		sqlSession = sqlSessionFactory.openSession();
		System.out.println("dao2");
		subjectList= sqlSession.selectList("member.myStudyList",id);
		System.out.println("dao3");
		sqlSession.commit();
		sqlSession.close();
		System.out.println("dao4");
		return subjectList; 
	}
	public List<Student> studentListforConfirm() throws Exception{
		sqlSession = sqlSessionFactory.openSession();
		teacherListnotConfirmed=sqlSession.selectList("member.studentListforConfirm");
		sqlSession.close();
		return studentList;
	}
	public List<Teacher> teacherListforConfirm() throws Exception{
		sqlSession = sqlSessionFactory.openSession();
		studentListnotConfirmed=sqlSession.selectList("member.teacherListforConfirm");
		sqlSession.close();
		return teacherList;
	}
	public void teacherConfirm(String id) throws Exception {
		sqlSession = sqlSessionFactory.openSession();
		sqlSession.update("member.teacherConfirm",id);
		sqlSession.commit();
		sqlSession.close();
	}
	public void studentConfirm(String id) throws Exception {
		sqlSession = sqlSessionFactory.openSession();
		sqlSession.update("member.studentConfirm",id);
		sqlSession.commit();
		sqlSession.close();
	}
	public List<Teacher> teacherList() throws Exception{
		sqlSession = sqlSessionFactory.openSession();
		teacherList=sqlSession.selectList("member.studentList");
		sqlSession.close();
		return teacherList;
	}
	public List<Student> studentList() throws Exception{
		sqlSession = sqlSessionFactory.openSession();
		studentList=sqlSession.selectList("member.teacherList");
		sqlSession.close();
		return studentList;
	}
}
