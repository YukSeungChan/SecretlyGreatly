#개발경험프로젝트 기획서 ##소개 

> '들개로 태어나 괴물로 길러졌다.'
팀명 : 은밀하게 위대하게
서비스명 : Movie Q-rater조원 : 김혜원, 정희수, 신윤서, 황정민
방법 : node.js 로 서버 개발하고, back과 front를 2인 1조로 1주씩 돌아가면서 진행한다. 
계획 : 2주 간 html+css로 기초작업 ➔ 스터디 병행 ➔ 서버+DB 작업 시작 ➔ 완성


---## 기획서
### 비전 수립 (우리 소프트웨어가 추구하는 방향)-	**개인화** 서비스를 만들고 싶다.-	뭐 보지? 뭐 먹지? 뭐 하지? 정보가 넘쳐나는 인터넷 상에서** 내 취향에 딱 맞는 정보**를 추천해 주는 곳이 있으면 어떨까?-	**사용자가 영화에 별점을 매기면 이를 분석해 취향에 맞는 영화를 추천해주자!**### 가치 정의 (우리 소프트웨어가 필요한 이유)-	별점을 통해 취향에 맞는 영화를 추천 받음.-	영화를 보면서 쌓은 추억을 기록할 수 있음.-	영화에 대한 코멘트를 남기고, 다른 사람의 기록을 볼 수 있음. -	결론 : 어떤 영화를 볼 지 **MovieSelecting** 에 들어와서 결정하면 된다!### 사용자 (우리 소프트웨어를 사용할 대상)-	영화를 좋아하는 모든 사람들.-	연간 약 300편 이상의 영화 중에서 선택하게 되는 약 12개의 영화를 신중하게 고르고 싶은 사람들.-	본 영화에 대해서 나의 생각과 느낌을 공유하고 싶은 사람들.### 주요 기능 명세 (우리 소프트웨어의 최소한 기능)#### 1. 메인(W) - 	영화랭킹-	스크롤 이미지..들  ( carousel view )	-	~~예매하기~~	-	~~영화관 이름 누르면 해당 영화관 예매페이지로 이동~~	-	~~또는 VOD 감상하기~~-	누적관객수 or 관객수 -	평가늘리기 (나는 영화를 몇편이나 봤을까?)-	역대 탑 영화들-	장르별 추천	-	관리자에게 이메일보내기 버튼#### 2. 추천영화 (카드나열형식)- 모든 영화
- 예상별점이 가장 높은영 화
- 좋아할만한 감독
- 배우가 출연한 영화
- 높게 평가한 영화가 비슷한 영화	#### 3. 평가늘리기- 평가수
- 격려 “오예 200개 돌파! ~~~~”, 300(200개돌파일경우), progress bar(300-평가수/300)- <카테고리>    -   **가장 많이 평가된 영화**	-	**2011-2014년 흥행 영화**	-	**왓챠 평균별점**	-	고전 영화	-	느와르 영화	-	슈퍼 히어로 영화	-	스포츠 영화	-	저예산 독립영화	-	범죄	-	드라마	-	코미디	-	로맨스/멜로	-	스릴러	-	로맨스코미디	-	전쟁	-	가족	-	판타지	-	액션	-	SF	-	애니메이션	-	다큐멘터리	-	공포	-	성인영화#### 4.  카드(안본영화)-	포스터사진-	예상별점(평가늘리기에서는 안뜸)-	관심없어요-	포스터그림-	(마우스오버시) 제목, 별점평가란, 보고싶어요, 코멘트쓰기기	-   ~~별점평가란 : 같은점수 재클릭시 취소하기, 별점클릭시 바로 저장.~~#### 5. 코멘트쓰기 페이지* (평가를먼저해주세요)	-	~~본영화인가요? -> 별점평가란~~	-	아직안본영화인가요? -> 보고싶어요, 관심없어요~~*	(평가후)	-	~~포스터이미지~~	-	평가한별점	-	코멘트내용 및 남은글자수(글자제한있음)	-	~~함께본사람, 본날짜 추가하기~~	-	~~공개설정(전체공개, 친구-팔로잉공개, 비공개~~)	-	~~트윗하기, 페이스북공유하기~~	-	~~작성~~#### 6. 영화상세 페이지-	~~(현재상영중)예매율, 누적관객수, 개봉일, 예매하기~~-	커버이미지 : (여러개일경우)롤링스크롤-	감상 정보 모두보기-	내 예상별점-	~~(무비파트너) 예상별점~~-	카드-	영화한글제목-	영화원제, 개봉연도, 국가, 장르, 관람가, 상영시간-	평균별점, 평가수-	평가수, 보고싶어요수, 코멘트수-	별점 분포그래프-	페이스북좋아요, 트윗하기-	줄거리-	친구들의 코멘트, 별점-	친구외 다른 사람들의 코멘트	-	정렬방식 설정가능 : 좋아요순, 최신순, 별점높은/낮은순	-	~~(스포일러주의)~~	-	별점	-	이름	-	코멘트내용	-	작성날짜	-	코멘트가 받은 좋아요수	-	~~+부적절한표현신고하기, 스포일러신고~~	-	더보기-	비슷한영화	-	더보기-	예고편(영상)-	감독,출연정보(주연,조연,단역)	-	더보기#### 인물상세 페이지-	커버이미지 : 대표작품 하나의 커버이미지-	프로필이미지, 이름-	감독으로 참여한작품(개수), 배우로참여한작품(개수)**상세페이지는 Modal 뷰.모두 새로고침없이 카드처럼 위에 떠 있음,카드 밖을 클릭하면 나가기. **#### 헤더-	검색창 -	알람	-	홍길동 	-	영화보관함	-	설정 (비밀번호변경, 탈퇴)	-	로그아웃#### 마이페이지-	개요	-	새로고침할때마다 커버사진바뀜 : 평가별점이 높은 영화 커버 랜덤으로.	-	담은영화(보고싶어요+평가)수	-	영화본시간	-	받은좋아요	-	프로필사진	-	이름-	취향통계분석	-	별점분포 > 어떤 스타일로 별점을 주는지 타이틀 붙여줌