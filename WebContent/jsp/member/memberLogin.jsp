<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    }); // end ready
		
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();            
            reader.onload = function (e) {
                $('#target').attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]);
        }
    }//profile사진 미리보기
    </script>
    
</head>

<body>
<div class="container">

	<div class="navbar navbar-defalut nav-justified navbar-fixed-top " style="border:1px solid black; background-color:#ddd; height:40px; padding:3px;">
    	<span style="position:relative; left:80%; padding:5px;">
    		<a href="memberJoinForm.action" class="btn btn-success btn-sm">회원가입</a>
    		&nbsp;
    		&nbsp;
    		<a href="#" class="btn btn-primary btn-sm ">로그인</a>
    	</span>
    
    </div>
    
    <!-- 네비게이션의 액션을 정리하는곳 -->
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
                    <li><a href="../index.action">홈</a></li>
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
    	<article class="thumbnail"> <!-- col-lg-9 col-sm-8 col-lg-push-3 col-sm-push-4  -->
        
            <ol class="breadcrumb">
              <li><a href="../index.action">홈</a> <span class="glyphicon glyphicon-circle-arrow-right"></span></li>
              <li>로그인</li>
            </ol>
        	
        </article>
        <div class="row">
        <form action="login.action" method="post" role="form">
         <div class="col-lg-offset-4 col-lg-4">
        	
			  <div class="form-group">
			    <label for="id">아이디</label>
			    <input type="id" class="form-control" id="id" name="id">
			  </div>
			  <div class="form-group">
			    <label for="pwd">비밀번호</label>
			    <input type="password" class="form-control" id="pwd" name="password">
			  </div>
			  <!-- <div class="checkbox">
			    <label><input type="checkbox"> Remember me</label>
			  </div> -->
		 </div>
		  <div class="form-group">
			    <!-- <div class="col-lg-offset-3 col-lg-9"><label for="type" style="font-weight:bold;font-size:125%;">회원구분</label></div> -->
			    <div class="col-lg-offset-6 col-lg-1" style="font-weight:bold;">
					<select name="type">
						<option value="0">관리자</option>
						<option value="1">선생님</option>
						<option value="2" selected>학생</option>
					</select>
				</div>
				<div class="col-lg-1">
			    	<button type="submit" class="btn btn-primary">로그인</button>
			    </div>
		  </div>
		 
		 </form>	
        </div><!-- form -->
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
