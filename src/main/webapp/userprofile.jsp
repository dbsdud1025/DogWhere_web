<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script>
	const url = new URL(
			document.location.href);

	//URLSearchParams 객체
	const urlParams = url.searchParams;

	userInf(urlParams.getAll('user'), urlParams.getAll('state'));
</script>

<!-- 메인    -->
<section id="sub">

	<article class="sign_up01 signup_main expert">
		<div class="wrap">
			<div class="title">
				<h4>주인 정보</h4>
				<p class="gray">주인의 정보를 확인해보세요.</p>
				<br> <br>
			</div>
			<ul class="member_kinds overflow">
				<li class="box_shadow">
					<div>
						<h4>
							<div id="userName"></div>
						</h4>

						<div id="userId"></div>
						<div id="userPhone"></div>
						<a href="#">더 알아보기</a>
					</div>
				</li>
			</ul>
		</div>

		<div class="button pc">
			<a id="call" href="#">바로 연락하기</a>
		</div>
	</article>


	<%@ include file="../footer.jsp"%>