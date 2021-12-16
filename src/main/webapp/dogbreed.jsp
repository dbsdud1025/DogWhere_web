<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<div class="container">
	<div class="row text-center py-5">
		<div class="col">
			<h1>강아지 사진을 찍어보세요</h1>
			<p id="status">사진으로 견종을 파악하고 주인의 정보를 확인할 수 있습니다!</p>
			<br> <br>
			<div class="spinner-border text-primary" id="loader"></div>
			<div class="card">
				<img id="img" src="img/icon.svg"></img><br> <br>
				<div class="card-body">
					<h1 id="result"></h1>
					<input class="btn btn-outline-secondary" id="input" type="file"
						name="file" /> <a id="location" href="doglist.jsp?state=false"
						style="font-size: 20px; color: black;">해당 견종 분실 강아지 리스트 확인하기</a><br>
					<br>
				</div>
			</div>
		</div>
	</div>
</div>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous"></script>

<script
	src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@3.11.0/dist/tf.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@teachablemachine/image@0.8/dist/teachablemachine-image.min.js"></script>

<script>
	const url = new URL(document.location.href);
	//URLSearchParams 객체
	const urlParams = url.searchParams;
	var state = urlParams.getAll('state');
	//document.write(state);
	dogbreed(state);
</script>
<%@ include file="../footer.jsp"%>