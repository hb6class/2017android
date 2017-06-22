<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div id="addform" data-role='page'>
		<div data-role='header'>
			<h1>입력 페이지</h1>
			<a href="#main" data-rel='back'>뒤로</a>
		</div>
		<div data-role='content'>
			<form action="insert.html">
				<div data-role='fieldcontain'>
					<label for="sabun">사번</label>
					<input type="text" name="sabun" id="sabun" />
				</div>
				<div data-role='fieldcontain'>
					<label for="name">이름</label>
					<input type="email" name="name" id="name" />
				</div>
				<div data-role='fieldcontain'>
					<label for="nalja">날짜</label>
					<input type="date" name="nalja" id="nalja" />
				</div>
				<div data-role='fieldcontain'>
					<label for="pay">금액</label>
					<input type="number" min="0" max="9999" name="pay" id="pay" />
				</div>
				<div data-role='fieldcontain'>
					<button type="submit">입력</button>
				</div>
			
			</form>
		<script type="text/javascript">
			$('#addform form').submit(function() {
				$.get('http://203.236.209.193:8080/jqmDay04/insert.html',{
					'sabun':$('#addform #sabun').val()
					,'name':$('#addform #name').val()
					,'nalja':$('#addform #nalja').val()
					,'pay':$('#addform #pay').val()
				});
				
				history.back();
				return false;
			});
		
		</script>
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