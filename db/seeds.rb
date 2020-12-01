require "open-uri"
require "date"

Request.destroy_all
Message.destroy_all
Conversation.destroy_all
Track.destroy_all
User.destroy_all

user1 = User.create!(
  first_name: "Christine",
  last_name: "Jung",
  address: "Gangnam-gu",
  age: 28,
  level: 1,
  email: "christine@gmail.com",
  password: 123456,
  lat:37.49902782015005,
  lng: 127.04871332623296,
)

user2 = User.create!(
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

user3 = User.create!(
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

user4 = User.create!(
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
  end_time: Time.now() + 3
)

request2 = Request.create!(
  receiver: user3,
  sender: user4,
  status: "Accepted",
  start_time: Time.now(),
  end_time: Time.now() + 1
)

request3 = Request.create!(
  receiver: user1,
  sender: user4,
  status: "Rejected",
  start_time: Time.now() - 1,
  end_time: Time.now() + 1
)

