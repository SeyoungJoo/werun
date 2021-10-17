
### WeRun is an application for finding running buddy around easily.
### 👉 [Visit Website](https://werunners.herokuapp.com)

### for login
id: seyoung@gmail.com
password: 123456

## Why? decided to build We Run? 🤔
I'm a big fan of running. And I've been working abroad as a travel photographer over the past few years. I wanted to meet people while running, but I was not in a place to register the gym because I was a nomad worker, and also I saw people usually go to pubs to make friends, but I don't drink, so I want to make friends with things I like which was running. I tried MeetUp, but it was mostly for group running so I decided to make the app with find 1:1 running buddy more easily.

#### Main Feature 🏃‍♂️
* Shows user list according to location by linking **Search** and **Map**.
* Made **chatroom** where user can send and recieve messages.
* Made a **calendar** on the dashboard so that user manage their own schedule.

#### What feature "I" implemented? 🏃‍♂️
* The layout of landing page, map page, and message page.
* Geocoding by using Mapbox
* Search function depending on location and linked map
* Additional search function based on preference
* User card modal on Map page
* highlight a user card when user hover on map location

#### The Team 👨‍👩‍👧‍👧
2 backend developer + 1 frontend developer(= me) + 1 fullstack developer

#### Tech Stack 💻
Ruby on Rails
Javascript ES6
HTML & CSS
SCSS
ActiveRecord
SQL
+ a little bit of Bootstrap

## Product Design
1. First off, We started with the product design before writing the code.
* Designated a representative virtual user. : A 27-year-old man living in L.A. who works for a marketing company.
* Summarized what the virtual user wants to do on this website and how would they experience this website.
* Organized how to would we build the RESTFUL API and MVC model.

![](https://images.velog.io/images/syjoo/post/4dd5cbfa-c6c5-43b4-a8a4-b6ef231d5b3b/user%20story.JPG)


2. After that, we implemented it as a visual image by using Figma.

![](https://images.velog.io/images/syjoo/post/5a918d3b-754f-49ae-8330-011ce84fc36c/WeRun1.JPG)

3. Made Schema.
![](https://images.velog.io/images/syjoo/post/ae36572e-4484-4f37-89a1-c98809297f8c/WeRun2.JPG)



## Then, Let's Build! 😍

1. Let's type where I live on search box and see what runners are in my neighborhood.
2. 
![](https://images.velog.io/images/syjoo/post/507bf0b0-3c75-4b2e-a660-e2b620348f57/werun1_1.gif)
![](https://images.velog.io/images/syjoo/post/31799cfd-4c34-4ace-88c9-b40c82d9102a/4.gif)

맵은 mapbox API를 이용했고 위지 포인트는 기본 디폴트 되어있는 것을 유저 이미지로 바꿔주었어요. 로그인한 당사자가 어디있는지 보여줄 수 있도록 유저이미지가 아닌 흰색 사람 아이콘을 넣어줬습니다.
The map feature made with mapbox API. and I put a white icon instead of a user image so that user can see where the logged in party is.

<br/>
![](https://images.velog.io/images/syjoo/post/c96cb83d-8532-4a19-b13e-d916f236f9e4/werun1_2.gif)

Additional searches according to running speed, gender, and preferred date are also possible. because it's very important to have the same speed when running with someone!

<br/>
![](https://images.velog.io/images/syjoo/post/89174690-0662-47d1-81e8-389b4b0d8075/werun1_3.gif)

If user puts the mouse on the map, it's linked to the user card and sparkles!
If user clicks the user card, the modal pops up 💥

<br/>
2. Since we became friends after applying for a friend, let's start chatting.

[](https://images.velog.io/images/syjoo/post/ecdf41f9-1975-4b25-8040-9b2d8d70af90/werun1_4.gif)
(https://images.velog.io/images/syjoo/post/ecdf41f9-1975-4b25-8040-9b2d8d70af90/werun1_4.gif)

"Hi..."

![](https://images.velog.io/images/syjoo/post/00afd6dc-6a44-4931-8df7-e13ce3527729/werun3.JPG)

User can select friend to talk here (from the message tab on Navbar)


<br/>
3. Let's add the running session on my schedule.

![](https://images.velog.io/images/syjoo/post/7c1bd235-4e7a-4de4-a7dd-119353876e23/werun1_5.gif)
This feature makes to manage all the running schedules easily.


<br/>
4. Track Page.
It's a page where user can share running track information with each other. 
User can search with running track keyword.

![](https://images.velog.io/images/syjoo/post/2b57b7c5-6754-4c1a-aed9-c26803ace690/werun1.gif)

![](https://images.velog.io/images/syjoo/post/e4deac6e-2c3c-45ce-9cb5-0838fb9872b1/werun1_10.gif)

The track has a show page. User can share the link from here and send it through the chatroom, and that's it!


### 1/20 update: add media query for responsive website
![](https://images.velog.io/images/syjoo/post/7cb39e0d-8202-4fa4-b2ec-aba793d3c55c/bandicam%202021-01-20%2019-42-15-978.gif)
