require "open-uri"
require "date"

Request.destroy_all
Message.destroy_all
Conversation.destroy_all
Track.destroy_all
Event.destroy_all
User.destroy_all

user1 = User.new(
  first_name: "Christine",
  last_name: "Jung",
  address: "Seoul Gangnam",
  age: 28,
  level: 3,
  email: "christine@gmail.com",
  password: 123456,
  latitude: 37.514138201135026,
  longitude: 127.04819778559019,
  gender: "female",
  preferred_time: "morning",
  preferred_day: "weekdays",
  pet: false,
  introduction: "I am originally from the States and just moved to Seoul. I am a regular runner and want to explore new running rails with beautiful scenary in Seoul. I also love outdoor activities like hiking or cycling, so anyone who shares same hobbies please DM me :)"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner1.jpg"))
user1.image.attach(io: file, filename: 'user1photo.png', content_type: 'image/png')
user1.save!

user2 = User.new(
  first_name: "Harry",
  last_name: "Kim",
  address: "Seoul Dongdaemun",
  age: 23,
  level: 3,
  email: "harry@gmail.com",
  password: 123456,
  latitude: 37.5923479327058,
  longitude: 127.04402947916739,
  gender: "male",
  preferred_time: "morning",
  preferred_day: "weekdays",
  pet: false,
  introduction: "I am a regular runner. I usually go to Cheonggyecheon Stream Trail to run but want to explore some new rails in Seoul. I like outdoor sports in general so we can play other sports as well if you like."   
  
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner2.jpg"))
user2.image.attach(io: file, filename: 'user2photo.png', content_type: 'image/png')
user2.save!


user3 = User.new(
  first_name: "Juyeon",
  last_name: "Kim",
  address: "Seoul Jamsil",
  age: 27,
  level: 1,
  email: "juyeon@gmail.com",
  password: 123456,
  latitude: 37.50738631538989,
  longitude: 127.08533508197621,
  gender: "female",
  preferred_time: "evening",
  preferred_day: "weekdays",
  pet: false,
  introduction: "I haven't been actively working out recently but want to develop a healthy lifestyle. I am a beginner runner, and am looking for someone who is at similar level. I prefer to run in the evening time on weekdays after work."
)
file = File.open(File.join(Rails.root, "/app/assets/images/runner3.jpg"))
user3.image.attach(io: file, filename: 'user3photo.png', content_type: 'image/png')
user3.save!

user4 = User.new(
  first_name: "Seyoung",
  last_name: "Joo",
  address: "Seoul Sinchon",
  age: 21,
  level: 2,
  email: "seyoung@gmail.com",
  password: 123456,
  latitude: 37.56479363210303,
  longitude: 126.93949057607337,
  gender: "female",
  preferred_time: "morning",
  preferred_day: "weekdays",
  pet: true,
  introduction: "I am looking for a jogging mate with a pet. I run with my golden retriever everyday in the morning for about an hour. Please DM me if you have a pet and want to run with us :)"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner4.jpg"))
user4.image.attach(io: file, filename: 'user4photo.png', content_type: 'image/png')
user4.save!

user5 = User.new(
  first_name: "Justin",
  last_name: "Dirk",
  address: "Seoul Gangnam",
  age: 28,
  level: 5,
  email: "justin@gmail.com",
  password: 123456,
  latitude: 37.56479363210303,
  longitude: 126.93949057607337,
  gender: "male",
  preferred_time: "morning",
  preferred_day: "weekdays",
  pet: false,
  introduction: "I am preparing for a marathon next year. I am looking for a running mate who is also preparing for a marathon and wnat to run with me everyday"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner5.jpg"))
user5.image.attach(io: file, filename: 'user5photo.png', content_type: 'image/png')
user5.save!

user6 = User.new(
  first_name: "Jason",
  last_name: "Fredman",
  address: "Seoul Sinsa",
  age: 25,
  level: 5,
  email: "jason@gmail.com",
  password: 123456,
  latitude: 37.56479363210303,
  longitude: 126.93949057607337,
  gender: "male",
  preferred_time: "morning",
  preferred_day: "weekdays",
  pet: false,
  introduction: "I looking for a running mate and prepare for marathon next year together."
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner6.jpg"))
user6.image.attach(io: file, filename: 'user6photo.png', content_type: 'image/png')
user6.save!

user7 = User.new(
  first_name: "Jamie",
  last_name: "Dimon",
  address: "Seoul Gangnam",
  age: 30,
  level: 2,
  email: "jamie@gmail.com",
  password: 123456,
  latitude: 37.56479363210303,
  longitude: 126.93949057607337,
  gender: "male",
  preferred_time: "afternoon",
  preferred_day: "weekdays",
  pet: false,
  introduction: "I occasionally run in the park near my home. Please DM me if you live in Apgujeong-dong area and want to go for running together"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner7.jpg"))
user7.image.attach(io: file, filename: 'user7photo.png', content_type: 'image/png')
user7.save!

user8 = User.new(
  first_name: "Julia",
  last_name: "Roberts",
  address: "Seoul Sinsa",
  age: 23,
  level: 3,
  email: "julia@gmail.com",
  password: 123456,
  latitude: 37.56479363210303,
  longitude: 126.93949057607337,
  gender: "female",
  preferred_time: "morning",
  preferred_day: "weekend",
  pet: false,
  introduction: "I moved to Korea 1 month ago and finally settled down in Itaewon area. I am looking for friends who love jogging in the morning and bar hopping in the evening"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner8.jpg"))
user8.image.attach(io: file, filename: 'user8photo.png', content_type: 'image/png')
user8.save!

user9 = User.new(
  first_name: "Rebecca",
  last_name: "Smith",
  address: "Seoul Sindang",
  age: 23,
  level: 3,
  email: "rebecca@gmail.com",
  password: 123456,
  latitude: 37.56479363210303,
  longitude: 126.93949057607337,
  gender: "female",
  preferred_time: "afternoon",
  preferred_day: "weekdays",
  pet: false,
  introduction: "I am a freelance web-designer and have a flexible working hour. I prefer to run in the afternoon around my area but am generally flexible"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner9.jpg"))
user9.image.attach(io: file, filename: 'user9photo.png', content_type: 'image/png')
user9.save!

user10 = User.new(
  first_name: "Rick",
  last_name: "Warren",
  address: "Ichon-dong",
  age: 23,
  level: 3,
  email: "rick@gmail.com",
  password: 123456,
  latitude: 37.56479363210303,
  longitude: 126.93949057607337,
  gender: "male",
  preferred_time: "afternoon",
  preferred_day: "weekend",
  pet: false,
  introduction: "I am in Korea for a 6-month project and want to make new friends. I love running, cycling, hiking, and camping"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner10.jpg"))
user10.image.attach(io: file, filename: 'user10photo.png', content_type: 'image/png')
user10.save!

user11 = User.new(
  first_name: "Mizuki",
  last_name: "Saito",
  address: "Mapo-gu",
  age: 23,
  level: 3,
  email: "mizuki@gmail.com",
  password: 123456,
  latitude: 37.56479363210303,
  longitude: 126.93949057607337,
  gender: "female",
  preferred_time: "evening",
  preferred_day: "weekdays",
  pet: false,
  introduction: "I just moved to Korea and want to make new friends. I am a full-time software engineer and part-time yoga teacher."
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner11.jpg"))
user11.image.attach(io: file, filename: 'user11photo.png', content_type: 'image/png')
user11.save!

user12 = User.new(
  first_name: "Allen",
  last_name: "Huang",
  address: "Oksu-dong",
  age: 27,
  level: 2,
  email: "allen@gmail.com",
  password: 123456,
  latitude: 37.56479363210303,
  longitude: 126.93949057607337,
  gender: "male",
  preferred_time: "evening",
  preferred_day: "weekdays",
  pet: false,
  introduction: "I work at a fin-tech start-up and moved to Korea in Novebmer 2020. I want to make new friends. Besides running regularly, I play tennis and golf."
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner12.jpg"))
user12.image.attach(io: file, filename: 'user12photo.png', content_type: 'image/png')
user12.save!

user13 = User.new(
  first_name: "Vikas",
  last_name: "Gupta",
  address: "Yongsan-gu",
  age: 23,
  level: 5,
  email: "vikas@gmail.com",
  password: 123456,
  latitude: 37.56479363210303,
  longitude: 126.93949057607337,
  gender: "male",
  preferred_time: "evening",
  preferred_day: "weekdays",
  pet: false,
  introduction: "I am looking for a running partner for my upcoming half-marathon. I train everyday in the evening"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner13.jpg"))
user13.image.attach(io: file, filename: 'user13photo.png', content_type: 'image/png')
user13.save!

user14 = User.new(
  first_name: "Stephanie",
  last_name: "Parks",
  address: "Seocho-dong",
  age: 27,
  level: 2,
  email: "stephanie@gmail.com",
  password: 123456,
  latitude: 37.56479363210303,
  longitude: 126.93949057607337,
  gender: "female",
  preferred_time: "evening",
  preferred_day: "weekdays",
  pet: true,
  introduction: "I jog with my pet every evening. She is 3 years old toy poodle. Looking for play/running-buddies who also have pets"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner14.jpg"))
user14.image.attach(io: file, filename: 'user14photo.png', content_type: 'image/png')
user14.save!

user15 = User.new(
  first_name: "Kelly",
  last_name: "Steven",
  address: "Seocho-dong",
  age: 27,
  level: 2,
  email: "kelly@gmail.com",
  password: 123456,
  latitude: 37.56479363210303,
  longitude: 126.93949057607337,
  gender: "female",
  preferred_time: "afternoon",
  preferred_day: "weekdays",
  pet: true,
  introduction: "I am a travel journalist/photographer and currently based in Korea. Look forward to meeting new friends and finding beautiful scenaries in the city"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner15.jpg"))
user15.image.attach(io: file, filename: 'user15photo.png', content_type: 'image/png')
user15.save!

conversation1 = Conversation.create!(
  user1_id: user1.id,
  user2_id: user2.id
)

conversation2 = Conversation.create!(
  user1_id: user3.id,
  user2_id: user4.id
)

Track1 = Track.create!(
  name: "Yeouido Hangang Park",
  description: "Large park on the river, with several km of paths",
  keyword: "Scenary Park",
  user: user1
)

Track2 = Track.create!(
  name: "Olympic Stadium",
  description: "Sports complex on site of 1988 games, with trails",
  keyword: "Sports complex",
  user: user2
)

Track3 = Track.create!(
  name: "Bukhansan National Park",
  description: "Trail running in large park close to city",
  keyword: "Scenary Park",
  user: user3
)

Track4 = Track.create!(
  name: "Cheonggyecheon Stream Trail",
  description: "11km below road, passing 22 bridges",
  keyword: "Along the river",
  user: user4
)

Track5 = Track.create!(
  name: "Yangjaecheon Stream Trail",
  description: "Bike path from Gwacheon to Gangnam",
  keyword: "Along the river",
  user: user1
)

request1 = Request.create!(
  receiver: user1,
  sender: user2,
  status: "Pending",
  start_time: Time.now(),
  end_time: Time.now() + 1.hour
)

request2 = Request.create!(
  receiver: user3,
  sender: user4,
  status: "Approved",
  start_time: Time.now(),
  end_time: Time.now() + 2.hour
)

request3 = Request.create!(
  receiver: user1,
  sender: user4,
  status: "Rejected",
  start_time: Time.now() - 1.hour,
  end_time: Time.now() + 1.hour
)

event1 = Event.create!(
  user1_id: user1.id,
  user2_id: user2.id,
  start_time: Time.now(),
  end_time: Time.now() + 2.hour
)

event2 = Event.create!(
  user1_id: user1.id,
  user2_id: user4.id,
  start_time: Time.now() - 37.hour,
  end_time: Time.now() - 35.hour
)

event3 = Event.create!(
  user1_id: user2.id,
  user2_id: user4.id,
  start_time: Time.now() + 28.hour,
  end_time: Time.now() + 30.hour
)

event4 = Event.create!(
  user1_id: user2.id,
  user2_id: user3.id,
  start_time: Time.now() + 48.hour,
  end_time: Time.now() + 50.hour
)

event5 = Event.create!(
  user1_id: user3.id,
  user2_id: user1.id,
  start_time: Time.now() + 120.hour,
  end_time: Time.now() + 121.hour
)
