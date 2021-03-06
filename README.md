# 반려견 분실 방지 웹 사이트 '나어디개'
---------------
* ## 개요
>양육 인구 증가에 비례하여 반려동물 실종률까지 증가하고 있는 가운데 반려동물 분실 시 목걸이에 부착된 QR코드로 쉽게 접근하여 반려견 분실 상태와 분석한 견종에 따라 주인에게 연락하거나 알림을 제공하는 웹사이트까지 개발하였다.
---------------
* ## 개발 환경 및 사용 기술
* 운영 체제 - Windows
* 개발 툴 - Eclipse
* 개발 언어 - JavaScript
* Database - Firebase
* Server - Cafe24 Web Hosting

---------------
* ## 기능 설명

> ‘나어디개’는 분실된 강아지를 빠르게 발견할 수 있도록 서비스에 제공한다. 앱 이용자의 반려견에게 QR코드가 부착된 별도의 목걸이를 착용시키기고, 목걸이를 착용한 강아지를 발견한 사람이 QR코드를 통해서 서비스에 접근할 수 있도록 구상했다. 앱 이용자 외에 모든 사람이 서비스에 접근할 수 있는 방법이 필요했기 때문에 QR를 목걸이에 각인하여 '나어디개' 웹 사이트에 접근할 수 있도록 했다.

>‘나어디개’ 웹의 목적은 개인정보 유출을 줄이고 분실된 강아지의 주인에게 빠르게 연락하여 애견 실종률을 낮추는 것이다. 주요 기능으로는 웹에 접속했을 시 발견한 강아지를 직접 촬영하거나 보유하고 있는 이미지로 견종을 분류한다. 먼저 강아지 사진을 웹 사이트에 업로드를 하게 되면, 수천 개의 이미지로 CNN 이미지 분류 기법과 강아지 얼굴 인식 알고리즘을 이용하여 학습한 견종 분류 모델에 적용시켜 강아지 사진의 견종을 찾아낸다. 강아지의 견종이 분류되면 ‘나어디개‘ 앱에 해당 견종으로 등록되어 있고 앱에 실종 등록된 강아지 리스트가 보여진다. 발견한 강아지의 실물과 등록된 강아지의 이미지를 비교하여 일치하는 강아지 이름을 선택했을 때 주인의 정보를 얻을 수 있고 바로 연락할 수 있도록 했다. 하지만 간혹 견주 모르게 강아지가 실종되었을 경우 미분실 강아지 리스트(견주가 앱을 통해 분실 상태로 체크해놓지 않은 강아지 리스트)까지 확인할 수 있도록 한다. 하지만 여기서 강아지의 이름 선택했을 때 주인의 정보를 얻을 수 있다면 정보가 무방비하게 침해될 수 있으므로 정보는 노출하지 않고 해당 주인의 모바일앱으로 강아지 분실 여부를 확인해달라는 알림 메시지를 보낸다. 즉, 분실 상태로 체크된 강아지의 주인은 정보가 보여지고 분실 상태로 체크되지 않은 강아지의 주인은 정보가 보여지지 않으므로 일반 강아지 목걸이보다 애견 분실 가능성도 낮아질뿐더러 개인 정보 유출 가능성까지 낮아진다.
 
---------------
* ## 웹 사이트 링크
http://maniatoo.cafe24.com/

