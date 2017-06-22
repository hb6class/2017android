<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/jquery.mobile-1.4.5.min.css">
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript">
	$(document).on('mobileinit',function(){
		
		$.mobile.ajaxLinksEnabled=false;
		$.mobile.ajaxFormsEnabled=false;
		$.mobile.ajaxEnabled=false;
			
		$(document).on('pagebeforeshow','#main',function(){
			$('#vlist').html("");
		});
		$(document).on('pageshow','#main',function(){
		
			$.getJSON('http://203.236.209.193:8080/jqmDay04/list.json',function(data){
			//	{'root':[{sabun:xxx,name:xxx,....},{},{}]}
				$.each(data.root,function(idx,val){
					var msg='<li><a href="#">'
					msg+='<h2>'+val.name+'</h2>';
					msg+='<p>'+val.sabun+'</p>';
					msg+='<p class="ui-li-aside">'+val.nalja+'</p>';
					msg+='<span class="ui-li-count">'+val.pay+'</span>';
					msg+='</a></li>';
					$('#vlist').append(msg);
					$('#vlist').listview();
					$('#vlist').listview('refresh');
				});
			});
			
		});
		
	});


</script>

<script type="text/javascript" src="js/jquery.mobile-1.4.5.min.js"></script>

</head>
<body>
	<div id="main" data-role='page' data-theme='a'>
		<div data-role='header'>
			<h1>리스트페이지</h1>
		</div>
		<div data-role='content'>
			<ul id="vlist" data-role='listview' data-inset='true'>
			
			</ul>
		</div>
		<div data-role='footer' data-position='fixed'>
			<div data-role='navbar'>
				<ul>
					<li><a href="./">HOME</a></li>
					<li><a href="add.jsp">글쓰기</a></li>
				</ul>
			</div>
		</div>	
	</div>
</body>
</html>










