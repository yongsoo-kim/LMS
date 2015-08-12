<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>3조 프로젝트</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="<s:url value="/css/bootstrap.min.css"/>"rel="stylesheet">
    <link href="<s:url value="/css/custom.css"/>" rel="stylesheet">
    <!-- 로그인 테스트 모듈 CSS지정 시작-->
     <link href="<s:url value="/css/logintest.css"/>" rel="stylesheet">
     <!-- 로그인 테스트 모듈 CSS지정 끝-->
     <!-- 리스트 테이블 CSS 지정 시작 -->
     <link href="<s:url value="/css/listtable.css"/>" rel="stylesheet">
     <!-- 리스트 테이블 CSS 지정  끝-->
     <!-- 스타일된 버튼 CSS 지정 시작 -->
     <link href="<s:url value="/css/style.css"/>" rel="stylesheet">
     <!-- 스타일된 버튼 CSS 지정  끝-->
     
     
    <link href="<s:url value="/jquery-plugin/anythingSlider/anythingslider.css"/>" rel="stylesheet">
    <script src="<s:url value="/js/respond.js"/>"> </script>
    <script src="<s:url value="/js/jquery-1.7.2.min.js"/>"></script>
    <script src="<s:url value="/jquery-plugin/anythingSlider/jquery.anythingslider.min.js"/>"></script>
    <script src="<s:url value="/js/bootstrap.min.js"/>"></script>
  	<!--  웹에디터(Ckeditor) 적용 시작 -->
  	<script src="<s:url value="/jquery-plugin/ckeditor/ckeditor.js"/>"></script>
  	<!--  웹에디터(Ckeditor) 적용 끝 -->
	
    <script src="<s:url value="/jquery-plugin/mctabs/javascript-tabs.js"/>" type="text/javascript"></script>
	<link href="<s:url value="/jquery-plugin/mctabs/generic-notForMcTabs.css"/>" rel="stylesheet" type="text/css" />
    <link href="<s:url value="/jquery-plugin/mctabs/template2/mctabs.css"/>" rel="stylesheet" type="text/css"/>
	<link href="<s:url value="/css/bootstrap-table.css"/>" rel="stylesheet">
	<script src="<s:url value="/js/bootstrap-table.js"/>"></script>
	   
    <style type="text/css">
    th {text-align:center;}
    
    
    </style>
    <script type="text/javascript">
    
  //페이지 로딩과 동시에 실행되는 자바 스크립트 및 jQuery 시작
    $(document).ready(function() {
    	
    	CKEDITOR.config.customConfig = '<s:url value="/jquery-plugin/ckeditor/config.js"/>';
    	$('#objArea').hide();
    	/* $('#sbjArea').hide(); */
    	$('.act2').hide();
    	
	
    }); 
  
  //페이지 로딩과 동시에 실행되는 자바 스크립트 및 jQuery
		
    
  //일반적인 자바 스크립트 기능들
 

	function cancelcheck(){
		alert('정말로 취소하시겠습니까?');
	
	}
  
 
  	//페이징 관련 자바 스크립트
  function pagingFormSubmit(currentPage) {
	document.pagingForm.currentPage.value = currentPage;
	document.pagingForm.submit();
	}    
    

    
    
    
    
    
    </script>
    
</head>

<body>
<div class="container">
	<!------------- 로그인, 회원가입, 마이페이지, 로그아웃관련 부분  시작------------------------- -->
		<s:if test="%{#session.userSign.id!=null}">
				<div class="navbar navbar-defalut nav-justified navbar-fixed-top " style="border:1px solid black; background-color:#ddd; height:40px; padding:3px;">
					
		    		<span style="position:relative; left:70%; padding:5px;">
		    		<b>반갑습니다&nbsp;${sessionScope.userSign.id}님&nbsp;</b><!--updated-->
		    		<a href='<s:url value ="/member/mypage_details.action"/>' class="btn btn-info btn-sm">마이페이지</a>
		    		&nbsp;
		    		&nbsp;
		    		<a href='<s:url value ="/member/logout.action"/>' class="btn btn-danger btn-sm ">로그아웃</a>
		    		</span>
	    		 </div>
		</s:if>
		<s:else>
				<div class="navbar navbar-defalut nav-justified navbar-fixed-top " style="border:1px solid black; background-color:#ddd; height:40px; padding:3px;">
			    	<span style="position:relative; left:80%; padding:5px;">
			    		<a href='<s:url value ="/member/memberJoinForm.action"/>' class="btn btn-success btn-sm">회원가입</a>
			    		&nbsp;
			    		&nbsp;
			    		<a href='<s:url value ="/member/loginForm.action"/>' class="btn btn-primary btn-sm ">로그인</a>
			    	</span>
	    		 </div>
		</s:else>
		 <!------------- /로그인, 회원가입, 마이페이지, 로그아웃관련 부분 끝------------------------- -->

<!-- 네비게이션의 액션을 정리하는곳 -->
	 <!-- 홈 --> 	
	 	 <s:url value="/index.action" var="goIndex"></s:url>
	 	
	 
	 <!-- 커뮤니티 -->
  		 <!-- 통합게시판으로 이동함 -->
  	 	 <s:url value="/bbs/bbsList.action" var="goBbsList"></s:url>



    <!-- row 1: header -->
    <header class="row">
    	<div class="col-lg-4 col-sm-5">
        	<a href="index.jsp"><img src="/LMS/images/KUpEzwG.gif" alt="Wisdom Pets. click for home." class="img-responsive" style="height:200px;"></a>
        </div>
    	<div class="col-lg-8 col-sm-7">
        	<img src="/LMS/images/logo.gif" alt="" class="hidden-xs img-responsive">
        </div>
    </header>



	<!-- row 1: navigation -->

   	<div class="row">

    	<nav class="navbar navbar-default navbar-inverse nav-justified">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#collapse">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
    				<span class="icon-bar"></span>
    				<span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="collapse">
                <ul class="nav navbar-nav">
                    <li><a href='<s:property value="#goIndex"/>'>홈</a></li>
                    <li><a href="#">공지사항</a></li>
                    <li class="dropdown"><a href="#" data-toggle="dropdown">학사관리<span class="caret"></span></a>
                    	<ul class="dropdown-menu">
                        	<li><a href="#">회원관리</a></li>
                            <li><a href="attendance/goAttendanceCheck.action">출석관리</a></li>
                            <li><a href="#">성적관리</a></li>
                            <li><a href="#">상담관리</a></li>
                        </ul>                    
                    </li>
                    
                    <li class="dropdown"><a href="#" data-toggle="dropdown">학습관리 <span class="caret"></span></a>
                    	<ul class="dropdown-menu">
                        	<li><a href="#">강의관리</a></li>
                            <li><a href="#">강의목록</a></li>
                            <li><a href="#">일정관리</a></li>
                        </ul>                    
                    </li>
                    
                     
                    <li class="dropdown"><a href="#" data-toggle="dropdown">커뮤니티 <span class="caret"></span></a>
                    	<ul class="dropdown-menu">
                        	<li><a href='<s:property value="#goBbsList"/>'>통합 게시판</a></li>
                            <li><a href="#">외국어 게시판</a></li>
                        </ul>                    
                    </li>
                    <li><a href="#">사이트 정보</a></li>
                </ul> 
            </div>
         </nav> 
    </div>
  
<!-------------------------------------------컨텐츠 부분-------------------------------------------------------------- --> 
    
    <!-- row 3: article/aside -->
    
    <div class="row">
    	<article class="thumbnail col-lg-10 col-sm-10 col-lg-push-2 col-sm-push-2 "> 
        
            <ol class="breadcrumb">
              <li><a href='<s:property value="#goIndex"/>'>홈</a> <span class="glyphicon glyphicon-circle-arrow-right"></span></li>
              <li>커뮤니티 <span class="glyphicon glyphicon-circle-arrow-right"></span></li>
              <li class="active"><a href='<s:property value="#goBbsList"/>'>통합 게시판</a><span class="glyphicon glyphicon-circle-arrow-right"></span></li>
              <li>새로운 글 쓰기</li>
            </ol>
            
        <!-- 새로운 글 쓰기  -->    
 		<div>
 	<!--=========================================컨텐츠 시작===================================================== -->
 			 <ul id="tabs1" class="mctabs">
	            <li><a href="#view1">문제내기</a></li>
	            <li><a href="#view2">문제 은행</a></li>
	            <li><a href="#view3">문제 내기</a></li>
	        </ul>
	        
	       
 				 
 				 <!-- 문제은행 클릭시 -->
 			
	        <!-- 컨테이너 시작 -->
 			<div class="panel-container">				 
 				 
 <!--=========================================1번 뷰========================================= -->
 <div id="view1"> 
 1번뷰 	
 
   <div id="view1"> 
  			<center>
  			</center>
 			<h1>문제내기</h1>
 			<br>
 			<a id="objbtn" href="javascript:openObj()" class="btn btn-success">객관식</a>
 			<a id="sbjbtn" href="javascript:openSbj()" class="btn btn-success">주관식</a>
         	<br>
         	<script type="text/javascript">
         	function openObj(){
         		alert("객관식");
         		$('#sbjArea').html('');
         		var str='';
         		str+='<br>'
         		str+='<div >'
         		str+='<table class="table table-bordered table-striped">'
         		str+='<tr>'
         		str+='<th>해설</th><td><textarea id="text"></textarea></td>'
         		str+='</tr>'
         		str+='<tr>'
         		str+='<th>사지선다</th>'
         		str+='<td>'
         		str+='<label>'
         		str+='<input type="radio" name="optionsRadios"  value="1">'
         		str+='<input type="text" id="obj1">'
         		str+='</label>'
         		str+='<br>'
         		str+='<label>'
         		str+='<input type="radio" name="optionsRadios"  value="2" >'
         		str+='<input type="text" id="obj2">'
         		str+='</label>'
         		str+= '<br>'
         		str+='<label>'
         		str+='<input type="radio"  name="optionsRadios"  value="3" >'
         		str+='<input type="text"id="obj3">'
         		str+='</label>'
         		str+='<br>'
         		str+='<label>'
         		str+='<input type="radio" name="optionsRadios"  value="4" >'
         		str+='<input type="text" id="obj4">'
         		str+='</label>'
									 
         		str+='</td>'
         		str+='</tr>'
         		str+='<tr>'
         		str+='<th>답</th><td><input type="text" id="answer"></td>'

				str+='</tr>'
				str+='<tr>'
				str+='<th>해설</th><td><textarea id="explanation"></textarea></td>'
				str+='</tr>'
				str+='<tr>'
				str+='<th>난이도</th><td><input type="text" id="difficulty"></td>'
				str+='</tr>'
				str+='<tr>'
				str+='<th>태그</th><td><input type="text" value="혹시 모를까봐..."></td>'
				str+='</tr> '      				
				str+='</table>'
				str+='<a href="javascript:cancelObj()" class="btn btn-default">문제내기 취소</a>'
				str+='<a href="javascript:submitObj()" class="btn btn-default">문제내기</a>'
				str+='</div>'
         		
				$('#sbjArea').hide();
         		$('#objArea').html(str);
         		$('#objArea').show();
         	}
         	
			function openSbj(){
         		alert("주관식");
         		var str='';
         		str+='<div>'
     			str+='<table class="table table-bordered table-striped">'
     			str+='<tr>'
     			str+='<th>문제</th><td><textarea id="probtext"></textarea></td>'
     			str+='</tr>'
     			str+='<tr>'
     			str+='<th>답</th><td><input type="text" id="answer"></td>'
     			str+='</tr>'
     			str+='<tr>'
     			str+='<th>해설</th><td><textarea id="explanation"></textarea></td>'
     			str+='</tr>'
     			str+='<tr>'
     			str+='<th>난이도</th><td><input type="text" id="difficulty"></td>'
     			str+='</tr>'
     			str+='<tr>'
     			str+='<th>태그</th><td><input type="text" value="혹시 모를까봐..."></td>'
     			str+='</tr>'       				
     			str+='</table>'
     			str+='<a class="btn btn-default" href="javascript:cancelSbj()">문제내기 취소</a> &nbsp;'
     			str+='<a class="btn btn-default" href="javascript:submitSbj()">문제내기</a>'
     			str+='</div>'
         		
         		
     			$('#sbjArea').html(str);
     			
         		$('#sbjArea').show();
         		$('#objArea').html('');
         		$('#objArea').hide();
         	}
         	
			
			
         	</script>
         	
         	
         	<div id="objArea">
         		
         	</div>
         	
         	
         	<br>
         	<script type="text/javascript">
         	
         	
         	
         		function cancelObj(){
         			alert('취소');
         			$('#objArea').slideUp();
         			$('#objArea').html('');
         		}
         		
         		
         		function submitObj(){
         			alert('보내기');
         			//문제 내용 
         			/* var protext = $('#probtext').val(); */
         			 var probtext = $('#text').val();
         			//객관식 보기 1,2,3,4
         			var obj1 = $('#obj1').val();		var obj2 = $('#obj2').val();
         			var obj3 = $('#obj3').val();		var obj4 = $('#obj4').val();
         			
         			//문제타입
         			var prob_type ="obj";
         			
         			//답 
         			var answer =$('#answer').val();
         			
         			//해설
         			var explanation = $('#explanation').val();
         			//문제 낸 사람 
         			var teacher_id ='<s:property value="#session.userSign.id"/>';
         			//난이도
         			var difficulty =$('#difficulty').val();
         			//
         			alert('문제내용'+probtext+'\n'+
         				  '객관식1'+obj1+	'\n'+
         				  '객관식2'+obj2+	'\n'+
         				  '객관식3'+obj3+	'\n'+
         				  '객관식4'+obj4+	'\n'+
         				  '문제타입'+prob_type+'\n'+
         				  '답'+answer+'\n'+
         				  '해설'+explanation+'\n'+
         				 '문제낸사람'+teacher_id+'\n'+
         				  '난이도'+difficulty+'\n'
         				 
         					);
         			
         			//이제 ajax로 문제를 입력한다.
         			
         			$.ajax({
        				url:'insertProb.action',
        				type:'POST',
        				dataType:'json',
        				data:{ probtext:probtext,answer:answer , obj1:obj1,  obj2:obj2,  obj3:obj3,   obj4:obj4,   prob_type:prob_type,  explanation:explanation,  teacher_id:teacher_id,  difficulty:difficulty},
        				success:yup
        			});
         			
         			
         			
         		}
         	
         		
         		function yup(){
         			alert('엽');
         			$('#objArea').hide("slow");
         			$('#objArea').html('');
         			alert('입력하신 문제가 문제은행에 추가 되었습니다.');
         		}
         	
         	</script>
         	
         	
         	
         	
         	<div id="sbjArea">
         		
         	</div>
         	
         	<script type="text/javascript">
         	 function cancelSbj(){
         		 alert('취소합니다.');
         		 $('#sbjArea').hide();
         		 $('#sbjArea').html('');
         		 
         	 }
         	
         	function submitSbj(){
         		alert('문제내기.');
         		 
         		var probtext = $('#probtext').val();
      		
      			//문제타입
      			var prob_type ="sbj";
      			
      			//답 
      			var answer =$('#answer').val();
      			
      			//해설
      			var explanation = $('#explanation').val();
      			//문제 낸 사람 
      			var teacher_id ='<s:property value="#session.userSign.id"/>';
      			//난이도
      			var difficulty =$('#difficulty').val();
         		 
      			
      			alert('문제내용'+probtext+'\n'+
       				  '문제타입'+prob_type+'\n'+
       				  '답'+answer+'\n'+
       				  '해설'+explanation+'\n'+
       				 '문제낸사람'+teacher_id+'\n'+
       				  '난이도'+difficulty+'\n'
       				 
       					);
      			
      			//ajax
      			
      			$.ajax({
        				url:'insertProb.action',
        				type:'POST',
        				dataType:'json',
        				data:{ probtext:probtext,answer:answer, prob_type:prob_type,  explanation:explanation,  teacher_id:teacher_id,  difficulty:difficulty},
        				success:yup2
        			});
         		 
         		 
         		 
         		 $('#sbjArea').slideUp();
         		
         	}
         	
         	function yup2(){
     			alert('엽');
     			$('#sbjArea').hide("slow");
     			$('#sbjArea').html('');
     			alert('입력하신 문제가 문제은행에 추가 되었습니다.');
     		}
         	
         	</script>
 				
 	</div>		  
 </div>
  <!-- ===================================//1번뷰===================  -->
    <!-- ===================================//2번뷰===================  -->
 <div id="view2"> 
    2번뷰
    
     <center>
        <h1>[문제 은행]</h1> 
      </center>   
 		<div class="row col-lg-12 col-md-12 col-sm-12 ">
 		
		     <table data-toggle="table" id="table" data-width="400" data-click-to-select="true"  data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-pagination="true" data-search="true">
			<thead>
			<tr>
				<s:if test="#session.userSign.type == 1"><th data-checkbox="true" ></th></s:if>
				<th style="width:10px"   data-align="center" data-sortable="true" >문제번호</th>
				<th style="width:100px"  data-align="center" data-sortable="true" >작성자</th>
				<th style="width:100px"  data-align="center" data-sortable="true" >문제형식</th>
				<th style="width:100px"  data-align="center" data-sortable="true" >문제내용</th>
				
			<!-- 	<th style="width:100px"  data-align="center" data-sortable="true" >선택지</th>
				<th style="width:60px"  data-align="center" data-sortable="true" >답안</th>
				<th style="width:10px"   data-align="center" data-sortable="true" >해설</th>-->
				<th style="width:100px"  data-align="center" data-sortable="true" >난이도</th>
				<th style="width:100px"  data-align="center" data-sortable="true" >날짜</th>
				<th>출제</th>
			</tr>
			</thead>
			<tbody>
			<s:iterator value="problist">
			<tr>
			<td></td><td><s:property value="prob_id"/></td>
			<td><s:property value="teacher_id"/></td>
			<td><s:if test="prob_type=='obj'">객관식</s:if><s:else>주관식</s:else></td>
			<td><s:property value="probtext"/></td>
			<%--  <td>
				<s:if test="obj1 != null">
				<ul>
					<li><s:property value="obj1"/></li>				
					<li><s:property value="obj2"/></li>
					<li><s:property value="obj3"/></li>
					<li><s:property value="obj4"/></li>
				</ul>
				</s:if>
				<s:else>주관식</s:else>
			</td>
			<td><s:property value="answer"/></td>
			<td><s:property value="explanation"/></td> --%>
			<td><s:property value="difficulty"/></td>
			<td><s:property value="inputdate"/></td>
			<td>
				<span class="act1">
				대기중.
				</span>
				<span class="act2">
				<a class="btn btn-default" href="javascript:smtProb('<s:property value="prob_id"/>')">출제하기</a>
				</span>
			</td>
			</tr>
			</s:iterator>
			
			<%-- <!-- 반복 시작 -->
			<s:iterator value="boardlist">
			<tr>
				<s:if test="#session.userSign.type == 0"><td></td></s:if>
				<td class="boardnum"><s:property value="boardnum"/></td>
				<td><s:if test="boardtype =='jpn'"><span style="color:purple;">[일본어 작문]</s:if>		
					<a href="<s:url value="/bbs/bbsDetail.action"/>?boardnum=<s:property value="boardnum"/>"><s:property value="title"/></a>
				
 					<s:if test = "newornot !=null"><img src="<s:url value="/images/new.gif"/>"/></s:if>
 					<s:if test = "replycount !=0"><span style="color:red;">( <s:property value="replycount"/> )</span></s:if>
					<span boardnum ="<s:property value="boardnum"/>" ></span>
					<!-- 댓글의 개수가 붙도록! -->
					<!-- 새로운 글일경우 new가 붙도록! -->
					<!-- 영상파일이 참고 되어있을경우는 >표시를!! -->
				</td>
				<td><s:property value="id"/></td>
				<td><span class="inputdate" data="<s:property value="inputdate"/>"></span></td>
				<td><s:property value="rfInputdate"/></td>
				<td><s:property value="viewcount"/></td>
			</tr>
			</s:iterator>
			</tbody>        --%>
			<!-- 반복 끝 -->
			
			</table>
    </div>
    </div>		  
	<script type="text/javascript">
		function smtProb(prob_id){
			
			$.ajax({
				url:'getProb.action',
				type:'POST',
				dataType:'json',
				data:{prob_id:prob_id},
				success:placeProb
			});
					
			
			$('.suck').show();
			$('.act1').show();
			$('.act2').hide();
			
			alert(prob_id+'번 문제가 입력되었습니다.');
		}
		
		function placeProb(json){
			
			
		
			
			var str='';
				str+='<table class="table table-bordered table-striped">'
					str+='<input type="hidden" class="type" value="'+json.problem.prob_type+'">'					
					str+='<tr>'
					str+='<th style="width:30%;">문제번호</th><td class="testnumid">'+json.problem.prob_id+'</td>'
					str+='</tr>'
					str+='<tr>'
					str+='<th>문제내용</th><td><b>'+json.problem.probtext+'</b></td>'
					str+='</tr>'
					//객관식일시 나오는 부분
					if(json.problem.prob_type =='obj'){
					
					str+='<tr>'
					str+='<th class="objtype">문제보기</th>'
					str+='<td>'
					str+='<ol>'
					str+='<li>'+json.problem.obj1+'</li>'
					str+='<li>'+json.problem.obj2+'</li>'
					str+='<li>'+json.problem.obj3+'</li>'
					str+='<li>'+json.problem.obj4+'</li>'
					str+='</ol>'
					str+='</td>'
					str+='</tr>'
					//객관식일시 나오는 부분.
					}
					str+='<tr>'	
					str+='<th>답</th><td>'+json.problem.answer+'</td>'
					str+='</tr>'
					str+='<tr>'	
					str+='<th>해설</th><td style="color:blue;">'+json.problem.explanation+'</td>'
					str+='</tr>'
					str+='<tr>'	
					str+='<th>난이도</th><td>'+json.problem.difficulty+'</td>'
					str+='</tr>'
					str+='</table>'
			
			
					
			$('.waiting').html(str);							
			$('.waiting').removeClass('waiting');
			
		}
	
	</script>
   <!-- ===================================//2번뷰===================  -->
 <div id="view3"> 
  3번뷰
<div>
	<div class="col-lg-3 thumbnail">
		<div>
 	<div class="btn-group">
 	<div class="dropdown">	
 		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
     	 시험 코드
      	<span class="caret"></span>
    	</button>
    	<!-- 시험문제의 시퀀스가 오는곳. 되도록이면 시험객체를 들고와서 고정하도록 해야한다. -->
    	<ul class="dropdown-menu" role="menu" id="test_id">
     		<li><a>1따로</a></li>
      		<li><a>2따로</a></li>
    	</ul>
 	</div>
 	</div>
 	<script type="text/javascript">
 	$(document).on('click', '#test_id li a', function () {
 		 alert($(this).text());
 		 var testcode = $(this).text();
 	 $('#testcode').text(testcode);
 	});
 	
 		
 	</script>
 	</div>
 	<!-- 객관식 -->
 	<div>
 	<div class="btn-group">
 	<div class="dropdown">	
 		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
     	 객관식
      	<span class="caret"></span>
    	</button>
    	<!-- 시험문제의 시퀀스가 오는곳. 되도록이면 시험객체를 들고와서 고정하도록 해야한다. -->
    	<ul class="dropdown-menu" role="menu" id="objsel">
     		<li><a>0</a></li>
     		<li><a>1</a></li>
     		<li><a>3</a></li>
     		<li><a>5</a></li>
      		<li><a>7</a></li>
      		<li><a>10</a></li>
      		<li><a>15</a></li>
      		<li><a>20</a></li>
    	</ul>
 	</div>
 	</div>
 	<script type="text/javascript">
 	$(document).on('click', '#objsel li a', function () {
 	 alert($(this).text());
	 var objcount = $(this).text();
 	 $('#objcount').text(objcount);
 	 
 	 getTotalProb();
 
 	});
 	
 	
 	function  getTotalProb(){
 		var objcount =  Number($('#objcount').text());
 		var sbjcount =  Number($('#sbjcount').text());
 		var totalcount = objcount+sbjcount;
 		$('#totalcount').text(totalcount);
 		
 		
 	}
 	
 	</script>
 	</div>
 	
 	
 	
 	<!-- 주관식 -->
 	<div>
 	<div class="btn-group">
 	<div class="dropdown">	
 		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
     	 주관식
      	<span class="caret"></span>
    	</button>
    	<!-- 시험문제의 시퀀스가 오는곳. 되도록이면 시험객체를 들고와서 고정하도록 해야한다. -->
    	<ul class="dropdown-menu" role="menu" id="sbjsel">
     		<li><a>0</a></li>
     		<li><a>1</a></li>
     		<li><a>3</a></li>
     		<li><a>5</a></li>
      		<li><a>7</a></li>
      		<li><a>10</a></li>
    	</ul>
 	</div>
 	</div>
 	<script type="text/javascript">
 	$(document).on('click', '#sbjsel li a', function () {
 	 alert($(this).text());
	 var sbjcount = $(this).text();
 	 $('#sbjcount').text(sbjcount);
 	 
 	getTotalProb();
 	});
 	</script>
 	
 	
 	
 	</div><!-- 첫번째 그룹 끝 -->
 	
 	
 	
 	<!-- 시간 -->
 	<div><!-- 두번째 버튼그룹 -->
 	<div class="btn-group">
 	<div class="dropdown">	
 		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
     	 시간
      	<span class="caret"></span>
    	</button>
    	<!-- 시험문제의 시퀀스가 오는곳. 되도록이면 시험객체를 들고와서 고정하도록 해야한다. -->
    	<ul class="dropdown-menu" role="menu" id="hoursel">
     		<li><a>0</a></li>
     		<li><a>1</a></li>
      		<li><a>2</a></li>
      		<li><a>3</a></li>
    	</ul>
 	</div>
 	</div>
 	<script type="text/javascript">
 	$(document).on('click', '#hoursel li a', function () {
 	 alert($(this).text());
	 var testhour = $(this).text();
 	 $('#testhour').text(testhour);
 	});
 	</script>
 	
 	
	<div class="btn-group">
 		<div class="dropdown">	
 		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
     	 분
      	<span class="caret"></span>
    	</button>
    	<!-- 시험문제의 시퀀스가 오는곳. 되도록이면 시험객체를 들고와서 고정하도록 해야한다. -->
    	<ul class="dropdown-menu" role="menu" id="minsel">
     		<li><a>0  </a></li>
     		<li><a>10  </a></li>
      		<li><a>15  </a></li>
      		<li><a>20  </a></li>
      		<li><a>25  </a></li>
      		<li><a>30  </a></li>
      		<li><a>35  </a></li>
      		<li><a>40  </a></li>
      		<li><a>45  </a></li>
      		<li><a>50  </a></li>
      		<li><a>55  </a></li>
    	</ul>
 	</div>
 	</div>
 	<script type="text/javascript">
 	$(document).on('click', '#minsel li a', function () {
 	 alert($(this).text());
 	 var testmin = $(this).text();
 	 $('#testmin').text(testmin);
 	 
 	});
 	</script>
 	
 	
 	</div><!-- 두번째 버튼 그룹 -->
	</div>
	<div class="col-lg-9 thumbnail">
	<h4>시험코드:<span style="color:blue;" id="testcode"></span></h4>
	<h4>객관식수:<span style="color:blue;" id="objcount">0</span></h4>
	<h4>주관식수:<span style="color:blue;" id="sbjcount">0</span></h4>
	<h4>총문제수:<span style="color:blue;" id="totalcount">0</span></h4>
	<%-- <h4>
		시험시간:<span style="color:blue;" id="testhour">0</span>시간
		<span style="color:blue;" id="testmin">0</span>분
	</h4> --%>
	<a href="javascript:makeform()" class="btn btn-success btn-block">문제폼보기</a>
	
	</div>
	</div>
	
	<!-- 문제내는 양식 -->
	<div class="col-lg-12 thumbnail">
		<script type="text/javascript">
			function makeform(){
				//우선 각각의 문제수를 구한뒤
				var objcount =  Number($('#objcount').text());
		 		var sbjcount =  Number($('#sbjcount').text());
		 		//var totalcount = objcount+sbjcount;
		 		
		 		//각각의 문제수에 맞는 범위를 정해준다.
		 		var objstr='';
		 		//우선은 객관식부터
		 		for(var i=0;i<objcount;i++){
		 			 objstr+='<div class="thumbnail formform" style="background-color: #f0ad4e;">'
		 			 objstr+='<b>'+(i+1)+'번 문제</b>'
		 			 objstr+='<a class="btn btn-info suck ">'+(i+1)+'번문제 선택하기</a>'
		 			 objstr+='<div  class="thumbnail">'
		 			 objstr+='<center><h2><img src="<s:url value="/images/upward.gif"/>"/>문제선택하기 버튼을 클릭해 문제를 배정해주세요.</h2></center>'
		 			 objstr+='</div>'
		 			objstr+='</div>'
		 
		 		}
		 		$('#objfm').html(objstr);
		 		
		 		
		 		var sbjstr='';
		 		//그다음은 주관식
				for(var i=0;i<sbjcount;i++){
						 sbjstr+='<div class="thumbnail formform" style="background-color:#5bc0de;">'
						 sbjstr+='<b>'+(i+1)+'번 문제</b>'
			 			 sbjstr+='<a class="btn btn-primary suck ">'+(i+1)+'번문제 선택하기</a>'
			 			 sbjstr+='<div class="thumbnail">'
			 			 sbjstr+='<h2>문제선택하기 버튼을 클릭해 문제를 배정해주세요</h2>.'
			 			 sbjstr+='</div>'
			 			 sbjstr+='</div>'
		 		}
				$('#sbjfm').html(sbjstr);
		 			
			}
		</script>
		객관식
		<div id="objfm">
			<!-- <div class="thumbnail">
			객관식 1번 						
			<a  class="btn btn-success suck">1번문제 선택하기</a>
				<div id="objex1" class="thumbnail">
			
					문제내용
			
				</div>
			</div>
			<div class="thumbnail">
			객관식 2번
			<a class="btn btn-success suck">2번문제 선택하기</a>				
				<div id="objex2" class="thumbnail">
					문제내용2
			
				</div>				
			</div>
			 -->

		</div>
		
		주관식
		<div id="sbjfm"></div>
		
		<!-- 마지막 버튼 -->
		<center>
			<a href="javascript:cancelTest()" class="btn btn-default">시험 취소하기</a>
			<a href="javascript:submitTest()" class="btn btn-default">해당과목 시험내기</a>
		</center>
		<script type="text/javascript">
		
			function cancelTest(){
				if(confirm('정말 시험을 취소하시겠습니까? 메인홈으로 돌아갑니다.')){
					
					location.href='<s:url value="/index.action"/>';
				}
					
			}
			function submitTest(){
				
				var formtotal= $('.formform').length;//문제 토탈 번호
				var testnum =$('.testnumid').length;//내가 제출한 문제 번호
				
				/* 만일 낸문제와 박힌 문제수가 다르다면 */
				if(formtotal != testnum ){
					alert('출제를 덜 하셨습니다.');
					return false;
				}
					
				
				else{
					
					
					var objchi =$('#objfm').children().length;
					var sbjchi =$('#sbjfm').children().length;
					
					var $obj = $('#objfm').children();
					var $sbj = $('#sbjfm').children();
					
					for(var i=0;i<objchi;i++){
						if(($obj.eq(i).find('.type').val())!='obj'){
							alert('객관식 '+(i+1)+'번째 문제란에 주관식이 출제되었습니다!\n객관식 문제를 출제해주세요.');
							return false;
						}
						
					}
					
					for(var j=0;j<sbjchi;j++){
						if(($sbj.eq(j).find('.type').val())!='sbj'){
							alert('주관식 '+(j+1)+'번째 문제란에 객관식이 출제되었습니다!\n주관식 문제를 출제해주세요.');
							return false;
						}
					}
					
					
					
					
					
					
					var testnum =$('.testnumid').length;//내가 제출한 문제 번호
					for(var i=0;i<testnum;i++){
						
						//문제id
						var prob_id = Number($('.testnumid').eq(i).text());
						//테스트용
						var test_seq=7;
					
						alert(prob_id);
						$.ajax({
	        				url:'submitTest.action',
	        				type:'POST',
	        				dataType:'json',
	        				data:{prob_id:prob_id,test_seq:test_seq},
	        				success:function(){
	        					alert('입력');
	        				}
	        			});
					}
				}
			}
		</script>
		
		
		
		
		<!-- ====================== 자바 스크립트 부분 ===================== -->
			<script type="text/javascript">
			 $(document).on('click', '.suck', function(e) {
				 alert('헤이');
					//이것만 제외하고 나머지는 비선택됨으로 바꿈
					//전체 버튼 숨기기
					$('.suck').hide();
					//자기자신 받기
					$this =$(this);
					//내용을 바꾸기 
					($this.next()).html('<center><img width="45px" height="45px" src="<s:url value="/images/loading.gif"/>"/><a href="#view2"><img src="<s:url value="/images/bank.png"/>"/></a><h3>문제은행을 클릭하셔서 문제를 선택하세요.</h3></center>');
					//해당 div상태를 active하게 바꿀것.
					($this.next()).addClass('waiting');
					//문제은행의 문제출제부분을 바꿔줄것.
					$('.act1').hide();
					$('.act2').show();
					
			 }); 
			
			/*  $('.suck').click(function(){
				 alert('헤이');
				//이것만 제외하고 나머지는 비선택됨으로 바꿈
				//전체 버튼 숨기기
				$('.suck').hide();
				//자기자신 받기
				$this =$(this);
				//내용을 바꾸기 
				($this.next()).html('<center><h1>대기중...</h1></center>');
				//해당 div상태를 active하게 바꿀것.
				($this.next()).addClass('waiting');
				//문제은행의 문제출제부분을 바꿔줄것.
				$('.act1').hide();
				$('.act2').show();
				
				
			 }); */
			</script>


</div>
 

 </div>
 
 
 	 <!-- 컨테이너 끝 -->
 
 
 
 			
		
 
   <!--=========================================컨텐츠 끝===================================================== -->	  
		 </div>	      	
        </article>
       
        <aside class="col-lg-2 col-sm-2 col-lg-pull-10 col-sm-pull-10 ">
       		
       		<div class="thumbnail">
       			<h3>스택 네비게이션</h3>
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#">선택사항1</a></li>
                <li><a href="#">선택사항2</a></li>
                <li><a href="#">선택사항3</a></li>
                <li><a href="#">선택사항4</a></li>
            </ul> 
       		
       		
       		</div>
       
        </aside>
        
 </div><!-- end row 3 -->       
<!-------------------------------------------컨텐츠 부분-------------------------------------------------------------- --> 
    	

    <!-- row 4 -->
    <footer class="row">
         <p><small>본 웹사이트는 SC마스터 학생들을 지원하기 위해 테스트중이며 현재 어떠한 경제적 지원도 받고 있지 않습니다.</small></p>
         <p><small> Produced by Young-Bo Lee, team 3 Leader.  all right reserved.</small></p>
    </footer>

</div>
 <!-- end container -->

<!-- javascript -->
<!-- 	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
		$('a.btn-info').tooltip()
			$('#slider').anythingSlider();
	</script> -->
</body>
</html>
