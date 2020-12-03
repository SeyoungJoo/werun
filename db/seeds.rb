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
  address: "Gangnam-gu",
  age: 28,
  level: 1,
  email: "christine@gmail.com",
  password: 123456,
  lat: 37.49902782015005,
  lng: 127.04871332623296
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner1.jpg"))
user1.image.attach(io: file, filename: 'user1photo.png', content_type: 'image/png')
user1.save!

user2 = User.new(
  first_name: "Harry",
  last_name: "Kim",
  address: "Dongdaemun-gu",
  age: 23,
  level: 4,
  email: "harry@gmail.com",
  password: 123456,
  lat: 37.58031052526968,
  lng: 127.05621757530638
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner2.jpg"))
user2.image.attach(io: file, filename: 'user2photo.png', content_type: 'image/png')
user2.save!


user3 = User.new(
  first_name: "Juyeon",
  last_name: "Kim",
  address: "Jamsil-dong",
  age: 27,
  level: 3,
  email: "juyeon@gmail.com",
  password: 123456,
  lat: 37.50716535430781,
  lng: 127.08683715296864
)
file = File.open(File.join(Rails.root, "/app/assets/images/runner3.jpg"))
user3.image.attach(io: file, filename: 'user3photo.png', content_type: 'image/png')
user3.save!

user4 = User.new(
  first_name: "Seyoung",
  last_name: "Joo",
  address: "Sinchon-dong",
  age: 21,
  level: 5,
  email: "seyoung@gmail.com",
  password: 123456,
  lat: 37.56365744540896,
  lng: 126.943968534323
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner4.jpg"))
user4.image.attach(io: file, filename: 'user4photo.png', content_type: 'image/png')
user4.save!


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
  end_time: Time.now() + 48.hour
)

event2 = Event.create!(
  user1_id: user1.id,
  user2_id: user4.id,
  start_time: Time.now() - 37.hour,
  end_time: Time.now() - 1.hour
)

event3 = Event.create!(
  user1_id: user2.id,
  user2_id: user4.id,
  start_time: Time.now() + 6.hour,
  end_time: Time.now() + 28.hour
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
  start_time: Time.now() - 1.hour,
  end_time: Time.now() + 10.hour
)
