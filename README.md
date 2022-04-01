
### WeRun is an application for finding running buddy around easily.
### 👉 [Visit Website](https://werunners.herokuapp.com)

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

![ezgif com-gif-maker (2)](https://user-images.githubusercontent.com/63498427/137625815-d60396a9-0395-4f81-bac7-621b76881f6f.gif)

The map feature made with mapbox API. and I put a white icon instead of a user image so that user can see where the logged in party is.

<br/>


![ezgif com-gif-maker (1)](https://user-images.githubusercontent.com/63498427/137625741-6a077b21-f8e5-4a93-a0b4-595badc773dc.gif)

Additional searches according to running speed, gender, and preferred date are also possible. because it's very important to have the same speed when running with someone!

<br/>

![ezgif com-gif-maker (3)](https://user-images.githubusercontent.com/63498427/137625850-700e9133-9ebd-47e6-856c-68e4d5181f27.gif)

If user puts the mouse on the map, it's linked to the user card and sparkles!
If user clicks the user card, the modal pops up 💥

<br/>
2. Since we became friends after applying for a friend, let's start chatting.

![ezgif com-gif-maker (4)](https://user-images.githubusercontent.com/63498427/137625890-406cb8a4-57b0-4aba-ada0-9d4b41b4ef62.gif)


<br/>
3. Let's add the running session on my schedule.

![ezgif com-gif-maker (5)](https://user-images.githubusercontent.com/63498427/137625968-4679f211-0477-43bb-a2d1-2b373bf49707.gif)

This feature makes to manage all the running schedules easily.


<br/>
4. + Bobus: Track Page

It's a page where user can share running track information with each other. 
User can search with running track keyword.

![ezgif com-gif-maker (6)](https://user-images.githubusercontent.com/63498427/137626037-e95d5e24-d655-4dc7-90ed-cff4af73af7e.gif)


The track has a show page. User can share the link from here and send it through the chatroom, and that's it!


### 1/20 update: add media query for responsive website

![ezgif com-gif-maker (7)](https://user-images.githubusercontent.com/63498427/137626094-8af889df-36b8-4fa7-8a49-05028a09a872.gif)


