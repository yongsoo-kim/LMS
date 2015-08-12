package prob;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import vo.Prob_List;
import vo.Problem;
import vo.Score;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProbAction extends ActionSupport implements SessionAware {
	
	int test_seq;
	int prob_id;
	String prob_type;
	String probtext;
	String obj1;
	String obj2;
	String obj3;
	String obj4;
	
	String sbj;
	String answer;
	String explanation;
	String teacher_id;
	String inputdate;
	int difficulty;
	List<Problem> problist; //문제은행용
	Problem problem;
	List<Prob_List> pblist; //내가 낸 문제용
	List<Problem> pli;
	List<String> useranswer;
	Map<String, Object> session;
	String id;
	
	
	
	//로딩과 동시에 문제 리스트 불러오기
	public String  ProbMakingForm() throws Exception{
		
		ProbDAO db = new ProbDAO();
		problist = db.problist();
		
		
		return SUCCESS;
	}
	
	
	
	
	
	
	//객관식, 주관식 문제 내기
	public String insertProb() throws Exception{
		System.out.println("==============문제 집어넣기==================");
		Problem prob = new Problem();
		prob.setProbtext(probtext);
		prob.setObj1(obj1);
		prob.setObj2(obj2);
		prob.setObj3(obj3);
		prob.setObj4(obj4);
		prob.setAnswer(answer);
		prob.setProb_type(prob_type);
		prob.setExplanation(explanation);
		prob.setTeacher_id(teacher_id);
		prob.setDifficulty(difficulty);
		System.out.println(prob);
		
		ProbDAO db = new ProbDAO();
		db.insertProb(prob);
		
		
		
		
		return SUCCESS;
	}
	
	public String problemList(){
		System.out.println("==============문제 리스트 들고오기==================");
		ProbDAO db = new ProbDAO();
		problist = db.problist();
		
		System.out.println(problist);
		
		
		
		return SUCCESS;
	}
	
	
	public String getProb() {
		System.out.println("==============문제 하나 들고오기==================");
		ProbDAO db = new ProbDAO();
		problem = db.getProb(prob_id);
		return SUCCESS;
	}


	public String submitTest() {
		System.out.println("==============문제리스트에 집어 넣기에 집어넣기==================");
		
		
		
		ProbDAO db = new ProbDAO();
		Prob_List pblist = new Prob_List();
		
		
		System.out.println(prob_id);
		System.out.println(test_seq);
		pblist.setProb_id(prob_id);
		pblist.setTest_seq(test_seq);	
		
		db.submitTest(pblist);
		
		//////////////////////////////////////
		return SUCCESS;
	}

	
	//문제풀기 양식 불러오기
	public String solvingForm(){
		System.out.println("==============문제풀기 양식 불러오기==================");
	
		ProbDAO db = new ProbDAO();
		pblist = db.getTest(test_seq);
		//지정된 시험에 해당하는 문제 리스트 들고오기
		System.out.println(pblist);
		//문제리스트 번호에서 문제 리스트 발췌하기
		System.out.println(pblist.size()+"리스트 사이즈");
		//미리 선언해둠
		pli = new ArrayList<Problem>();
		for(int i=0;i<pblist.size();i++){
			//문제의 아이디
			int pid = pblist.get(i).getProb_id();
			//그 아이디에 따른 문제 객체 생성
			System.out.println(pid);
			Problem p = null;
			p = db.getProb(pid);
			System.out.println(p);
			pli.add(p);
		}
			System.out.println(pli);
		return SUCCESS;
	}
	
	
	public String testResult(){
		System.out.println("==============풀은 문제 정리하기==================");
		System.out.println(test_seq);
		System.out.println(useranswer);
		
		
		int correct=0;
		int wrong =0;
		
		//이걸로 시험문제 리스트를 가져온다.
		ProbDAO db = new ProbDAO();
		pblist = db.getTest(test_seq);
		System.out.println("배열의 크기");
		String arr[] =useranswer.get(0).split(",");
		
	
		for(int i=0;i<pblist.size();i++){
			//prob_list에서 문제 리스트를 불러온뒤 
			//x틀린문제가 무었인지 알려주는 배열을 만든다.
			System.out.println(arr[i]);
			int pid = pblist.get(i).getProb_id();
			Problem pro;
			
			pro= db.getProb(pid);
		
			
			if(   (pro.getAnswer()).equals(arr[i])   ){
				System.out.println((i+1)+"번문제 맞음");
				correct++;
			}
			else{
				wrong++;
			
			}
		}
		double percent=0;
		percent = ((double)correct/(double)pblist.size())*100;
		int score =(int) percent;
		System.out.println("===========결과===========");
		System.out.println("===========총문제수:"+pblist.size()+"==============");
		System.out.println("===========맞은 문제수:"+correct+"=============");
		System.out.println("===========틀린 문제수:"+wrong+"=============");
		System.out.println("===========백분율:"+percent+"=============");
		System.out.println("===========점수:"+score+"=============");
		
		//이제 시험번호,시험친사람,시험점수를 score테이블에 삽입한다.
		
		//시험친 사람 세션에서 아이디를 들고 오기
	
		
		
		
		//시험 객체 만들기
		Score scoreobject = new Score();
		scoreobject.setTest_seq(test_seq);
		scoreobject.setId(id);
		scoreobject.setScore(score);
		System.out.println("시험결과객체 출력");
		System.out.println(scoreobject);
	
		
		/*db.insertscore(scoreobject);*/
		
		
		
		
		
		return SUCCESS;
	}	
	

	
	///////////////////////////////////////////////게터 및 세터//////////////////////////////////////
	
	

	public int getProb_id() {
		return prob_id;
	}





	public void setProb_id(int prob_id) {
		this.prob_id = prob_id;
	}





	public String getProb_type() {
		return prob_type;
	}





	public void setProb_type(String prob_type) {
		this.prob_type = prob_type;
	}





	public String getProbtext() {
		return probtext;
	}





	public void setProbtext(String probtext) {
		this.probtext = probtext;
	}





	public String getObj1() {
		return obj1;
	}





	public void setObj1(String obj1) {
		this.obj1 = obj1;
	}





	public String getObj2() {
		return obj2;
	}





	public void setObj2(String obj2) {
		this.obj2 = obj2;
	}





	public int getDifficulty() {
		return difficulty;
	}





	public void setDifficulty(int difficulty) {
		this.difficulty = difficulty;
	}





	public String getObj3() {
		return obj3;
	}





	public void setObj3(String obj3) {
		this.obj3 = obj3;
	}





	public String getObj4() {
		return obj4;
	}





	public void setObj4(String obj4) {
		this.obj4 = obj4;
	}





	public String getSbj() {
		return sbj;
	}





	public void setSbj(String sbj) {
		this.sbj = sbj;
	}





	public String getAnswer() {
		return answer;
	}





	public void setAnswer(String answer) {
		this.answer = answer;
	}





	public String getExplanation() {
		return explanation;
	}





	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}





	public String getTeacher_id() {
		return teacher_id;
	}





	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}





	public String getInputdate() {
		return inputdate;
	}





	public void setInputdate(String inputdate) {
		this.inputdate = inputdate;
	}

	public List<Problem> getProblist() {
		return problist;
	}

	public void setProblist(List<Problem> problist) {
		this.problist = problist;
	}






	public Problem getProblem() {
		return problem;
	}






	public void setProblem(Problem problem) {
		this.problem = problem;
	}






	public int getTest_seq() {
		return test_seq;
	}






	public void setTest_seq(int test_seq) {
		this.test_seq = test_seq;
	}






	public List<Prob_List> getPblist() {
		return pblist;
	}






	public void setPblist(List<Prob_List> pblist) {
		this.pblist = pblist;
	}






	public List<Problem> getPli() {
		return pli;
	}






	public void setPli(List<Problem> pli) {
		this.pli = pli;
	}






	public List<String> getUseranswer() {
		return useranswer;
	}






	public void setUseranswer(List<String> useranswer) {
		this.useranswer = useranswer;
	}






	public Map<String, Object> getSession() {
		return session;
	}






	public void setSession(Map<String, Object> session) {
		this.session = session;
	}






	public String getId() {
		return id;
	}






	public void setId(String id) {
		this.id = id;
	}

	
	



	
	
	



}
