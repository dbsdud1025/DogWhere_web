<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<section id="main">
	<!--슬라이드 -->

	<!-- 강아지 미분실상태 -->
	<article class="swiper" style="height: 500px;">
		<div class="swiper-container mySwiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="wrap">
						<div class="main3">
							<div class="text_center">
								<h2 style="color: white">
								 <span style="color: #FFC245">강아지의 주인</span>을 찾고 싶으신가요?<br>
									<span style="font-size: 40px; color: #FFC245;">나어디개 앱</span><span style="font-size: 30px;">을 이용중인 견주라면 찾아드릴 수 있습니다!</span>
								</h2>
								<br> <br>
								<ul>
									<li><a href="dogbreed.jsp"> 강아지 사진 찍기 </a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="swiper-slide">
					<div class="wrap">
						<div class="main3">
							<div class="text_center">
								<h2 style="color: white">
									주인이 보이지 않다구요?<br> <span style="font-size: large;">그렇다면
										주인에게 재요청해보세요!</span>
								</h2>
								<br> <br>
								<ul>
									<li><a href="#">강아지 분실 상태 재요청</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>


			<!-- 슬라이드 버튼 -->
			<div class="swiper-button-next">
				<img src="./img/next_btn.png">
			</div>
			<div class="swiper-button-prev">
				<img src="./img/next_btn.png">
			</div>
		</div>
	</article>


	<article class="main1">
		<div class="wrap">
			<div>
				<h3 class="text_center">나어디개 앱에서 무엇을 할 수 있나요?</h3>
				<ul class="overflow">
					<li>
						<ul class="overflow">
							<li class="float_left">
								<div>
									<h3>
										다양한 강아지들과 함께 <br>산책할 수 있는 산책 모임!
									</h3>
									<span> 특정 장소에서 같이 산책하길 원하는 견주들과 <br>산책 모임을 만들거나 
									 참여하여 친밀감을 쌓고<br> 강아지들에게는 사회성을 길러줄 수 있어요!
									</span>
								</div>
							</li>
							<li class="float_right gray h3-box">
								<div class="abs_center">
									<h3 class="text_center">
										사용자가 원하는 조건의<br>산책 모임
									</h3>
								</div>
							</li>
						</ul>
					</li>
					<li>
						<ul class="overflow">
							<li class="float_left gray h3-box">
								<div class="abs_center">
									<h3 class="text_center">
										한눈에 확인하기 쉬운<br>산책 습관
									</h3>
								</div>
							</li>
							<li class="float_right">
								<div>
									<h3>
										목표 산책 시간을 설정하고<br> 규칙적인 산책을 할 수 있는<br>산책 시간 측정!
									</h3>
									<span>목표 시간과 횟수를 설정하여<br> 매주 규칙적인 산책을 할 수 있고,<br> 산책 캘린더를 통해 일일 산책 시간과<br> 산책 일지를 작성할 수 있어요!
									</span>
								</div>
							</li>
						</ul>
					</li>
					<li>
						<ul class="overflow">
							<li class="float_left">
								<div>
									<h3>
										QR코드가 각인된 목걸이를<br> 활용하여 실종견 방지!
									</h3>
									<span>강아지를 발견한 사람이 QR코드를 스캔하고<br> 나어디개 웹에 접속할 수 있어요!<br> 또한 웹에 강아지 사진을 등록하면 <br>강아지 견종 분류 AI 기술을 이용하여 
									실종된 동일한 견종의 강아지들을 확인하여 <br> 주인과 컨택할 수 있어요!
									</span>
								</div>
							</li>
							<li class="float_right gray h3-box">
								<div class="abs_center">
									<h3 class="text_center">
										실종견을 방지하는<br>QR목걸이
									</h3>
								</div>
							</li>
						</ul>
					</li>					
				</ul>
			</div>
		</div>
	</article>


</section>
<%@ include file="../footer.jsp" %>
