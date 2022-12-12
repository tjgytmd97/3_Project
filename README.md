<div align=center>
   
 ![header](https://capsule-render.vercel.app/api?type=waving&color=auto&height=200&section=header&text=PROJECT03&tSize=90&animation=fadeIn&fontAlignY=38&desc=핵심융합프로젝트&descAlign=62)   
</div>
<div align=center>
   <h3>CNN과 openCV를 활용한 졸음운전 및 차량 도난 방지 서비스</h3>
   <p>졸음 운전을 하는 상황이라고 판단되면 경보음을 
  울리게 하여 운전자의 졸음 상황을 알려주는 서비스를 제공합니다. 또한  차량 도난 상황으로 인식하여 경보음이 울린 후 자동으로 녹화하여 추후에 사용할 가능성 있는 
  증거자료를 확보하여 저장하는 서비스를 제공합니다.</p>
</div>

---


## 1. 프로젝트 기획

- 서비스 목표 기능
1) 딥러닝 CNN으로 관련 모델 설계
2) openCV를 활용한 얼굴 인식 구현
- 눈 깜빡임/고개 숙임 등으로 졸음 운전 판단
- 이미지로 차량 도난 판단
3) 알림설정, 개인정보설정 제공



## 2. 기능구현

<div align=center>
   <h3>🛠 적용기술 🛠</h3>
</div>
<div align="center">>
   <img src="https://user-images.githubusercontent.com/107980487/206961031-325630c3-e778-4e98-a684-42633e900f18.png" style="width:10%"/>
   <img src="https://user-images.githubusercontent.com/107980487/206976089-10aabcc1-f9fa-4487-9d03-c674b32a0531.png" style="width:8%"/>
   <img src="https://user-images.githubusercontent.com/107980487/206961162-e35c3906-0a3b-4386-b0ca-c684c3a2254f.png" style="width:7%"/>
   <img src="https://user-images.githubusercontent.com/107980487/206975211-f13aa33a-e450-45d9-866f-4f3ff3cc7b1c.png" style="width:8%"/>
   <img src="https://user-images.githubusercontent.com/107980487/206975440-0d8ada75-3b92-40ab-8a1b-88afc17fc830.png" style="width:8%"/>
   <img src="https://user-images.githubusercontent.com/107980487/206975814-ceac7759-ee4b-4c09-afc6-d4d9c95f3467.png" style="width:8%"/>
   <br>
   <img src="https://user-images.githubusercontent.com/107980487/206961179-5dbbb9f8-b4dd-41db-92e1-97e147072933.png" style="width:6%"/>
     <img src="https://user-images.githubusercontent.com/107980487/206961199-736f57c8-be75-4ca6-8cd3-2ab6e7dcee08.png" style="width:8%"/>
     <img src="https://user-images.githubusercontent.com/107980487/206961252-f744a9d7-e855-4055-96b1-6abaa1bb5085.png" style="width:8%"/>
   <img src="https://user-images.githubusercontent.com/107980487/206961273-62a2979c-8731-4ce7-856a-4cf16d1752de.png" style="width:8%"/>
   <img src="https://user-images.githubusercontent.com/107980487/206974360-16c5b6ab-ae8d-4cc1-b575-7997db3fd8e6.png" style="width:8%"/>
   <img src="https://user-images.githubusercontent.com/107980487/206974814-a0b86e7d-310b-4162-9fde-34a5639d98cf.png" style="width:8%"/>
 
</div>
<br><br>

###### 버전 관리 및 협업틀
- Git을 활용해 소스 코드 백업, 협업 등 효율적인 시간 분배

###### 프론트엔드
- 부트스트랩 활용 반응형 웹페이지 제작

###### 백엔드
- Spring을 활용한 웹페이지 서비스 기능 구현
- JavaScript를 활용하여 웹캠 녹화 및 저장기능 구현
- Python 기반 딥러닝 라이브러리 활용
- openCV를 활용한 얼굴 인식 기술 구현

###### 데이터 수집
- AI-Hub : 졸음 운전 예방을 위한 운전자 상태 정보 영상 데이터
- Teachable Machine을 활용한 얼굴 데이터(차량 도난)
- 눈 뜬 이미지 3000장, 눈 감은 이미지 3000장

###### [ MVC Framework를 활용한 웹서버 구현 ]

- Controller, Model(DTO), View(Jsp) 활용
- 알림 설정 기능, 개인정보 설정 기능, 도난기록 목록

![image](https://user-images.githubusercontent.com/107980487/206982215-81951fe9-ca94-4593-be9d-a0d85f7e28d2.png)

<br>

###### [ 딥러닝 cnn모델을 활용하여 사용자 인식 ]
- 사용자의 얼굴 및 눈 깜빡임/고개 숙임 등으로 인식하도록 학습
- video를 활용하여 도난캠과 졸음판단캠 제공
- python, Flask 활용

![image](https://user-images.githubusercontent.com/107980487/207006311-ea94371b-a01b-4761-848c-96be99808648.png)

<br>

## 3. 서비스 구현

###### [ 화면 설계/ 화면 구현 ]
- HTML/CSS 기반의 정적 페이지 구현
- JavaScript 기반의 동적 페이지 구현
- video 활용하여 시각화
<br>

###### [ 웹 서버 기능 연동 ]
- Jsp/Servlet을 활용한 웹 서버 기능 연동
<br>

###### [ Oracle DB와 웹 서버 연동 ]
- Mysql를 활용한 데이터베이스 연동
