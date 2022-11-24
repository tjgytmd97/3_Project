//DOM
const recordButton = document.querySelector(".record-button");
const stopButton = document.querySelector(".stop-button");
const playButton = document.querySelector(".play-button");
const downloadButton = document.querySelector(".download-button");

const previewPlayer = document.querySelector("#preview");
//const previewPlayer = document.getElementById('myVideo');
const recordingPlayer = document.querySelector("#recording");


let recorder; //녹화기 초기화용 변수
let recordedChunks; //녹화영상 담을 저장공간 배열
let videoBlob = null; // 비디오 url로 보낼때 쓸 blob
let recordedVideoURL = null; //url 주소


//functions
function videoStart() {//화면 출력용 함수. 계속 일정하게 카메라 보이게 사용
    navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia;
    navigator.mediaDevices.getUserMedia({  //미디어 디바이스에서 영상 읽어오기
       
    	video: { width: 320 , height: 240 } //사이즈 변경. 너무 작게 하면 인코딩 안되서 용량 늘어남. 
        //video:{ facingMode: "user" } //모바일 전면카메라 요청   
          , audio: false
    })
        .then(stream => {
            previewPlayer.srcObject = stream;
            startRecording(previewPlayer.captureStream())//영상재생중 녹화하기위해 사용
           

            previewPlayer.play()
           
        })

}


function videoready() { //카메라 녹화용 함수. 카메라 녹화를위해 계속 재시작
    navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia;
    navigator.mediaDevices.getUserMedia({  //미디어 디바이스에서 영상 읽어오기
       
    	video: { width: 320 , height: 240 } //사이즈 변경. 너무 작게 하면 인코딩 안되서 용량 늘어남. 
        //video:{ facingMode: "user" } //모바일 전면카메라 요청   
          , audio: false
    })
        .then(stream => {
            previewPlayer.srcObject = stream;
            startRecording(previewPlayer.captureStream())//영상재생중 녹화하기위해 사용
                
           
        })

}
    
function startRecording(stream  ) {//녹화되는 스트림받아온다
    recordedChunks = [];
    recorder = new MediaRecorder(stream); //녹화기를 호출하여 스트림을(실시간영상)을 파라미터로 넘기기 
    //recorder = new MediaRecorder(stream,{mimeType: 'video/webm; codecs=vp9,opus'});
    recorder.ondataavailable = (event) => { 
        
        console.log("data recodedchunks push! ")
        recordedChunks.push(event.data) }

    //recordedChunks.push(stream)
    recorder.start(); // 녹화기 시작, 위의 녹화기가 시작됨.

}

function stopRecording()	  {
    //previewPlayer.srcObject.getTracks().forEach(track => track.stop());  // 실시간 영상을 중단시킨다. 
    //previewPlayer.srcObject.getTracks().forEach(track => track.start)//영상 blob로 저장후 다시 영상정보를 얻기위해 트랙 start
    //녹화기 정지, 위에서 실시간 영상을 중지시킨후, 녹화기도 중지시킨다
    recorder.stop()
    //recorder = null;    
    //console.log(recordedChunks) // 저장되는 blob비디오 정보 표시  
}

function playRecording() { //기존의 녹화된영상을 웹에서 재생하는 기능 대신 영상을 인코딩에서 jsp로 보내는 역활을 함
	
	  videoBlob = new Blob(recordedChunks, { type: "mp4; codecs=h.264" });
	    console.log(videoBlob)
	   recordedVideoURL = window.URL.createObjectURL(videoBlob)
	    //서버 호출 함수
	   	sendAvi(videoBlob);	   
	   
	    console.log("서버 전송 시작");

/*
    //const recordedBlob = new Blob(recordedChunks, { type: "video/mpeg" }); // 저장할 비디오 확장자 설정, 코덱처리가 들어갈수도 있을듯
    const recordedBlob = new Blob(recordedChunks, { type:"video/webm" }); // 저장할 비디오 확장자 설정, 코덱처리가 들어갈수도 있을듯
    recordingPlayer.src = URL.createObjectURL(recordedBlob);//blob 데이터를 url로 보내게 변경
    */
    //recordingPlayer.play();//녹화된 영상을 재생
    /*
    downloadButton.href = recordingPlayer.src;
    downloadButton.download = `recording_${new Date()}.webm`;
    */
    //console.log(recordingPlayer.src);

}

//event 버튼 이벤트 비활성화
/*
recordButton.addEventListener("click",videoStart);
stopButton.addEventListener("click",stopRecording);
playButton.addEventListener("click",playRecording);

*/

//반복문 

function sleep(ms) {
    return new Promise((r) => setTimeout(r, ms));
    console.log(`sleep for ${ms}ms`);
}


//자바스크립트 로딩 되자마자 실행
window.onload = async function () { //비동기 위해 async 와 await 사용, 무한루프문 먹통현상 제거위해 사용
    //실행할 내용
	videoStart()
	gpsloc()//gps신호가 반복해서 와야할경우 밑으로 넣어야함
    while (true) {
    	videoready()      
        await sleep(5000)
        stopRecording()
        await sleep(10)
        playRecording()
        await sleep(10)
    }
}


// 영상 서버로 보내기 ajax 이용

const sendAvi = blob => {  //sendAvi = 서버로 보내는메서드
    if (blob == null) return; //데이터 없으면 반환
    //현재시간을 이용해 파일이름 만들기
    var today = new Date();
    var year = today.getFullYear();
var month = ('0' + (today.getMonth() + 1)).slice(-2);
var day = ('0' + today.getDate()).slice(-2);
var dateString = year + '_' + month  + '_' + day+'_'; //날짜 포맷으로 변경
var today = new Date();   
var hours = ('0' + today.getHours()).slice(-2); 
var minutes = ('0' + today.getMinutes()).slice(-2);
var seconds = ('0' + today.getSeconds()).slice(-2); 
var timeString = hours + '_' + minutes  + '_' + seconds;//시간포맷으로 변경
var newfilename = dateString+timeString;

    //let filename = newfilename + ".avi";
    let filename = newfilename + ".mp4";  //파일이름 처리. 확장자 붙이기
    //let filename = newfilename + ".webm";
    const file = new File([blob], filename);
    let fd = new FormData();
    fd.append("fname", filename);
    fd.append("file", file);
    $.ajax({
        url: "http://localhost:8085/controller/file/checkuploadvideo", //데이터 보낼  url 입력
        type: "POST",
        contentType: false, // 이 옵션과 아래옵션 모두 false로 해놔야 전송 가능  false 로 선언 시 content-type 헤더가 multipart/form-data로 전송되게 함
        processData: false, // false로 선언 시 formData를 string으로 변환하지 않음
        data: fd, //전송할 데이터가 담긴 변수 변수
        success: function (data, textStatus) { //성공시 넘어온 데이터를 받는다.
            if (data != null) { //성공시 받아온 데이터가 있다면
                console.log("동영상 서버 전송 성공");
                console.log(data)
                //setUsdaterResponse(data);  //데이터 처리
                //send(a);
            }
        },
        error: function (errorMessage) { //실패시 호출
            // setUserResponse("");
            console.log("동영상 서버 전송 실패" + errorMessage);
        },
    }).done(function (data) { // HTTP 요청이 성공하면 요청한 데이터가 done() 메소드로 전달됨.
        console.log("영상 전송 HTTP 요청이 성공하였습니다.");
        console.log(data);
    });
}


var latitude = 0;
var longitude = 0;
var currntspeed = 0 ;


function gpsloc() {
    // Geolocation API에 액세스할 수 있는지를 확인
    if (navigator.geolocation) {
        //위치 정보를 얻기
        navigator.geolocation.getCurrentPosition(function (pos) {

            laltitue = pos.coords.latitude
            longitude = pos.coords.longitude
            currentspeed = pos.coords.speed

            console.log("gps 측정. laltitue :"+laltitue)
            console.log("longitude :"+longitude)
            console.log("currentspeed :"+currentspeed)

            /*
                        $('#latitude').html(pos.coords.latitude);     // 위도
                        $('#longitude').html(pos.coords.longitude); // 경도
                        */

        });
    } else {
        console.log("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
    }
}

/*
sleep(10)    
.then(() =>   videoStart())
.then(console.log("videoStart!"))
.then(() =>   sleep(5000))
.then(() =>  stopRecording())
.then(console.log("stopRecording!"))
*/


/*

//===============샘플코드----------------------

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>카메라 영상 녹화</title>
</head>
<body>
  <button id="btn_start">시작</button>
  <button id="btn_stop">정지</button>
  <br><br>
  <video id="video_realtime" controls>실시간 영상 재생용</video>
  <video id="video_record" controls>녹화된 영상 재생용</video>
</body>

<script>
  // video, button 엘리먼트 취득
  const $video_realtime = document.querySelector("#video_realtime");
  const $video_record = document.querySelector("#video_record");
  const $btn_start = document.querySelector("#btn_start");
  const $btn_stop = document.querySelector("#btn_stop");

  // MediaRecorder(녹화기) 변수 선언
  let mediaRecorder = null;

  // 영상 데이터를 담아줄 배열 선언
  const arrVideoData = [];
  

  // 시작 버튼 이벤트 처리
  $btn_start.onclick = async function(event) {
      
      // 카메라 입력영상 스트림 생성
      const mediaStream = await navigator.mediaDevices.getUserMedia({
          audio: true,
          video: true
      });

      // 실시간 영상 재생 처리: 첫번째 video태그에서 재생
      $video_realtime.srcObject = mediaStream;
      $video_realtime.onloadedmetadata = (event)=>{
          $video_realtime.play();
      }

      // mediaRecorder객체(녹화기) 생성
      mediaRecorder = new MediaRecorder(mediaStream);


      // 녹화 데이터 입력 이벤트 처리
      mediaRecorder.ondataavailable = (event)=>{
          // 녹화 데이터(Blob)가 들어올 때마다 배열에 담아두기
          arrVideoData.push(event.data);
      }


      // 녹화 종료 이벤트 처리
      mediaRecorder.onstop = (event)=>{
          // 배열에 담아둔 녹화 데이터들을 통합한 Blob객체 생성
          const videoBlob = new Blob(arrVideoData);

          // BlobURL(ObjectURL) 생성
          const blobURL = window.URL.createObjectURL(videoBlob);
          
          // 녹화된 영상 재생: 두번째 video태그에서 재생
          $video_record.src = blobURL;
          $video_record.play();
          
          // 기존 녹화 데이터 제거
          arrVideoData.splice(0);
          
      }

      // 녹화 시작!
      mediaRecorder.start();
  }


  // 종료 버튼 이벤트 처리
  $btn_stop.onclick = (event)=>{
      // 녹화 종료!
      mediaRecorder.stop();
  }

</script>
</html>

*/