<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div class="main3">
	<div class="text_center">
		<h2 style="color: white">
			<span id="list_dogstate" style="font-size: 40px; color: #FFC245;"></span><br> <span id="list_dogstate2"
				style="font-size: 30px; color: red;"> </span><br> <a
				id="list_dogstate3" href="#"
				style="font-size: 20px; color: black;"></a><br><br>
		</h2>
	</div>
</div>

<table border="1" id="list_table">
	<tr>
		<th>강아지 분실상태</th>
		<th>강아지 이름</th>
		<th>강아지 종</th>
		<th>강아지 성별</th>
		<th>강아지 사진</th>
	</tr>

</table>
<script type="text/javascript">
	const url = new URL(document.location.href);

	//URLSearchParams 객체
	const urlParams = url.searchParams;

	var state = urlParams.getAll('state');
	var breed = urlParams.getAll('breed');
	//document.write(state);
	doglist(state, breed);
	//매개변수로 분실상태 유무
	//false가 분실, true가 미분실
</script>




<%@ include file="../footer.jsp"%>