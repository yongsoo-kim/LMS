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
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/custom.css" rel="stylesheet">
    <link href="../jquery-plugin/anythingSlider/anythingslider.css" rel="stylesheet">
    <link href="../jquery-plugin/mctabs/generic-notForMcTabs.css" rel="stylesheet" type="text/css" />
    <link href="../jquery-plugin/mctabs/template2/mctabs.css" rel="stylesheet" type="text/css" />
    <script src="../jquery-plugin/mctabs/javascript-tabs.js" type="text/javascript"></script>
    
    <script src="../js/respond.js"></script>
    <script src="../js/jquery-1.7.2.min.js"></script>
    <script src="../jquery-plugin/anythingSlider/jquery.anythingslider.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  
		
    <script type="text/javascript">
    $(document).ready(function() {
    	$('a.btn-info').tooltip();
		$('#slider').anythingSlider({
			buildArrows : false,
			autoPlay : true,
			buildStartStop : true
			
			
		});
		$("#profile").change(function(){
	        readURL(this);
	    });
		$(".active").click(sideMenuChange);
		$(".unactivated").click(sideMenuChange);
    }); // end ready
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();            
            reader.onload = function (e) {
                $('#target').attr('src', e.target.result);
            };
            
            reader.readAsDataURL(input.files[0]);
        }
    }//profile사진 미리보기
    function updateForm(){
	     $('#eipDiv').html('<div class="col-lg-1" style="font-weight:bold;font-size:140%">유</div>'
				  		  +'<div class="col-lg-1"><input type="radio" class="form-control" name="student.eip" value=1 checked/></div>'
				  		  +'<div class="col-lg-1" style="font-weight:bold;font-size:140%">무</div>'
						  +'<div class="col-lg-1"><input type="radio" class="form-control" name="student.eip" value=0 /></div>');
	     $('#jlptDiv').html('<select class="form-control" name="student.japanese">'
				  			+'<option>N1</option>'
				  			+'<option>N2</option>'
				  			+'<option>N3</option>'
				  			+'<option>N4</option>'
				  			+'<option>N5</option>'
				  			+'<option>없음</option>'
							+'</select>');
	     $('#emailDiv').html('<input type="email" class="form-control" id="email" name="student.email" value="<s:property value="%{#session.userSign.email}"/>" placeholder="ex)abcde@naver.com">');
	     $('#phoneDiv').html('<input type="text" class="form-control" id="phone" name="student.phone" value="<s:property value="%{#session.userSign.phone}"/>" placeholder="연락처">');
	     $('#updateBtn').html('<button type="submit" class="btn btn-success">수정</button>');
			      
    }
    function sideMenuChange(){
    	$(".unactivated").attr("class","unactivated");
    	$(".active").attr("class","unactivated");
    	$(this).attr("class","active");
    }
    function loadPropic(){
    	var path = "<s:property value='%{path}'/>";
    	var propic = "<s:property value='%{#session.userSign.propic}'/>";
    	var fullPath = path+propic;
    	$("#propicView").html('<img id="target" src='+fullPath+' alt="your image" height="120px" width="100px"/>');
    	alert(fullPath);
    	
    }
    </script>
    
</head>

<body>
<div class="container">
	
	<s:if test="%{#session.userSign.id!=null}">
				<div class="navbar navbar-defalut nav-justified navbar-fixed-top " style="border:1px solid black; background-color:#ddd; height:40px; padding:3px;">
					
		    		<span style="position:relative; left:70%; padding:5px;">
		    		<b>반갑습니다&nbsp;${sessionScope.userSign.id}님&nbsp;</b>
		    		<a href="mypage_details.action" class="btn btn-info btn-sm">마이페이지</a>
		    		&nbsp;
		    		&nbsp;
		    		<a href="logout.action" class="btn btn-danger btn-sm ">로그아웃</a>
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
		
		
	 <!-- 홈 --> 	
	 	 <s:url value="/index.action" var="goIndex"></s:url>
	 	
	 
	 <!-- 커뮤니티 -->
  		 <!-- 통합게시판으로 이동함 -->
  	 	 <s:url value="/bbs/bbsList.action" var="goBbsList"></s:url>
 	
		
		

    <!-- row 1: header -->
    <header class="row">
    	<div class="col-lg-4 col-sm-5">
        	<a href="index.action"><img src="../images/KUpEzwG.gif" alt="Wisdom Pets. click for home." class="img-responsive" style="height:200px;"></a>
        </div>
    	<div class="col-lg-8 col-sm-7">
        	<img src="../images/logo.gif" alt="" class="hidden-xs img-responsive">
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
                    <li><a href="index.action">홈</a></li>
                    <li><a href="#">공지사항</a></li>
                    <li class="dropdown"><a href="#" data-toggle="dropdown">학사관리<span class="caret"></span></a>
                    	<ul class="dropdown-menu">
                        	<li><a href="memberManagement.action">회원관리</a></li>
                            <li><a href="#">출석관리</a></li>
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
    
    	<article class="thumbnail col-lg-9 col-sm-8 col-lg-push-3 col-sm-push-4">
        
            <ol class="breadcrumb">
              <li><a href="index.action">홈</a> <span class="glyphicon glyphicon-circle-arrow-right"></span></li>
              <li class="active">마이페이지</li>	
            </ol>
         <div class="clearfix visible-xs visible-lg"></div>
           
        </article>
         <div class="col-lg-9 col-sm-8 col-lg-push-3 col-sm-push-4" style="margin-top:0px;">
	        <ul id="tabs1" class="mctabs">
	            <li><a href="#view1">상세정보</a></li>
	            <li><a href="#view2" id="mySubjectList">내 강의보기</a></li>
	            <li><a href="#view3">성적조회</a></li>
	        </ul>
	        <div class="panel-container">
	            <div id="view1">               
	                <form action="member/profileUpdate.action" method="post" class="form-horizontal" role="form">
		        		<div class="col-lg-1"></div>
		        		<div class="col-lg-2" id="propicDiv" style="width:100px">
		        			<div style="height:120px;width:100px;border:1px solid black;">
		        			 <img id="target" src="../image/logo.gif" alt="your image" height="120px" width="100px"/>
		        			</div>
		        			<input type='file' id='profile' name='student.propic'/>
		        		</div>
		        		<div class="col-lg-9">
		        			<div class="col-lg-offset-8">
		        				<s:if test="%{#session.userSign.confirm==0}">
		        				  <span class="btn btn-primary">미승인</span>
		        				</s:if>
		        				<s:elseif test="%{#session.userSign.confirm==1}">
								  <div class="form-group">
								    <label class="col-lg-offset-2 col-lg-2 control-label">반</label>
								    <div class="col-lg-5">
								      <s:property value="%{#session.userSign.class_}"/>
								    </div>
								  </div>
								  <div class="form-group">
								    <label class="col-lg-offset-2 col-lg-2 control-label">기수</label>
								    <div class="col-lg-5">
								      <s:property value="%{#session.userSign.flagnum}"/>
								    </div>
							      </div>
							    </s:elseif>
						</div>
							  <div class="form-group">
							  	<label for="inputPassword2" class="col-lg-offset-2 col-lg-2 control-label">이름</label>
							  	<div class="col-lg-5" id="nameDiv">
							  	  <s:property value="%{#session.userSign.name}"/>
							      <!-- <input type="password" class="form-control" id="inputPassword2" placeholder="비밀번호 확인"> -->
							      <input type="hidden" name="student.type" value="2">			    
							  	</div>
							  </div>
						</div><!-- 업로드이미지자리를위한 form의 div묶음 -->
							  <div class="form-group">
							  	<label for="name" class="col-lg-offset-1 col-lg-2 control-label">연락처</label>
							  	<div class="col-lg-5" id="phoneDiv">
							  		<s:property value="%{#session.userSign.phone}"/>
							  		<!-- <input type="text" class="form-control" id="name" name="student.name" placeholder="이름"> -->
							  	</div>
							  </div>
							  <div class="form-group">
							  	<label for="phone" class="col-lg-offset-1 col-lg-2 control-label">생년월일</label>
							  	<div class="col-lg-5" id="birthDiv">
							  		<s:property value="%{#session.userSign.birth}"/>
							  		<!-- 	<input type="text" class="form-control" id="phone" name="student.phone" placeholder="전화번호"> -->
							  	</div>
							  </div>
							  
							  <div class="form-group">
							  	<label for="email" class="col-lg-offset-1 col-lg-2 control-label">이메일</label>
							  	<div class="col-lg-5" id="emailDiv">
							  		<s:property value="%{#session.userSign.email}"/>
							  		<!-- <input type="email" class="form-control" id="email" name="student.email" placeholder="ex)abcde@naver.com"> -->
							  	</div> <!-- <div class="pull-left">@</div>
							  	<div class="col-lg-3">
							  		<select class="form-control" id="email2">
									  <option>naver.com</option>
									  <option>hanmail.net</option>
									  <option>nate.com</option>
									  <option>gmail.com</option>
									  <option>etc..</option>
									</select>
				
							  	</div> -->
							  	
							  </div>	
							  
							  <div class="form-group">
							  	<div class="col-lg-offset-1" style="font-weight:bold; font-size:140%;">자격유무</div>
							  	<div class="col-lg-offset-2 col-lg-9"><hr size=1></div>
							  </div>
							  
							  <div class="form-group">
							  	<label for="license" class="col-lg-offset-2 col-lg-3 control-label">정보처리(산업)기사</label>
							  	<div id="eipDiv">
								<s:if test="%{#session.userSign.eip==0}">
							  		<div class="col-lg-1"  style="font-weight:bold;font-size:140%">없음</div>
							  	</s:if><s:elseif test="%{#session.userSign.eip==1}">
							  		<div class="col-lg-1"  style="font-weight:bold;font-size:140%">
										<img alt="합격" src="../images/ok.png">
									</div>
							  	</s:elseif>
							  	</div>
							  </div>
							  <div class="form-group" >
							  	<label for="license" class="col-lg-offset-2 col-lg-3 control-label">JLPT</label>
							  	<div class="col-lg-3" id="jlptDiv" style="font-weight:bold;font-size:140%">
							 		<s:property value="%{#session.userSign.japanese}"/>
							  	</div>
							  	<div class="col-lg-1 " id="updateBtn">
							      <a href='javascript:updateForm()' class="btn btn-info">수정</a>
							    </div>
							  </div>
					</form>
	            </div>
	            <div id="view2">
	                <ul id="tabs2" class="mctabs" >
	                    <li><a href="#view2-1" id="subjectList">IT</a></li>
	                    <li><a href="#view2-2">일본어</a></li>
                	</ul>        
	                <div class="panel-container" style="border:2px solid #CCC; border-radius:5px;">
	                    <div id="view2-1" style="padding:30px;">
	                    	<ul><li>IT 수강목록이 보여집니다.</li></ul>
	                 		<table style="cell-padding:5px;">
	                 			<tr><th>No.</th><th>과목</th><th>담당강사</th><th>시작일자</th><th>종료일자</th></tr>
    					   		<s:iterator value='subjectList' status='stat'>
    					   			<tr>
    					   				<td><s:property value="%{#stat.index+1}"/></td>
    					   				<td><s:property value="%{subjectList[#stat.index].subjectname}"/></td>
    					   				<td><s:property value="%{subjectList[#stat.index].id}"/></td>
    					   				<td><s:property value="%{subjectList[#stat.index].start_date}"/></td>
    					   				<td><s:property value="%{subjectList[#stat.index].end_date}"/></td>
    					   			</tr>
    					   		</s:iterator>
    					   	</table>
	                    </div>
	                    <div id="view2-2" style="padding:30px;">
	                        <ul>
	                            <li>일본어 수강목록이 보여집니다.</li>
	                        </ul>
	                    </div>
	                </div>
	            </div>
	            <div id="view3">
	            	성적보기
	            </div>
	        </div>
	    </div>
     	<aside class="col-lg-3 col-sm-4 col-lg-pull-9 col-sm-pull-8 ">
       		<div class="thumbnail">
       			<h3>마이페이지</h3>
	            <ul class="nav nav-pills nav-stacked"> <!-- class="active" -->
	                <li class="unactivated"><a href="#view1">상세정보</a></li>
	                <li class="unactivated" ><a href="#view2">내 강의보기</a></li>
	                <li class="unactivated" ><a href="#view3">성적조회</a></li>
	            </ul> 
       		</div>
        </aside>
        
       </div>   
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
