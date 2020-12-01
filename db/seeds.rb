runner1 = User.create(
  email: "jj@gmail.com",
  password: "lewagon",
  first_name: "John",
  last_name: "Smith",
  address: "Gangnam-gu",
)
runner2 = User.create(
  email: "sarah@gmail.com",
  password: "lewagon",
  first_name: "Sarah",
  last_name: "Kim",
  address: "Dongdaemun-gu",
)

request1 = Request.create(
    status: "default",
    receiver_id: 1,
    sender_id: 2,
    start_time: Time.now(),
    end_time: Time.now()
)
