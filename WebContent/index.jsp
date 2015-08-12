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
    <link href="<s:url value="/jquery-plugin/anythingSlider/anythingslider.css"/>" rel="stylesheet">
    <script src="<s:url value="/js/respond.js"/>"> </script>
    <script src="<s:url value="/js/jquery-1.7.2.min.js"/>"></script>
    <script src="<s:url value="/jquery-plugin/anythingSlider/jquery.anythingslider.min.js"/>"></script>
    <script src="<s:url value="/js/bootstrap.min.js"/>"></script>
  	
		
    <script type="text/javascript">
    $(document).ready(function() {
    	
    	
    	//툴팁기능
    	$('a.btn-info').tooltip();
		
    	//이미지 슬라이더 기능
    	$('#slider').anythingSlider({
			buildArrows : false,
			autoPlay : true,
			buildStartStop : true			
		});
		//이미지 슬라이더 기능 끝.
		
		
		//로그인 테스트 모듈기능
		  $('#open').click(function() {
			 $('#login form').slideToggle(300);
			 $(this).toggleClass('close'); 
		  }); 
		//로그인 테스트 모듈기능 끝.	
    }); // 전체 자바 스크립트 ready기능 끝
		
    
    //일반적인 자바 스크립트 기능
    function probSolving(test_seq){
    	
    	if(confirm(test_seq+'번 강의(이강의)의 문제 풀기를 시작하시겠습니까?')){
    		location.href='<s:url value="/prob/ProbSolving.action?test_seq="/>'+test_seq;
    	}
    	
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
		    		<a href="member/mypage_details.action" class="btn btn-info btn-sm">마이페이지</a>
		    		&nbsp;
		    		&nbsp;
		    		<a href="member/logout.action" class="btn btn-danger btn-sm ">로그아웃</a>
		    		</span>
	    		 </div>
		</s:if>
		<s:else>
				<div class="navbar navbar-defalut nav-justified navbar-fixed-top " style="border:1px solid black; background-color:#ddd; height:40px; padding:3px;">
			    	<span style="position:relative; left:80%; padding:5px;">
			    		<a href="member/memberJoinForm.action" class="btn btn-success btn-sm">회원가입</a>
			    		&nbsp;
			    		&nbsp;
			    		<a href="member/loginForm.action" class="btn btn-primary btn-sm ">로그인</a>
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
   
	<!-- 문제 내기 --> 	
	 	<s:url value="/prob/ProbMakingForm.action" var="goProbMaking"></s:url>





    <!-- row 1: header -->
    <header class="row">
    	<div class="col-lg-4 col-sm-5">
        	<a href='<s:property value="#goIndex"/>'><img src="<s:url value="/images/KUpEzwG.gif"/>" alt="Wisdom Pets. click for home." class="img-responsive" style="height:200px;"></a>
        </div>
    	<div class="col-lg-8 col-sm-7">
        	<img src="<s:url value="/images/logo.gif"/>" alt="" class="hidden-xs img-responsive">
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
                        	<li><a href="member/memberManagement.action">회원관리</a></li>
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
  
 
    
    <!-- row 3: article/aside -->
    <div class="row">
    	<article class="thumbnail"> <!-- col-lg-9 col-sm-8 col-lg-push-3 col-sm-push-4  -->
        <!-- 브레드 스크럼을 통한 현재 위치 탐색 -->
            <ol class="breadcrumb">
              <li> <span class="glyphicon glyphicon-home"></span> <a href='<s:property value="#goIndex"/>'>홈</a></li>
            </ol>
        <!-- 브레드 스크럼을 통한 현재 위치 탐색 종료 -->    
            
        	<div  class="hidden-xs hidden-sm hidden-md">
        	<div id="slider">
		        <div><a href="#"><img src="/LMS/images/slider1.jpg" width="850" height="200" alt="Pumpkin"  ></a></div>
		        <div><a href="#"><img src="/LMS/images/slider2.jpg" width="850" height="200" alt="Grapes"   ></a></div>
		        <div><a href="#"><img src="/LMS/images/slider3.jpeg" width="850" height="200" alt="Various" ></a></div>
     	 	</div>
     	 	
     	 	
     	 	
     	 	
     	 	
     
     	 	
        	</div>
            <h1>사이트 개요</h1>
            <p><img src="<s:url value="/images/team3.jpg"/>" class="pull-right img-responsive img-rounded" style="width:250px; height:300px;"></p>
            	<!-- =======================문제 관련============================= -->
            	<p><a href='<s:property value="#goProbMaking"/>'>문제내기</a></p>
            	<p><a href="javascript:probSolving('7')">문제풀기</a></p>
            	
            	
            	
            	<!-- =======================문제 관련============================= -->
            	
         		<s:if test="#session.userSign != null">
         		<p>현재 당신이 로그인한 계정의 아이디는  ---<s:property value="#session.userSign.id"/> --- 입니다.</p>
         		</s:if>
         		<p>이상입니다. 수고하시길^_^</p>
         		
                        <!-- nested row 3a: callouts -->
         <div class="clearfix visible-xs visible-lg"></div>
           
        </article>
        
        <!-- <aside class="col-lg-3 col-sm-4 col-lg-pull-9 col-sm-pull-8 ">
       		<div class="thumbnail">
       			<form>
       				
       				<legend><b>로그인</b></legend>
       					<table>
       						<tr>
       							<td> <input type="text" name="#" id="#"  value="아이디" size="15"/></td>
       							<td rowspan="2"><button class="btn btn-success btn-block" title="로그인" style="height:60px;">로그인</button></td>
       						</tr>
       						<tr>
       							<td> <input type="text" name="#" id="#"  value="패스워드" size="15"/></td>
       						</tr>
       					</table>	
       			</form>
       		</div>
       		<br>
       		<div class="thumbnail">
       			<h3>스택 네비게이션</h3>
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#">선택사항1</a></li>
                <li><a href="#">선택사항2</a></li>
                <li><a href="#">선택사항3</a></li>
                <li><a href="#">선택사항4</a></li>
            </ul> 
       		
       		
       		</div>
       
        </aside> -->
    	

        </div><!-- end row 3 -->
    	 <div class="row">
                <div class="col-lg-6 col-xs-6">
                	<div class="thumbnail">
                        <div class="caption">
                            <h4><span class="glyphicon glyphicon-ok"></span> 공지사항</h4>
                            <p>공지사항에 관한 글이 실리는 부분입니다. 항상 중요한 학사일정이나 이벤트는 빨리 알려져야 할 필요가 있습니다. 모두가 보는 만큼 간단한 설문조사가 행해지는 기능이 추가 될수도 있겠죠.</p>
                            <p><a href="#" class="btn btn-info" data-toggle="tooltip" title="공지사항 자세히 보기">자세한 정보>></a></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-xs-6">
                     <div class="thumbnail">
                        <div class="caption">
                            <h4><span class="glyphicon glyphicon-pushpin"></span> 스케쥴</h4>
                            <p>계속되는 바쁜일정에 언제 무슨시험이 있었는지 잊어먹기 일쑤였지 않나요? 스케쥴 기능은 여러분들의 소중한 하루하루를 기록,관리해주는 기능입니다.  </p>
                            <p><a href="#" class="btn btn-info" data-toggle="tooltip" title="스케쥴 기능 자세히 보기">자세한 정보 >></a></p>
                    	</div>
                    </div>
                </div>
                </div>
                <!-- <div class="clearfix visible-md visible-xs"></div> -->
                <div class="row">
                <div class="col-lg-6 col-xs-6">
                	<div class="thumbnail">
                        <div class="caption">
                            <h4><span class="glyphicon glyphicon-heart"></span> 커뮤니티</h4>
                            <p>자유게시판에 해당하는 커뮤니티 입니다. 일반적인 자유게시판이 아닌 마스터 과정에 임하는 사람들이 좀더 재미있고 즐거운 생활이 될수있도록 상호작용을 유도하는 만남의 장이 될 것입니다.</p>
                            <p><a href="#" class="btn btn-info" data-toggle="tooltip" title="커뮤니티 기능 자세히 보기">자세한 정보 >></a></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-xs-6">
                	<div class="thumbnail">
                        <div class="caption">
                    		<h4><span class="glyphicon glyphicon-question-sign"></span> 그외 기타...</h4>
                    		<p>아직 개발중인 이 사이트에는 어떤 기능을 메인으로 할지에 관한 논의가 3조내에서 이루어지고 있습니다. D-day기능, 스마트 클라우드 마스터 뉴스, 이미지 어노테이션 기능등이 논제에 올라있습니다! </p>
                     		<p><a href="#" class="btn btn-info" data-toggle="tooltip" title="아직 해야할일이 많군요!">자세한 정보 >></a></p>
                    	</div>
                    </div>
                 </div>
            </div><!-- end nested row 3a -->
    <!-- row 4 -->
    <footer class="row">
         <p><small>본 웹사이트는 SC마스터 학생들을 지원하기 위해 테스트중이며 현재 어떠한 경제적 지원도 받고 있지 않습니다.</small></p>
         <p><small> Produced by Young-Bo Lee, team 3 Leader.  all right reserved.</small></p>
    </footer>

</div> <!-- end container -->

<!-- javascript -->
<!-- 	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
		$('a.btn-info').tooltip()
			$('#slider').anythingSlider();
	</script> -->
</body>
</html>
