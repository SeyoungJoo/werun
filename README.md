
### WeRun is an application for finding running buddy around easily.
### https://werunners.herokuapp.com

### for login
id: seyoung@gmail.com
password: 123456

### 👉 [Github repository] (https://github.com/SeyoungJoo/werun)
### 👉 [Visit Website] (https://werunners.herokuapp.com)

Le Wagon 코딩 부트캠프에 다니며 기다리고 기다리던 프로젝트를!!!
드디어 하게되었습니다 으하하하하
그동안 배운 것들을 모조리 써먹을 수 있는 찬쓰..!

## 왜? 이 어플을 만들게 되었을까? 🤔
저는 내 주변의 달리기 친구를 찾는 웹사이트로 아이디어 발표를 했습니다.
달리기덕후이기 때문에! 덕후인데! 혼자 달리는게 좋긴하지만! 그래도 가끔은 누구랑 같이 달리고 싶을때가 있거든요. 또 지난 몇년간 포토그래퍼로 해외 이곳저곳을 돌아다니면서 생활을 하면서 헬스장을 등록할 여건도 안되었고 (보통 가입비+3개월단위 계약 ㅠ^ㅠ) 해외에서는 보통 펍에 가서 친구를 만들을 만드는데 술을 안마시는 저는 나도 내가 좋아하는 것들로 친구를 만들고 싶다! 하는 생각도 하게 되었고요. 그래서 meet up이나 달리기 동호회등을 시도해봤는데 요게 딱 맞아떨어지지가 않더라구요. meet up은 달리기 이벤트가 잘 없기도하고 또 한사람이 이벤트를 만들면 다른 여러사람이 우르르 참여하는 단체 달리기에 단발성이 강하기도 했고요, 달리기 동호회는 거의 마라톤을 준비하는 달리기 한 10년정도 하시는 분들이 많아서 괜히 부담되고 가볍게 나가지를 못하겠더라고요ㅋㅋ
그래서 좀 더 가볍고 쉬운 달리기 친구찾기 어플리케이션이라는 아이디어로 발표를 했고, 투표로 제 아이디어가 채택이 되어 프로젝트 리더로 참여할 수 있는 영광까지 얻게되었습니다 ㅠ0ㅠ 크흑. 당신들.. 착한싸람들..

#### We Run의 주요 기능 🏃‍♂️
<주요기능 = 큰 그림>
* **서치기능**과 **지도**를 연동하여 위치에 따른 달리기친구를 보여준다
* 서로 메세지를 주고받을 수 있는 **채팅창**을 만든다
* 대쉬보드에 **캘린더**를 만들어 스케쥴을 관리할 수 있게 한다

<이 중 내가 구현한 기능은?>
* 랜딩페이지와 Map페이지, Message페이지의 레이아웃 구현
* Mapbox를 이용한 Geocoding
* 위치에 따른 서치기능 구현 + Map을 연동
* 선호도에 따른 추가 서치기능 구현
* Map 페이지의 유저 카드 모달
* 지도상의 유저 위치에 마우스를 올리면 유저 카드가 하이라이팅되는 기능

#### 프로젝트 기간 📅
11/30 ~ 12/10: 2주

#### 팀 구성 👨‍👩‍👧‍👧
모두가 풀스텍으로 참여하였으나 선호도에 따라
백앤드에 더 비중을 둔 멤버 2명
프론트앤드에 더 비중을 둔 멤버 1명 (= 접니다. 저예요..)
풀스텍으로 참여한 멤버 1명
총 4명!

#### 사용한 기술 💻
Ruby on Rails
Javascript ES6
HTML & CSS
SCSS
ActiveRecord
SQL
약간의 Bootstrap 톡톡



## Product Design
1. 우선 본격적으로 코드를 짜기 전에 프로덕트 디자인을 잡고 시작했습니다.
* 대표적인 가상의 유저를 지정했습니다. : 27세의 마게팅회사를 다니는 L.A 에 사는 남성
* 그 가상인물이 이 웹사이트에서 무엇을 하기를 원하고, 어떤 흐름으로 이 웹사이트를 경험을 하게 되는지 정리했습니다.
* 그에 따른 API를 정리하고(Restful하게~~~!) 어떻게 MVC모델을 만들건지 정리했습니다.

![](https://images.velog.io/images/syjoo/post/4dd5cbfa-c6c5-43b4-a8a4-b6ef231d5b3b/user%20story.JPG)



2. 그 후에는 Figma를 이용하여 비쥬얼 이미지로 구현을 해주었습니다.

![](https://images.velog.io/images/syjoo/post/5a918d3b-754f-49ae-8330-011ce84fc36c/WeRun1.JPG)

3. Schema를 만들었습니다. 커흐흑 이 과정이 어찌나 어렵던지 테이블 3개가지고 하는거나 해봤지 요렇게 많은것은 처음해봐서 회의에 회의를 거듭하고 선생님한테 계속 확인받고 그 다음단계로 넘어가는 과정을 반복했지요 

![](https://images.velog.io/images/syjoo/post/ae36572e-4484-4f37-89a1-c98809297f8c/WeRun2.JPG)



## 자자. 그럼 이제 본격적으로 만들어봅시다 😍

1. 검색창에 내가 사는 곳을 치고 우리 동네에는 어떤 러너들이 있는지 살펴봅시다.
![](https://images.velog.io/images/syjoo/post/507bf0b0-3c75-4b2e-a660-e2b620348f57/werun1_1.gif)
맵은 mapbox API를 이용했고 위지 포인트는 기본 디폴트 되어있는 것을 유저 이미지로 바꿔주었어요. 로그인한 당사자가 어디있는지 보여줄 수 있도록 유저이미지가 아닌 흰색 사람 아이콘을 넣어줬습니다.
<br/>
![](https://images.velog.io/images/syjoo/post/c96cb83d-8532-4a19-b13e-d916f236f9e4/werun1_2.gif)
달리기 스피드, 성별, 선호하는 날짜에 따른 추가 검색도 가능하게 만들었습니다. 러너들에게는 누구와 같이 달릴때 같은 스피드어야 한다는게 매우 중요하니까 말이죠 !
<br/>
![](https://images.velog.io/images/syjoo/post/89174690-0662-47d1-81e8-389b4b0d8075/werun1_3.gif)
맵에 마우스를 올리면 유저카드와 연동이 되어서 반짝반짝 !
유저 카드를 클릭하면 모달이 뿅 💥

<br/>
2. 친구 신청을 하고 친구가 되었으니 채팅을 시작해봅시다.

![](https://images.velog.io/images/syjoo/post/ecdf41f9-1975-4b25-8040-9b2d8d70af90/werun1_4.gif)
"Hi..." 살포시 건네보는 나의 한마디..
![](https://images.velog.io/images/syjoo/post/00afd6dc-6a44-4931-8df7-e13ce3527729/werun3.JPG)
Nabvar를 통해서 Message탭으로 바로 들어가면 요런 창이 먼저 뜹니다. 여기에서 대화할 친구를 선택해서 들어갈 수 있어요.
편지봉투 느낌으로 디자인을 해봤는데 팀원들이 하x은행이나 신x은행 현금봉투 아니냐며ㅋㅋㅋ

	

<br/>
3. 대화를 요케저케해서 나온 결론으로 이 친구와의 러닝세션을 스케쥴에 추가해봅시다. 

![](https://images.velog.io/images/syjoo/post/7c1bd235-4e7a-4de4-a7dd-119353876e23/werun1_5.gif)
이렇게 하면 나의 대쉬보드에 있는 캘린더에서 모든 스케쥴을 간편하게 관리할 수 있어서 좋겠다고 생각하고 넣은 기능이에요. 처음엔 구글 캘린더를 가져올까하다가 심플캘린더로 변경! 클릭하면 또 다시 등장하는 모달님

<br/>
4. 보너스 기능으로 넣은 Track 페이지입니다. 러닝트랙 정보를 서로 공유할 수 있는 페이지예요. 러닝 트랙 키워드에 따라서 검색 가능!

![](https://images.velog.io/images/syjoo/post/2b57b7c5-6754-4c1a-aed9-c26803ace690/werun1.gif)

유저가 직접 업데이트해서 공유하고 like버튼으로 투표할 수 있는 기능까지 만들고 싶었는데 시간부족으로 생략 흐흐흑 
이럴때마다 마음이 아팠지만 track페이지 자체가 추가구성이었기 때문에 포기하고 나머지 완성도를 더 탄탄히하는데에 시간을 썼습니다.

![](https://images.velog.io/images/syjoo/post/e4deac6e-2c3c-45ce-9cb5-0838fb9872b1/werun1_10.gif)
트랙은 show 페이지까지 있습니다. 여기에서 링크를 공유해서 채팅으로 보내는 것까지 하면 끝!


### 1/20 update: add media query for responsive website
![](https://images.velog.io/images/syjoo/post/7cb39e0d-8202-4fa4-b2ec-aba793d3c55c/bandicam%202021-01-20%2019-42-15-978.gif)
