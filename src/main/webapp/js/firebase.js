var firebaseConfig = {
	apiKey: "AIzaSyAwTJHy9hjtc6Sh_sfMfclzrToSpEDwRfU",
	authDomain: "dogwhere-ea26c.firebaseapp.com",
	databaseURL: "https://dogwhere-ea26c-default-rtdb.firebaseio.com",
	projectId: "dogwhere-ea26c",
	storageBucket: "dogwhere-ea26c.appspot.com",
	messagingSenderId: "914802691595",
	appId: "1:914802691595:web:3929ea160139e5dbb7c10e",
	measurementId: "G-2Y4SDHBDCP"
};
// Initialize Firebase

firebase.initializeApp(firebaseConfig);
const db = firebase.firestore();

class User {
	constructor(userPhone, userName, registeredProfile, userId, uid) {
		this.userPhone = userPhone;
		this.userName = userName;
		this.registeredProfile = registeredProfile;
		this.userId = userId;
		this.uid = uid;

	}

	toString() {
		return this.userPhone + ',' + this.userName + ',' + this.registeredProfile, this.userId, this.uid;
	}
}
var userConverter = {
	toFirestore: function(user) {
		return {
			userPhone: user.userPhone,
			userName: user.userName,
			registeredProfile: user.registeredProfile,
			userId: user.userId,
			uid: user.uid
		};
	},
	fromFirestore: function(snapshot, options) {
		const data = snapshot.data(options);
		return new User(data.userPhone, data.userName, data.registeredProfile, data.userId, data.uid);

	}
};

function dogbreed(State) {
	const img = document.getElementById('img');
	const result = document.getElementById('result');
	let input = document.getElementById('input');
	const modelPath = "./my_model/";
	const modelURL = modelPath + "model.json";
	const metadataURL = modelPath + "metadata.json";

	tmImage.load(modelURL, metadataURL).then(model => {
		document.getElementById('loader').style.display = 'none';
		document.getElementById('location').style.display = 'none';
		input.addEventListener('change', (e) => {
			img.src = URL.createObjectURL(e.target.files[0]);
		}, false);

		img.onload = function() {
			model.predict(img).then(predictions => {
				console.log('Predictions: ', predictions);
				predictions.sort((a, b) => (b.probability - a.probability));
				result.innerHTML = predictions[0].className + "<br>";
				$('#location').show();
				$('#location').prop('href', "doglist.jsp?state=" + State+"&breed=" + predictions[0].className);
			});

		};


	});


}

function render(doc, state) {
	let tr = document.createElement('tr');

	let dogState = document.createElement('td');
	let dogName = document.createElement('td');
	let dogBreed = document.createElement('td');
	let dogSex = document.createElement('td');
	let dogPhotourl = document.createElement('img');
	//document.getElementsByTagName('td').style="text-align: center;";
	dogPhotourl.setAttribute('id', "output");
	dogName.setAttribute('id', "name");
	dogName.setAttribute('name', doc.data().uid);

	if (state == true) {
		dogState.textContent = "???????????????";
	} else {
		dogState.textContent = "????????????";
	}
	//dogName.click =

	uid = doc.data().uid;
	dogName.textContent = doc.data().dogName;
	dogBreed.textContent = doc.data().dogBreed;
	dogSex.textContent = doc.data().dogSex;
	dogPhotourl.src = doc.data().photoUrl;
	dogPhotourl.style = "width:500px; height:500px;object-fit: cover; text-align: center;";
	//ResizeImage(doc.data().photoUrl);


	tr.appendChild(dogState);
	tr.appendChild(dogName);
	tr.appendChild(dogBreed);
	tr.appendChild(dogSex);
	tr.appendChild(dogPhotourl);


	document.getElementById("list_table").appendChild(tr);
	//?????????

	click(dogName, uid, state);


}

function ResizeImage(dogPhotourl) {
	console.log(dogPhotourl);

	// ???????????? img ????????? ???????????????
	var img = document.createElement("img");

	img.src = dogPhotourl;

	// HTML5 canvas ????????? ???????????????
	var canvas = document.createElement("canvas");
	var ctx = canvas.getContext("2d");

	// ???????????? ???????????? ???????????? ???????????????
	ctx.drawImage(img, 0, 0);

	// ???????????? 400 ?????? ???????????? ???????????????
	// ???????????? ???????????? ?????? canvas ????????? ????????? ?????????.
	var MAX_WIDTH = 400;
	var MAX_HEIGHT = 400;
	var width = img.width;
	var height = img.height;

	if (width > height) {
		if (width > MAX_WIDTH) {
			height *= MAX_WIDTH / width;
			width = MAX_WIDTH;
		}

	} else {
		if (height > MAX_HEIGHT) {
			width *= MAX_HEIGHT / height;
			height = MAX_HEIGHT;
		}
	}

	canvas.width = width;
	canvas.height = height;

	// canvas??? ????????? ????????? ???????????? ?????? ???????????????.
	var ctx = canvas.getContext("2d");
	ctx.drawImage(img, 0, 0, width, height);
	// canvas ??? ?????? ???????????? img ????????? ???????????????
	var dataurl = canvas.toDataURL("image/png");
	document.getElementById('output').src = dataurl;
}



function doglist(state, breed) {
	var Breed = breed + " ";

	if ((state + "" == 'true')) {
		document.getElementById("list_dogstate").innerHTML = "????????? ????????? ?????????";
		document.getElementById("list_dogstate2").innerHTML = "????????? ????????? ?????? ????????? ?????? ?????? ?????????!";
		document.getElementById("list_dogstate3").innerHTML = "?????? ???????????? ????????? ???????????? ????????? ???????????????";
		$("#list_dogstate3").removeAttr("href");

		State = true;
	} else {

		document.getElementById("list_dogstate").innerHTML = "?????? ????????? ?????????";
		document.getElementById("list_dogstate2").innerHTML = "??? ??? ???????????? ????????? ?????????????";
		document.getElementById("list_dogstate3").innerHTML = "????????? ????????? ????????? ????????????";
		$("#list_dogstate3").prop('href', "doglist.jsp?state=true&breed=" + Breed + "")
		State = false;
	}
	//document.write("?????? "+State);

	let ref = db.collection('users');
	let getDoc = ref.get()
		.then(doc => {

			doc.forEach(item => {
				ref.doc(item.data().uid).collection('dogprofiles')
					.get().then(doc => {

						doc.forEach(itemm => {
							if (Breed == " ") {
								if (itemm.data().dogstate == State
								) {
									render(itemm, State);
								}
							} else {
								if (itemm.data().dogstate == State &&
									itemm.data().dogBreed == Breed.trim()) {
									console.log(Breed.trim());
									render(itemm, State);
								} //?????? ??????
							}
						})
					});
			});
		})
		.catch(err => {
			console.log('Error getting document', err);
		});
}


function userInf(Uid, State) {
	var useruid = Uid + ""
	var dogstate = State + ""
	var docRef = db.collection("users").doc(useruid)
		.withConverter(userConverter)
		.get().then((doc) => {
			if (doc.exists) {
				user = doc.data();
				registeredProfile = user.registeredProfile;
				uid = user.uid;
				userPhone = user.userPhone;
				userId = user.userId;
				userName = user.userName;


				document.getElementById("userId").innerHTML = userId;
				document.getElementById("userName").innerHTML = userName;
				document.getElementById("userPhone").innerHTML = userPhone;
				$('#call').prop('href', "tel:" + userPhone)


			} else {
				// doc.data() will be undefined in this case
				console.log("No such document!");
			}


		}).catch((error) => {
			console.log("Error getting document:", error);
		});
}

function newPostPush(token) {
	console.log(token);
	const message = {
		notification: {
			"body": "???????????? ???????????? ???????????? ????????? ???????????? ?????????????????????. ????????? ??????????????? ???????????????!",
			"title": "????????????",
		},
		to: token
	}
	fetch("https://fcm.googleapis.com/fcm/send", {
		method: 'POST',
		body: JSON.stringify(message),
		headers: new Headers({
			'Content-type': 'application/json',
			'Authorization': 'key=AAAA1P59Tgs:APA91bEuZ_Hp7rsbkRmR0zWrI_uDhd9o3RMXz4oBpOeXHGc_RCJEo_-d1J-_BL5Hl4jk0KmzjZmWzzNeCOJ4n8jsiFo53QNaknXCq4fOwvbkuSpXNF08XMYud8dY8fHPl1PDMj8-_EDU'
		})
	}).then(response => {
		if (response.status < 200 || response.status >= 400) {
			throw 'Error subscribing to topic: ' + response.status + ' - ' + response.text();
		}
	}).catch(e => {
		console.log(e)
	})
}

function click(dogName, uid, state) {
	var useruid = uid+"";
	console.log(uid);
	console.log(state);

	dogName.addEventListener('click', function() {
		if (state == true) {
			if (confirm("????????? ????????? ?????? ????????? ?????? ?????? ????????????. ???????????? ????????? ?????????????")) {
				//console.log("?????? ???");
				var docRef = db.collection("users").doc(useruid).collection("userprofiles").doc(useruid)
					.get().then((doc) => {
						if (doc.exists) {
							token=doc.data().userToken;
							newPostPush(token);

						} else {
							// doc.data() will be undefined in this case
							console.log("No such document!");
						}


					}).catch((error) => {
						console.log("Error getting document:", error);
					});
			} else {

			}

		} else {
			location.href = "userprofile.jsp?state=" + state + "&user=" + uid;
		}

	})

}







