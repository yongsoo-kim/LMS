<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>3조 프로젝트</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/custom.css" rel="stylesheet">
    <link href="../../jquery-plugin/anythingSlider/anythingslider.css" rel="stylesheet">
    <script src="../../js/respond.js"></script>
    <script src="../../js/jquery-1.7.2.min.js"></script>
    <script src="../../jquery-plugin/anythingSlider/jquery.anythingslider.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
  
		
    <script type="text/javascript">
    $(document).ready(function() {
    	$('a.btn-info').tooltip();
		$('#slider').anythingSlider({
			buildArrows : false,
			autoPlay : true,
			buildStartStop : true
		
			
		});
    }); // end ready
		
    </script>
    
</head>

<body>
<div class="container">


    <!-- row 1: header -->
    <header class="row">
    	<div class="col-lg-4 col-sm-5">
        	<a href="index.jsp"><img src="../../images/KUpEzwG.gif" alt="Wisdom Pets. click for home." class="img-responsive" style="height:200px;"></a>
        </div>
    	<div class="col-lg-8 col-sm-7">
        	<img src="../../images/logo.gif" alt="" class="hidden-xs img-responsive">
        </div>
    </header>



	<!-- row 1: navigation -->
    <div class="row">
    	<nav class="navbar navbar-default navbar-fixed-top" align="right" style="opacity:0.7;font-size:23px;font-family:'Nanum Gothic',serif;">
   			
                <span style="position:relative;">
                	<a href="#">Sign Up</a>
                		&nbsp;&nbsp;
                	<a href="#">Sign In</a>
                </span>	
                
        
		</nav>
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
                    <li><a href="#">홈</a></li>
                    <li><a href="#">공지사항</a></li>
                    <li class="dropdown"><a href="#" data-toggle="dropdown">학사관리<span class="caret"></span></a>
                    	<ul class="dropdown-menu">
                        	<li><a href="#">회원관리</a></li>
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
                        	<li><a href="#">통합 게시판</a></li>
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
              <li><a href="#">학사관리</a> <span class="glyphicon glyphicon-circle-arrow-right"></span></li>
              <li><a href="#">출석관리</a> <span class="glyphicon glyphicon-circle-arrow-right"></span></li>
              <li class="active">출석확인</li>
            </ol>
         <div class="clearfix visible-xs visible-lg"></div>
           
        </article>
     
       
        <aside class="col-lg-3 col-sm-4 col-lg-pull-9 col-sm-pull-8 ">
       		<div class="thumbnail">
       			<h3>학사관리</h3>
	            <ul class="nav nav-pills nav-stacked">
	                <li class="active"><a href="#">출석부</a></li>
	                <li><a href="#">선택사항2</a></li>
	                <li><a href="#">선택사항3</a></li>
	                <li><a href="#">선택사항4</a></li>
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
