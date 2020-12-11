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
  address: "Seoul Shindang 22",
  age: 28,
  level: "average",
  email: "christine@gmail.com",
  password: 123456,
  latitude: 37.568700,
  longitude: 127.010572,
  gender: "female",
  preferred_time: "evening",
  preferred_day: "weekend",
  pet: false,
  introduction: "I am originally from the States and just moved to Seoul. I am a regular runner and want to explore new running rails with beautiful scenary in Seoul. I also love outdoor activities like hiking or cycling, so anyone who shares same hobbies please DM me :)"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner1.JPG"))
user1.image.attach(io: file, filename: 'user1photo.png', content_type: 'image/png')
user1.save!

user2 = User.new(
  first_name: "Harry",
  last_name: "Kim",
  address: "Seoul Gangnam",
  age: 23,
  level: "average",
  email: "harry@gmail.com",
  password: 123456,
  latitude: 37.550232,
  longitude: 126.985607,
  gender: "male",
  preferred_time: "morning",
  preferred_day: "weekend",
  pet: false,
  introduction: "I am a regular runner. I usually go to Cheonggyecheon Stream Trail to run but want to explore some new rails in Seoul. I like outdoor sports in general so we can play other sports as well if you like."

)

file = File.open(File.join(Rails.root, "/app/assets/images/runner2.jpg"))
user2.image.attach(io: file, filename: 'user2photo.png', content_type: 'image/png')
user2.save!


user3 = User.new(
  first_name: "Juyeon",
  last_name: "Kim",
  address: "Seoul Shindang Toegye-ro",
  age: 27,
  level: "average",
  email: "juyeon@gmail.com",
  password: 123456,
  latitude: 37.523838,
  longitude: 126.996379,
  gender: "female",
  preferred_time: "evening",
  preferred_day: "weekend",
  pet: false,
  introduction: "I haven't been actively working out recently but want to develop a healthy lifestyle. I am a beginner runner, and am looking for someone who is at similar level. I prefer to run in the evening time on weekdays after work."
)
file = File.open(File.join(Rails.root, "/app/assets/images/runner3.jpg"))
user3.image.attach(io: file, filename: 'user3photo.png', content_type: 'image/png')
user3.save!

user4 = User.new(
  first_name: "Seyoung",
  last_name: "Joo",
  address: "Seoul Gangnam Irwon-dong",
  age: 21,
  level: "average",
  email: "seyoung@gmail.com",
  password: 123456,
  latitude: 37.523320,
  longitude: 126.979656,
  gender: "female",
  preferred_time: "evening",
  preferred_day: "weekend",
  pet: true,
  introduction: "I am looking for a jogging mate with a pet. I run with my golden retriever everyday in the morning for about an hour. Please DM me if you have a pet and want to run with us :)"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner4.JPG"))
user4.image.attach(io: file, filename: 'user4photo.png', content_type: 'image/png')
user4.save!

user5 = User.new(
  first_name: "Justin",
  last_name: "Dirk",
  address: "Seoul Shindang 11-gil",
  age: 28,
  level: "average",
  email: "justin@gmail.com",
  password: 123456,
  latitude: 37.565557,
  longitude: 127.013014,
  gender: "male",
  preferred_time: "morning",
  preferred_day: "weekend",
  pet: false,
  introduction: "I am preparing for a marathon next year. I am looking for a running mate who is also preparing for a marathon and wnat to run with me everyday"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner5.jpg"))
user5.image.attach(io: file, filename: 'user5photo.png', content_type: 'image/png')
user5.save!

user6 = User.new(
  first_name: "Jason",
  last_name: "Fredman",
  address: "Seoul Gangnam 73-gil",
  age: 25,
  level: "average",
  email: "jason@gmail.com",
  password: 123456,
  latitude: 37.566643,
  longitude:  127.014112,
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
  address: "Seoul Gangnam 731",
  age: 30,
  level: "average",
  email: "jamie@gmail.com",
  password: 123456,
  latitude: 37.482055,
  longitude: 127.079068,
  gender: "male",
  preferred_time: "evening",
  preferred_day: "weekdays",
  pet: false,
  introduction: "I occasionally run in the park near my home. Please DM me if you live in Apgujeong-dong area and want to go for running together"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner7.jpg"))
user7.image.attach(io: file, filename: 'user7photo.png', content_type: 'image/png')
user7.save!

user8 = User.new(
  first_name: "Jenny",
  last_name: "kim",
  address: "Seoul Cheonggu-ro 22-gil",
  age: 23,
  level: "average",
  email: "julia@gmail.com",
  password: 123456,
  latitude: 37.563095,
  longitude: 127.010736,
  gender: "female",
  preferred_time: "evening",
  preferred_day: "weekend",
  pet: false,
  introduction: "I moved to Korea 1 month ago and finally settled down in Itaewon area. I am looking for friends who love jogging in the morning and bar hopping in the evening"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner8.jpg"))
user8.image.attach(io: file, filename: 'user8photo.png', content_type: 'image/png')
user8.save!

user9 = User.new(
  first_name: "Suyeon",
  last_name: "Lee",
  address: "Seoul Shindang 304-408",
  age: 23,
  level: "average",
  email: "suyeon@gmail.com",
  password: 123456,
  latitude: 37.472954,
  longitude: 126.990243,
  gender: "female",
  preferred_time: "evening",
  preferred_day: "weekend",
  pet: false,
  introduction: "I am a freelance web-designer and have a flexible working hour. I prefer to run in the afternoon around my area but am generally flexible"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner9.jpg"))
user9.image.attach(io: file, filename: 'user9photo.png', content_type: 'image/png')
user9.save!

user10 = User.new(
  first_name: "Rick",
  last_name: "Warren",
  address: "Seoul Yangjae-daero",
  age: 23,
  level: "average",
  email: "rick@gmail.com",
  password: 123456,
  latitude: 37.519356,
  longitude:  127.135084,
  gender: "male",
  preferred_time: "evening",
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
  address: "Seoul Shindang 369-36",
  age: 23,
  level: "slow",
  email: "mizuki@gmail.com",
  password: 123456,
  latitude: 37.554863,
  longitude: 127.011245,
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
  address: "Seoul shindang 31dong",
  age: 27,
  level: "fast",
  email: "allen@gmail.com",
  password: 123456,
  latitude: 37.553765,
  longitude:  127.015402,
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
  address: "Seoul shindang Dasan-ro",
  age: 23,
  level: "average",
  email: "vikas@gmail.com",
  password: 123456,
  latitude: 37.551247,
  longitude: 127.007577,
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
  address: "Seoul Jagok-dong",
  age: 27,
  level: "fast",
  email: "stephanie@gmail.com",
  password: 123456,
  latitude: 37.472228,
  longitude: 127.099472,
  gender: "female",
  preferred_time: "evening",
  preferred_day: "weekend",
  pet: true,
  introduction: "I jog with my pet every evening. She is 3 years old toy poodle. Looking for play/running-buddies who also have pets"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner14.jpg"))
user14.image.attach(io: file, filename: 'user14photo.png', content_type: 'image/png')
user14.save!

user15 = User.new(
  first_name: "Kelly",
  last_name: "Steven",
  address: "Seoul Shindang 11ba-gil",
  age: 27,
  level: "average",
  email: "kelly@gmail.com",
  password: 123456,
  latitude: 37.550545,
  longitude:  127.006155,
  gender: "female",
  preferred_time: "evening",
  preferred_day: "weekdays",
  pet: true,
  introduction: "I am a travel journalist/photographer and currently based in Korea. Look forward to meeting new friends and finding beautiful scenaries in the city"
)

file = File.open(File.join(Rails.root, "/app/assets/images/runner15.jpg"))
user15.image.attach(io: file, filename: 'user15photo.png', content_type: 'image/png')
user15.save!

conversation1 = Conversation.create!(
  user1_id: user14.id,
  user2_id: user4.id
)

conversation2 = Conversation.create!(
  user1_id: user3.id,
  user2_id: user1.id
)

Track1 = Track.create!(
  name: "Han River Paths",
  address: "330, Yeouidong-ro, Yeongdeungpo-gu, Seoul, Republic of Korea",
  description: "Running along the Han River (Han-Gang) is one of the most popular places to run in Seoul. It’s a wonderful greenbelt, with miles of flat paths between numerous bridges, with lots of options for loops. There are great views of the river, and it is possible to cross over most of the bridges spanning this route. The Banpo Bridge is beautifully lit at night. We offfer a couple of options here. To stay mainly on the south side, in Riverside Park (Banpo Hangang), the longest stretch is 5k (3 miles) between the Dongiak Bridge to the west and the Dongho Bridge to the East. It’s a 10k if you’d like to do the full out and back! Take a quick detour over to Seoraeseom, an artificially created island, with some nice paths (and refresher spots). Alternatively, a good loop is starting on the north side, near the Ichon Station, at Hangang Bridge. Run 3.2 km (2 miles) east to the Banpo Bridge, cross it over to the south side, and turn left, heading west about 1.6k (1 mile) to the Dongiak Bridge, to the end.",
  keyword: ['Along the Water', 'Iconic', 'Multi-Use Trails'],
  latitude: 37.528354,
  longitude: 126.933920,
  user: user1
)

file = File.open(File.join(Rails.root, "/app/assets/images/bike_path.jpg"))
Track1.image.attach(io: file, filename: 'track1photo.png', content_type: 'image/png')
Track1.save!

Track2 = Track.create!(
  name: "Olympic Stadium",
  address: "424, Olympic-ro, Songpa-gu, Seoul, Republic of Korea",
  description: "Situated in the southwest part of Seoul, Olympic Park, site of the 1988 summer games, still boasts six Olympic venues and 197 original sculptures set among the grounds. It’s a center for walking and running, with several marked paths of varying length. See the interactive map link. Centering on Mongchon Forest trails, enjoy Lakeside Lane, Fortress Lane, Memory Lane, Lovers’ Lane and Youth Lane, with lengths of 1.3 km to 4.3 km. Several are quite hilly! Youth Lane is especially meant for runners. Enjoy running though World Peace Gate, run around 88 Lake, and wonderful flower gardens.",
  keyword: ['Multi-Use Trails'],
  latitude: 37.519900,
  longitude: 127.122485,
  user: user2
)

file = File.open(File.join(Rails.root, "/app/assets/images/olympic_stadium.jpg"))
Track2.image.attach(io: file, filename: 'track2photo.png', content_type: 'image/png')
Track2.save!

Track3 = Track.create!(
  name: "Bukhansan National Park",
  address: "64, Daeseomun-gil, Eunpyeong-gu, Seoul, Republic of Korea",
  description: "This is a large national park north of Seoul, covering 78 square km. It’s a great place for a walk, hike, or trail run. Most of the trails are wooded, with varying surfaces. There are thousand-year-old temples, huge seated Buddhas carved into the sides of mountains, the Pukhansanseong (“Northern Mountain Fortress”), waterfalls, and all manner of exotic birds, surrounded by gorges and granite peak. There are great views, as well. There are several signed paths that are great for trail running. From the south-area entrance at Ui-dong (nearest to the city), you can select between a 9.1-K north-south trail (“Traversing Course”), an east-west 6.5-K (“Crossing Course”), or circular 7.1- and 8.1-K trails, among others. A more challenging option is to attempt Bukhansan Mountain, the highest peak of the city. It’s a challenging ascent but there are great views. Start at Bukhansanseong Hiking Support Center near Gupabal Station.",
  keyword: ['Hilly', 'Trail Running'],
  latitude: 37.654317,
  longitude: 126.948526,
  user: user3
)

file = File.open(File.join(Rails.root, "/app/assets/images/bukhansan.jpg"))
Track3.image.attach(io: file, filename: 'track3photo.png', content_type: 'image/png')
Track3.save!

Track4 = Track.create!(
  name: "Cheonggyecheon Stream Trail",
  address: "1, Cheonggyecheon-ro, Jongno-gu, Seoul, Republic of Korea",
  description: "Cheonggyecheon Stream is a 10.9 km path, part of a major urban renewal project opened in 2005. It’s a great spot to walk or run right through the heart of the city. Much of the path is below the roadway, passing under 22 bridges, making for a tranquil spot among the bustle. The trail starts at the large Cheonggye Plaza, a bustling shopping and nightlife area, and runs east, passing near some of Seoul’s important sites, such as Deoksugung Palace, Seoul Plaza, the Sejong Center, Insa-dong Street, Changdeokgung Palace, and Changgyeonggung Palace, making for a good ‘runseeing tour’. It is about 3km (2 miles) to Dongdaemun Design Plaza, and about 6km to Yongdu. The waterfront area has become a popular area for culture and nightlife. Candle Fountain,  features magnificent lighting fixtures and a 4m high, two-tiered waterfall.",
  keyword: ['Along the Water', 'Multi-Use Trails'],
  latitude: 37.569118,
  longitude: 126.978242,
  user: user4
)

file = File.open(File.join(Rails.root, "/app/assets/images/cheonggye.jpg"))
Track4.image.attach(io: file, filename: 'track4photo.png', content_type: 'image/png')
Track4.save!

Track5 = Track.create!(
  name: "Yangjaecheon Stream Trail",
  address: "40, Baumoe-ro 12-gil, Seocho-gu, Seoul, Republic of Korea",
  description: "The Yangjaecheon stream is one of the tributaries of the Hangang River. A bike path runs from Gwacheon to Gangnam, which is great for running as well. It’s about 7 km one way between the Seoul Racehorse Park in the south, to Gangnam, near the Hangnyeoul Station. Much of the trail along the stream has a pleasant canopy and is below the road. There are paths along both sides of the water, in sections, and also separated bike and pedestrian paths, in sections. The road between Dogok-dong to Daechi is lined with around 830 stately metasequoia trees. It’s also pleasant at night, as the trees are backlit by the streetlights provide a wonderfully romantic atmosphere.",
  keyword: ['Along the Water', 'Multi-Use Trails'],
  latitude: 37.468399,
  longitude: 127.031000,
  user: user1
)

file = File.open(File.join(Rails.root, "/app/assets/images/yangjae.jpg"))
Track5.image.attach(io: file, filename: 'track5photo.png', content_type: 'image/png')
Track5.save!

Track6 = Track.create!(
  name: "Namsan Park",
  address: "231, Samil-daero, Jung-gu, Seoul, Republic of Korea",
  description: "900-foot high South Mountain (Namsan Park) is an oasis of green, right in the center of Seoul.  There are about 10 km of paved paths, offering multiple running options. For those who want a challenge, there are five ways to get to the top. The best option the 2k climb from the Seoul Arts center to the Seoul Tower, at the summit. There are great views. A good place to start is the Sungnyemun Gate (also known as Namdaemun Gate), a pagoda-style gate that was one of the old entrances to the city and dates back to the 14th Century. From there, turn left onto Sowollo road and continue until the base of Namsan mountain, about 2km.  The paved mountain run starts there, a steep 1km climb to the top.  One can then run back down the other side of the mountain, with viewing decks along the way, to do a loop.",
  keyword: ['Great Views', 'Hilly', 'Iconic', 'Trail Running'],
  latitude: 37.550883,
  longitude: 126.990931,
  user: user1
)

file = File.open(File.join(Rails.root, "/app/assets/images/namsan.jpeg"))
Track6.image.attach(io: file, filename: 'track6photo.png', content_type: 'image/png')
Track6.save!

Track7 = Track.create!(
  name: "Changdeokgung Secret Garden",
  address: "99, Yulgok-ro, Jongno-gu, Seoul, Republic of Korea",
  description: "Changdeokgung, also known as Changdeokgung Palace, is set within a large park in Jongno-gu, Seoul, South Korea. It is one of the “Five Grand Palaces” built by the kings of the Joseon Dynasty. The garden is open to the public and offers some lovely running over nearly 80 acres of trails. Since the garden is a major tourist attraction, it is best avoided during the peak hours. Note: fee required. One can put together a good 5 km on the garden trails and palace grounds.",
  keyword: ['Iconic'],
  latitude: 37.579968,
  longitude: 126.991592,
  user: user2
)

file = File.open(File.join(Rails.root, "/app/assets/images/changdeokgung.jpeg"))
Track7.image.attach(io: file, filename: 'track7photo.png', content_type: 'image/png')
Track7.save!

Track8 = Track.create!(
  name: "Ansan Trail",
  address: "90, Yeonhui-ro 32-gil, Seodaemun-gu, Seoul, Republic of Korea",
  description: "This is a hilly run with rewarding views of the city from the summit. It’s one of the better options near the city to get some trail running in, although it is possible to do it in regular running shoes. The summit is at 900 feet. Access can be from Great West Gate, or Yonsei University.",
  keyword: ['Great Views', 'Hilly', 'Trail Running'],
  latitude: 37.579296,
  longitude: 126.941532,
  user: user1
)

file = File.open(File.join(Rails.root, "/app/assets/images/ansan.jpeg"))
Track8.image.attach(io: file, filename: 'track8photo.png', content_type: 'image/png')
Track8.save!

Track9 = Track.create!(
  name: "World Cup Park",
  address: "162, Hangangnanji-ro, Mapo-gu, Seoul, Republic of Korea",
  description: "World Cup (Millennium) Park is built on the site of a former landfill in the Sangamdong-gil section of Seoul. This is a great spot for a run, as there are five interconnected parks adjacent to the World Cup stadium. There are miles of trails above the Han River, and there are great views from Haneul (Sky) Park. Run up the 291 stairs! One can put together a run of 5-8 miles without overlapping the trails. It’s about 5 miles around the ‘perimeter’ of the area.",
  keyword: ['Parks', 'Multi-Use Trails'],
  latitude: 37.565286,
  longitude: 126.889372,
  user: user8
)

file = File.open(File.join(Rails.root, "/app/assets/images/worldcup.png"))
Track9.image.attach(io: file, filename: 'track9photo.png', content_type: 'image/png')
Track9.save!

request1 = Request.create!(
  receiver: user4,
  sender: user14,
  status: "Approved",
  start_time: Time.now(),
  end_time: Time.now() + 1.hour
)

request2 = Request.create!(
  receiver: user4,
  sender: user3,
  status: "Approved",
  start_time: Time.now(),
  end_time: Time.now() + 2.hour
)

request3 = Request.create!(
  receiver: user1,
  sender: user10,
  status: "Approved",
  start_time: Time.now() - 1.hour,
  end_time: Time.now() + 1.hour
)

request4 = Request.create!(
  receiver: user1,
  sender: user11,
  status: "Approved",
  start_time: Time.now(),
  end_time: Time.now() + 2.hour
)

event1 = Event.create!(
  user1_id: user14.id,
  user2_id: user4.id,
  start_time: DateTime.strptime("12/02/2020 9:00", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("12/02/2020 10:00", "%m/%d/%Y %H:%M"),
  location: "Hangang Park"
)

event2 = Event.create!(
  user1_id: user3.id,
  user2_id: user4.id,
  start_time: DateTime.strptime("12/08/2020 9:30", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("12/08/2020 10:30", "%m/%d/%Y %H:%M"),
  location: "Seoul forest"
)

event3 = Event.create!(
  user1_id: user11.id,
  user2_id: user1.id,
  start_time: DateTime.strptime("12/17/2020 10:00", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("12/17/2020 11:00", "%m/%d/%Y %H:%M"),
  location: "Cheonggyecheon"
)

event4 = Event.create!(
  user1_id: user2.id,
  user2_id: user3.id,
  start_time: DateTime.strptime("12/14/2020 9:00", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("12/14/2020 10:00", "%m/%d/%Y %H:%M"),
  location: "Namsan Park"
)

event5 = Event.create!(
  user1_id: user10.id,
  user2_id: user1.id,
  start_time: DateTime.strptime("12/06/2020 03:30", "%m/%d/%Y %H:%M"),
  end_time: DateTime.strptime("12/06/2020 04:30", "%m/%d/%Y %H:%M"),
  location: "Bukhansan national park"
)

puts "#{Request.count} - requests"
puts "#{Message.count} - messages"
puts "#{Conversation.count} - conversations"
puts "#{Track.count} - tracks"
puts "#{Event.count} - events"
puts "#{User.count} - users"
