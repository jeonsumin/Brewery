# Brewery
브루어리 소개 앱 

## 기능 상세
- 맥주 추천 리스트를 볼 수 있습니다. 
-  선택한 맥주에 대하여 상세 페이지를 확인 할 수 있습니다. 
	- 맥주 이름, 맥주 설명, 안주, 태그  
-  스크롤 시 페이지가 추가 되어 맥주 리스트를 표시합니다. 

## 활용기술 
- URLSession 
- KingFlsher
- SnapKit

## DEMO

![ezgif com-gif-maker (2)](https://user-images.githubusercontent.com/51107183/150149781-886223b3-c956-485e-beab-3d05ca423d89.gif)
 
## 배운 내용
### OSI Model
> Open Systems Interconnection 

![스크린샷 2022-01-19 오후 9 08 39](https://user-images.githubusercontent.com/51107183/150126722-67422940-6a6a-4485-aa8d-c90bc224a220.png)

1레벨 : 물리계층 

- 전압 레벨, 데이터 속도, 최대 전송 거리, 커넥터..
- 케이블, 모뎀, 리피터 

2레벨 : 데이터 링크 계층 

- 데이터 오류 감지, 복구 
- MAC 주소

3레벨 : 네트워크 계층 

- 논리 주소 정의 
- IP 주소 

4레벨 : 전송 계층 

- 데이터 흐름 제어 
- TCP, UDP 

5레벨 : 전송계층 

- 통신 장치간의 상호작용 설정, 유지, 관리 

6레벨 : 표현계층 

- 7레벨에 적용되는 데이터 형식, 코딩, 변환 기능 
- 파일 확장자 

7레벨 : 응용계층 

- 앱 상의 네트워크 
- HTTP 

### URL 
> Uniform Resource Locator 

- Request 
	- **GET** 식별된 데이터 가져오기 
	- **POST** 새 데이터를 추가 
	- **PUT** 식별된 기존 데이터 수정(업데이트)
	- **PATCH** PUT과 동일하지만 데이터의 일부를 수정 
	- **DELETE** 식별된 데이터 삭제 
	- **HEAD** GET과 동일하지만 메시지 헤더만 반환 
	- **CONNECT** 프락시 기능 요청 
	- **OPTIONS** 웹서버에서 지원하는 메소드 확인 
	- **TRACE** 원격 서버 테스트용 메시지 확인  

- Response 
	- 1xx: 정보전달 - 리퀘스트 수신, 진행중
	-  2xx : 성공 - 리퀘스트 성공적으로 수신, 해석, 승인
	-  3xx : 리다이렉트 
	-  4xx : 에러 	


### URLSession 
>서버와 데이터를 주고받기 위해 애플에서 제공하는 통신 규격 

```swift
URLSession.shared
```
##### URLSessionConfiguration 
```
- URLSession(configuration: .default)
- URLSession(configuration:	.ephemeral)
- URLSession(configuration:  .background(withIdentifer: ""))
```
##### URLSessionTask
```
- URLSessionDataTask			// 데이터 송수신
- URLSessionUploadTask			// 파일을 전송하고 백그라운드 업로드
- URLSessionDownloadTask 		// 파일형식기반으로 파일 검색 /다운로드 지원 
- URLSessionStreamTask
- URLSessionWebSocketTask
```

##### URLSession Life Cycle
![스크린샷 2022-01-19 오후 9 42 49](https://user-images.githubusercontent.com/51107183/150132931-48608012-a009-4906-91da-dda5203fbbd5.png)

### GCD 
> Grand Centeral Dispatch 


#### Thread 
> 























