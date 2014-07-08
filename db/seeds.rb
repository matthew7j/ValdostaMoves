# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = User.first 
Event.delete_all
Event.create!(
  title: 'Valdosta Baseball Game',
  sponser: 'Valdosta State University',
  address: '1116 Slater Street Valdosta, GA',
  description: 'Bring money for food and drinks.',
  allday: false,
  start: '2014-05-18 13:00:00.000000',
  end: '2014-05-18 16:00:00.000000', 
  contactphone: 1234567891,
)
Event.create!(
  title: 'Valdosta Football',
  sponser: 'Valdosta State University',
  address: '1116 Slater Street Valdosta, GA',
  description: 'Bring red or blue jersey if you want to play :)',
  allday: false,
  start: '2014-05-12 13:00:00.000000',
  end: '2014-05-12 16:00:00.000000', 
  contactphone: 1234567891,
)
Event.create!(
  title: 'Valdosta Picnic',
  sponser: 'Valdosta State University',
  address: '1116 Slater Street Valdosta, GA',
  description: 'This is going to be a fun time. Food and Drinks included!',
  allday: false,
  start: '2014-05-02 13:00:00.000000',
  end: '2014-05-02 16:00:00.000000', 
  contactphone: 1234567891,
)
Event.create!(
  title: 'Basketball Tournament',
  sponser: 'Atlanta Hawks',
  address: '1000 Peachtree Street Atlanta, GA',
  description: 'Fun pick up basketball games!',
  allday: false,
  start: '2014-05-28 8:00:00.000000',
  end: '2014-05-28 20:00:00.000000', 
  contactphone: 1234567891,
)
Event.create!(
  title: 'NY Marathon',
  sponser: 'NYC',
  address: '2000 Main Street New York, NY',
  description: 'Get ready to run!',
  allday: false,
  start: '2014-05-22 7:00:00.000000',
  end: '2014-05-22 14:00:00.000000', 
  contactphone: 1234567891,
)
Event.create!(
  title: 'Surfing Competition',
  sponser: 'LA Lakers',
  address: '1000 Hollywood Drive Los Angeles, CA',
  description: 'Surf boards provided!',
  allday: false,
  start: '2014-05-04 8:00:00.000000',
  end: '2014-05-04 16:00:00.000000', 
  contactphone: 1234567891,
)
Event.create!(
  title: 'Glow in the dark golf',
  sponser: 'Florida State University',
  address: '2020 Main Street Tallahassee, FL',
  description: 'Golf clubs NOT provided!',
  allday: false,
  start: '2014-04-30 17:00:00.000000',
  end: '2014-04-30 22:00:00.000000', 
  contactphone: 1234567891,
)

Event.create!(
  title: 'Cornhole',
  sponser: 'Valdosta State Univerity',
  address: 'Valdosta State University, GA',
  description: 'Come on out',
  allday: false,
  start: '2014-05-07 17:00:00.000000',
  end: '2014-05-07 22:00:00.000000', 
  contactphone: 1234567891,
)





User.delete_all
user = User.create!(
  email: 'jpkeen@valdosta.edu',
  password: 'password',
  password_confirmation: 'password',
  points: 0,
  event_points: 0,
  rep:0,
  category: 1
)

user = User.create!(
  email: 'leajones@valdosta.edu',
  password: 'password',
  password_confirmation: 'password',
  points: 0,
  event_points: 0,
  rep: 0,
  category: 1
)

user = User.create!(
  email: 'johnmjones@valdosta.edu',
  password: 'password',
  password_confirmation: 'password',
  points: 0,
  event_points: 0,
  rep:0,
  category: 1
)

user = User.create!(
  email: 'pdnguyen@valdosta.edu',
  password: 'password',
  password_confirmation: 'password',
  points: 0,
  event_points: 0,
  rep:0,
  category: 1
)

user = User.create!(
  email: 'tjwoods@valdosta.edu',
  password: 'password',
  password_confirmation: 'password',
  points: 0,
  event_points: 0,
  rep:0,
  category: 1
)

user = User.create!(
  email: 'admin@admin.com',
  password: 'adminadmin',
  password_confirmation: 'adminadmin',
  points: 0,
  event_points: 0,
  rep:0,
  category: 1
)

Forum.delete_all
Topic.delete_all
Post.delete_all
forum = Forum.create!(title: 'Workout Programs', user: user)
topic = Topic.create!(title: 'P90X', user: user, forum:forum)
post = Post.create!(body: 'I did P90X and got great results!', user: user, topic: topic)
post = Post.create!(body: 'I tried it out, but I had to stop because it was too hard', user: user, topic: topic)
post = Post.create!(body: 'If you can stay motivated, this can change your life!', user: user, topic: topic)

topic = Topic.create!(title: 'P90X 2', user: user, forum:forum)
post = Post.create!(body: 'I have done P90X and this is a bit more intense.', user: user, topic: topic)
post = Post.create!(body: 'I was wondering if this was worth the money?', user: user, topic: topic)
post = Post.create!(body: 'This is definately worth the money if you stay motivated.', user: user, topic: topic)

topic = Topic.create!(title: 'P90X 3', user: user, forum:forum)
post = Post.create!(body: 'This is a version of P90X that uses workouts that are shorter! It works great if you stay motivated.', user: user, topic: topic)
post = Post.create!(body: 'I recommend this workout for people who do not have much time.', user: user, topic: topic)

topic = Topic.create!(title: 'Insanity', user: user, forum:forum)
post = Post.create!(body: 'This workout is more cardio and will help you burn fat very quickly!', user: user, topic: topic)
post = Post.create!(body: 'Yes, this workout changed my life! I lost 100 pounds doing this!', user: user, topic: topic)

topic = Topic.create!(title: '21 Day Fix', user: user, forum:forum)
post = Post.create!(body: 'I am wondering if I should try this, it sounds short and easy!', user: user, topic: topic)
post = Post.create!(body: 'Nothing is going to be easy, you are going to have to work at it.', user: user, topic: topic)

topic = Topic.create!(title: 'TurboFire', user: user, forum:forum)
post = Post.create!(body: 'Does anyone know if this workout works?', user: user, topic: topic)
post = Post.create!(body: 'Yes, I do it now and it works great!', user: user, topic: topic)


topic = Topic.create!(title: 'Post Your Workouts and Comments Here!', user: user, forum:forum)
post = Post.create!(body: 'Which is the best of these workouts above?', user: user, topic: topic)
post = Post.create!(body: 'It all depends on what results you want and what activities you do now. Do some research before investing in any workout and check with your doc.', user: user, topic: topic)


forum = Forum.create!(title: 'Losing Fat', user: user)
topic = Topic.create!(title: 'How to Lose Fat Fast!', user: user, forum:forum)
post = Post.create!(body: 'I recommend eating low fat foods and high protein foods and working out! Works great for me!', user: user, topic: topic)
post = Post.create!(body: 'Yes, I agree and also drink a lot of water.', user: user, topic: topic)

topic = Topic.create!(title: 'Calorie Counting 101', user: user, forum:forum)
post = Post.create!(body: 'Counting calories is important in losing fat!', user: user, topic: topic)
post = Post.create!(body: 'Yes, counting calories is essential because you need to eat your daily calorie intake to not gain weight.', user: user, topic: topic)

forum = Forum.create!(title: 'Post Your Own Articles!', user: user)
topic = Topic.create!(title: 'Post Your Event Comments Here!', user: user, forum:forum)
post = Post.create!(body: 'My event is going to be so rad dude!', user: user, topic: topic)
post = Post.create!(body: 'My event is so much better dude!', user: user, topic: topic)

topic = Topic.create!(title: 'Post Your Nutrition Comments Here!', user: user, forum:forum)
post = Post.create!(body: 'My nutrition is going to be so rad dude!', user: user, topic: topic)
post = Post.create!(body: 'My nutrition is so much better dude!', user: user, topic: topic)

topic = Topic.create!(title: 'Post Your Activity Comments Here!', user: user, forum:forum)
post = Post.create!(body: 'My activity is going to be so rad dude!', user: user, topic: topic)
post = Post.create!(body: 'My activity is so much better dude!', user: user, topic: topic)



forum = Forum.create!(title: 'Events', user: user)
topic = Topic.create!(title: 'Best Events', user: user, forum:forum)
post = Post.create!(body: 'Come here to discuss the best events you have attended!', user: user, topic: topic)
post = Post.create!(body: 'I went to the picnic that was sponsored by VSU! It was amazing, I highly recommend events sponsored by then for the future!', user: user, topic: topic)


Comment.delete_all
Comment.create!(
  user_id: 1,
  event_id: 1,
  comment: 'I cannot wait to go to this event. I went to the last one and it was a lot of fun!',
  created_at: '2014-04-17 17:00:00.000000',
  updated_at: '2014-04-17 17:00:00.000000'
)
Comment.create!(
  user_id: 2,
  event_id: 1,
  comment: 'I will be attending as well, see you there James!',
  created_at: '2014-04-17 17:12:00.000000',
  updated_at: '2014-04-17 17:12:00.000000'
)
Comment.create!(
  user_id: 3,
  event_id: 1,
  comment: 'I will be out there as well, looking forward to seeing you guys there',
  created_at: '2014-04-17 17:24:00.000000',
  updated_at: '2014-04-17 17:24:00.000000'
)
Comment.create!(
  user_id: 4,
  event_id: 1,
  comment: 'I will not be able to make it guys, have fun!',
  created_at: '2014-04-17 18:05:00.000000',
  updated_at: '2014-04-17 18:05:00.000000'
)
Comment.create!(
  user_id: 5,
  event_id: 1,
  comment: 'I am going as well, cannot wait to see you guys there <3',
  created_at: '2014-04-17 19:00:00.000000',
  updated_at: '2014-04-17 19:00:00.000000'
)
Comment.create!(
  user_id: 1,
  event_id: 1,
  comment: 'That was a lot of fun, I am glad that I went!',
  created_at: '2014-04-19 12:01:00.000000',
  updated_at: '2014-04-19 12:01:00.000000'
)
Comment.create!(
  user_id: 2,
  event_id: 1,
  comment: 'I had fun as well, thanks for coming everyone!',
  created_at: '2014-04-21 15:44:00.000000',
  updated_at: '2014-04-21 15:44:00.000000'
)
Comment.create!(
  user_id: 3,
  event_id: 1,
  comment: 'Same here. I gave this event a 5 rating because of how much I liked it! Be sure to like it guys so that they will put together more events like this for us!',
  created_at: '2014-04-22 16:56:00.000000',
  updated_at: '2014-04-22 16:56:00.000000'
)
Comment.create!(
  user_id: 5,
  event_id: 1,
  comment: 'Yes, I also rated it. Cannot wait for the next one!',
  created_at: '2014-04-24 12:44:00.000000',
  updated_at: '2014-04-24 12:44:00.000000'
)


Comment.create!(
  user_id: 1,
  event_id: 2,
  comment: 'I cannot wait to go to this event. I went to the last one and it was a lot of fun!',
  created_at: '2014-04-17 17:00:00.000000',
  updated_at: '2014-04-17 17:00:00.000000'
)
Comment.create!(
  user_id: 2,
  event_id: 2,
  comment: 'I will be attending as well, see you there James!',
  created_at: '2014-04-17 17:12:00.000000',
  updated_at: '2014-04-17 17:12:00.000000'
)
Comment.create!(
  user_id: 3,
  event_id: 2,
  comment: 'I will be out there as well, looking forward to seeing you guys there',
  created_at: '2014-04-17 17:24:00.000000',
  updated_at: '2014-04-17 17:24:00.000000'
)
Comment.create!(
  user_id: 4,
  event_id: 2,
  comment: 'I will not be able to make it guys, have fun!',
  created_at: '2014-04-17 18:05:00.000000',
  updated_at: '2014-04-17 18:05:00.000000'
)
Comment.create!(
  user_id: 5,
  event_id: 2,
  comment: 'I am going as well, cannot wait to see you guys there <3',
  created_at: '2014-04-17 19:00:00.000000',
  updated_at: '2014-04-17 19:00:00.000000'
)
Comment.create!(
  user_id: 1,
  event_id: 2,
  comment: 'That was a lot of fun, I am glad that I went!',
  created_at: '2014-04-29 12:01:00.000000',
  updated_at: '2014-04-29 12:01:00.000000'
)
Comment.create!(
  user_id: 2,
  event_id: 2,
  comment: 'I had fun as well, thanks for coming everyone!',
  created_at: '2014-04-29 15:44:00.000000',
  updated_at: '2014-04-29 15:44:00.000000'
)
Comment.create!(
  user_id: 3,
  event_id: 2,
  comment: 'Same here. I gave this event a 5 rating because of how much I liked it! Be sure to like it guys so that they will put together more events like this for us!',
  created_at: '2014-04-30 16:56:00.000000',
  updated_at: '2014-04-30 16:56:00.000000'
)
Comment.create!(
  user_id: 5,
  event_id: 2,
  comment: 'Yes, I also rated it. Cannot wait for the next one!',
  created_at: '2014-05-02 12:44:00.000000',
  updated_at: '2014-05-02 12:44:00.000000'
)


Comment.create!(
  user_id: 1,
  event_id: 3,
  comment: 'I cannot wait to go to this event. I went to the last one and it was a lot of fun!',
  created_at: '2014-04-17 17:00:00.000000',
  updated_at: '2014-04-17 17:00:00.000000'
)
Comment.create!(
  user_id: 2,
  event_id: 3,
  comment: 'I will be attending as well, see you there James!',
  created_at: '2014-04-17 17:12:00.000000',
  updated_at: '2014-04-17 17:12:00.000000'
)
Comment.create!(
  user_id: 3,
  event_id: 3,
  comment: 'I will be out there as well, looking forward to seeing you guys there',
  created_at: '2014-04-17 17:24:00.000000',
  updated_at: '2014-04-17 17:24:00.000000'
)
Comment.create!(
  user_id: 4,
  event_id: 3,
  comment: 'I will not be able to make it guys, have fun!',
  created_at: '2014-04-17 18:05:00.000000',
  updated_at: '2014-04-17 18:05:00.000000'
)
Comment.create!(
  user_id: 5,
  event_id: 3,
  comment: 'I am going as well, cannot wait to see you guys there <3',
  created_at: '2014-04-17 19:00:00.000000',
  updated_at: '2014-04-17 19:00:00.000000'
)
Comment.create!(
  user_id: 1,
  event_id: 3,
  comment: 'That was a lot of fun, I am glad that I went!',
  created_at: '2014-04-23 12:01:00.000000',
  updated_at: '2014-04-23 12:01:00.000000'
)
Comment.create!(
  user_id: 2,
  event_id: 3,
  comment: 'I had fun as well, thanks for coming everyone!',
  created_at: '2014-04-24 15:44:00.000000',
  updated_at: '2014-04-24 15:44:00.000000'
)
Comment.create!(
  user_id: 3,
  event_id: 3,
  comment: 'Same here. I gave this event a 5 rating because of how much I liked it! Be sure to like it guys so that they will put together more events like this for us!',
  created_at: '2014-04-24 16:56:00.000000',
  updated_at: '2014-04-24 16:56:00.000000'
)
Comment.create!(
  user_id: 5,
  event_id: 3,
  comment: 'Yes, I also rated it. Cannot wait for the next one!',
  created_at: '2014-04-25 12:44:00.000000',
  updated_at: '2014-04-25 12:44:00.000000'
)



Comment.create!(
  user_id: 1,
  event_id: 4,
  comment: 'I cannot wait to go to this event. I went to the last one and it was a lot of fun!',
  created_at: '2014-04-17 17:00:00.000000',
  updated_at: '2014-04-17 17:00:00.000000'
)
Comment.create!(
  user_id: 2,
  event_id: 4,
  comment: 'I will be attending as well, see you there James!',
  created_at: '2014-04-17 17:12:00.000000',
  updated_at: '2014-04-17 17:12:00.000000'
)
Comment.create!(
  user_id: 3,
  event_id: 4,
  comment: 'I will be out there as well, looking forward to seeing you guys there',
  created_at: '2014-04-17 17:24:00.000000',
  updated_at: '2014-04-17 17:24:00.000000'
)
Comment.create!(
  user_id: 4,
  event_id: 4,
  comment: 'I will not be able to make it guys, have fun!',
  created_at: '2014-04-17 18:05:00.000000',
  updated_at: '2014-04-17 18:05:00.000000'
)
Comment.create!(
  user_id: 5,
  event_id: 4,
  comment: 'I am going as well, cannot wait to see you guys there <3',
  created_at: '2014-04-17 19:00:00.000000',
  updated_at: '2014-04-17 19:00:00.000000'
)
Comment.create!(
  user_id: 1,
  event_id: 4,
  comment: 'That was a lot of fun, I am glad that I went!',
  created_at: '2014-05-19 12:01:00.000000',
  updated_at: '2014-05-19 12:01:00.000000'
)
Comment.create!(
  user_id: 2,
  event_id: 4,
  comment: 'I had fun as well, thanks for coming everyone!',
  created_at: '2014-05-21 15:44:00.000000',
  updated_at: '2014-05-21 15:44:00.000000'
)
Comment.create!(
  user_id: 3,
  event_id: 4,
  comment: 'Same here. I gave this event a 5 rating because of how much I liked it! Be sure to like it guys so that they will put together more events like this for us!',
  created_at: '2014-05-22 16:56:00.000000',
  updated_at: '2014-05-22 16:56:00.000000'
)
Comment.create!(
  user_id: 5,
  event_id: 4,
  comment: 'Yes, I also rated it. Cannot wait for the next one!',
  created_at: '2014-05-24 12:44:00.000000',
  updated_at: '2014-05-24 12:44:00.000000'
)



Comment.create!(
  user_id: 1,
  event_id: 5,
  comment: 'I cannot wait to go to this event. I went to the last one and it was a lot of fun!',
  created_at: '2014-04-17 17:00:00.000000',
  updated_at: '2014-04-17 17:00:00.000000'
)
Comment.create!(
  user_id: 2,
  event_id: 5,
  comment: 'I will be attending as well, see you there James!',
  created_at: '2014-04-17 17:12:00.000000',
  updated_at: '2014-04-17 17:12:00.000000'
)
Comment.create!(
  user_id: 3,
  event_id: 5,
  comment: 'I will be out there as well, looking forward to seeing you guys there',
  created_at: '2014-04-17 17:24:00.000000',
  updated_at: '2014-04-17 17:24:00.000000'
)
Comment.create!(
  user_id: 4,
  event_id: 5,
  comment: 'I will not be able to make it guys, have fun!',
  created_at: '2014-04-17 18:05:00.000000',
  updated_at: '2014-04-17 18:05:00.000000'
)
Comment.create!(
  user_id: 5,
  event_id: 5,
  comment: 'I am going as well, cannot wait to see you guys there <3',
  created_at: '2014-04-17 19:00:00.000000',
  updated_at: '2014-04-17 19:00:00.000000'
)
Comment.create!(
  user_id: 1,
  event_id: 5,
  comment: 'That was a lot of fun, I am glad that I went!',
  created_at: '2014-05-19 12:01:00.000000',
  updated_at: '2014-05-19 12:01:00.000000'
)
Comment.create!(
  user_id: 2,
  event_id: 5,
  comment: 'I had fun as well, thanks for coming everyone!',
  created_at: '2014-05-21 15:44:00.000000',
  updated_at: '2014-05-21 15:44:00.000000'
)
Comment.create!(
  user_id: 3,
  event_id: 5,
  comment: 'Same here. I gave this event a 5 rating because of how much I liked it! Be sure to like it guys so that they will put together more events like this for us!',
  created_at: '2014-05-22 16:56:00.000000',
  updated_at: '2014-05-22 16:56:00.000000'
)
Comment.create!(
  user_id: 5,
  event_id: 5,
  comment: 'Yes, I also rated it. Cannot wait for the next one!',
  created_at: '2014-05-24 12:44:00.000000',
  updated_at: '2014-05-24 12:44:00.000000'
)




Comment.create!(
  user_id: 1,
  event_id: 6,
  comment: 'I cannot wait to go to this event. I went to the last one and it was a lot of fun!',
  created_at: '2014-04-06 17:00:00.000000',
  updated_at: '2014-04-06 17:00:00.000000'
)
Comment.create!(
  user_id: 2,
  event_id: 6,
  comment: 'I will be attending as well, see you there James!',
  created_at: '2014-04-06 17:12:00.000000',
  updated_at: '2014-04-06 17:12:00.000000'
)
Comment.create!(
  user_id: 3,
  event_id: 6,
  comment: 'I will be out there as well, looking forward to seeing you guys there',
  created_at: '2014-04-06 17:24:00.000000',
  updated_at: '2014-04-06 17:24:00.000000'
)
Comment.create!(
  user_id: 4,
  event_id: 6,
  comment: 'I will not be able to make it guys, have fun!',
  created_at: '2014-04-06 18:05:00.000000',
  updated_at: '2014-04-06 18:05:00.000000'
)
Comment.create!(
  user_id: 5,
  event_id: 6,
  comment: 'I am going as well, cannot wait to see you guys there <3',
  created_at: '2014-04-06 19:00:00.000000',
  updated_at: '2014-04-06 19:00:00.000000'
)
Comment.create!(
  user_id: 1,
  event_id: 6,
  comment: 'That was a lot of fun, I am glad that I went!',
  created_at: '2014-04-19 12:01:00.000000',
  updated_at: '2014-04-19 12:01:00.000000'
)
Comment.create!(
  user_id: 2,
  event_id: 6,
  comment: 'I had fun as well, thanks for coming everyone!',
  created_at: '2014-04-21 15:44:00.000000',
  updated_at: '2014-04-21 15:44:00.000000'
)
Comment.create!(
  user_id: 3,
  event_id: 6,
  comment: 'Same here. I gave this event a 5 rating because of how much I liked it! Be sure to like it guys so that they will put together more events like this for us!',
  created_at: '2014-04-22 16:56:00.000000',
  updated_at: '2014-04-22 16:56:00.000000'
)
Comment.create!(
  user_id: 5,
  event_id: 6,
  comment: 'Yes, I also rated it. Cannot wait for the next one!',
  created_at: '2014-04-24 12:44:00.000000',
  updated_at: '2014-04-24 12:44:00.000000'
)

Category.delete_all
Category.create(
 
  name: 'Juicing Recipes',
  created_at: '2014-04-24 12:44:00.000000',
  updated_at: '2014-04-24 12:44:00.000000',
  imagesrc: open('app/assets/images/juicingCategory.jpeg')
  )
  
  Category.create(
  
  name: 'Vegetarian Recipes',
  created_at: '2014-04-24 12:44:00.000002',
  updated_at: '2014-04-24 12:44:00.000002',
  imagesrc: open('app/assets/images/vegetarianCategory.jpeg')
  )
  
  Category.create(
 
  name: 'Healthy Fish Recipes',
  created_at: '2014-04-24 12:44:00.000003',
  updated_at: '2014-04-24 12:44:00.000003',
  imagesrc: open('app/assets/images/fishCategory.jpg')
  )
  
  Category.create(
  
  name: 'Recipes for the Kids',
  created_at: '2014-04-24 12:44:00.000004',
  updated_at: '2014-04-24 12:44:00.000004',
  imagesrc: open('app/assets/images/chickenTortillaSoup.jpeg')
  )
  
    Category.create(
  
  name: 'Desserts',
  created_at: '2014-04-24 12:44:00.000005',
  updated_at: '2014-04-24 12:44:00.000005',
  imagesrc: open('app/assets/images/carrotCupcakes.jpeg')
  )
  
  Recipe.delete_all
  Recipe.create(
  
  name: 'Fishermans Stoup',
  user_id: 6,
  instructions: 'For the seafood base: Place the red onion, chile pepper, lemon zest, garlic, parsley, thyme, and bay leaves in a food processor and process ingredients into paste.

For the soup base: In a Dutch oven, heat the extra-virgin olive oil and anchovies over medium-high heat, when the anchovies melt into the oil add the seafood base and stir 3 to 4 minutes then add the celery, potatoes, and red pepper and cover the pot 4 to 5 minutes to sweat them out, stirring occasionally. Deglaze the pot with beer. Add tomatoes and chicken stock and bring to a boil, simmer for 20 minutes or until it has reduced by a third, then turn off the heat, cool and store for a make-ahead meal.

To reheat: Reheat over medium-high heat. Crust up and warm bread in a hot oven. When the stoup comes to a boil, fold or nestle the cod and scallops into the liquid, and return to a bubble, cook for 5 to 6 minutes, until the fish is opaque and cooked through, then turn off the heat. Serve immediately with lots of bread for mopping. ',
  description: 'Seafood Base
1 medium red onion, coarsely chopped
1 Fresno chile pepper, chopped
1 tablespoon fresh lemon zest
2 cloves garlic, grated
1/2 cup flat leaf parsley, a couple of handfuls
2 tablespoons fresh thyme leaves
2 fresh bay leaves
Fresh flat-leaf parsley
Soup base
1/4 cup extra-virgin olive oil
6 anchovy filets
4 small ribs celery, chopped
2 starchy potatoes, peeled and chopped into small dice
1 red pepper, cored and finely chopped
1/2 bottle lager beer (about 6 ounces)
1 (28-ounce) can diced tomatoes or chunky-style crushed tomatoes
2 cups chicken stock
1 pound cod, cut into chunks
1 pound sea scallops
1 loaf ciabatta or other crusty bread of choice, for serving',
  created_at: '2014-04-24 12:44:00.000003',
  updated_at: '2014-04-24 12:44:00.000003',
  category_id: 3,
  imagesrc: open('app/assets/images/clamSoup.jpeg')
  )  

  Recipe.create(
  
  name: 'Halibut with Pepitas',
  user_id: 6,
  instructions: 'In a small, dry skillet over medium-low heat, toast the pepitas lightly. Dont allow them to brown. As soon as you begin to smell them, remove the pan from the heat and transfer to a large plate. Set aside.

Preheat the oven to 400 degrees F.

Sprinkle the halibut on both sides with 1 teaspoon of the salt and the pepper. Heat the oil in a large skillet with an ovenproof handle over medium-high heat until it begins to shimmer but is not smoking. Place the fillets skin side up in the hot oil and sear until the fish begins to turn color, 2 to 3 minutes. Turn the fillets and add the lemon juice, wine, and butter to the pan. As soon as the butter melts and becomes foamy, add the capers and tomatoes and simmer until the tomatoes release some juices, about 1 minute.

Place the pan in the oven until the fish is cooked through, 7 to 10 minutes. Baste the fish with some of the juices and transfer to serving plates. Add the cup torn basil, pepitas, and the remaining teaspoon of salt to the pan juices and stir until the basil is slightly wilted. Spoon the mixture over the fish, garnish with fresh basil leaves, and serve.

This is a restaurant-style dish that boasts a lot of flavor thanks to a tomato-basil sauce with bursts of capers and the crunch of toasted pepitas.
 ',
  description: '2 tablespoons pepitas (pumpkin seeds)
4 6 -ounce halibut fillets
2 teaspoons kosher salt
1/2 teaspoon freshly ground black pepper
2 tablespoons extra-virgin olive oil
2 tablespoons fresh lemon juice
1 cup dry white wine
2 tablespoons unsalted butter
1 1/2 tablespoons capers, drained and rinsed
1/2 cup halved cherry tomatoes (quartered if theyre big)
1/4 cup torn fresh basil, plus a handful of small leaves for garnish',
  created_at: '2014-04-24 12:44:00.000004',
  updated_at: '2014-04-24 12:44:00.000004',
  category_id: 3,
  imagesrc: open('app/assets/images/halibutRecipe.jpeg')
  )  
  
  Recipe.create(
  
  name: 'Mahi Mahi with Cauliflower',
  user_id: 6,
  instructions: 'Preheat the oven to 375 degrees F. Season the fish with salt and pepper. Heat 1 tablespoon butter in a large nonstick skillet over medium-high heat. Sear the fish until golden brown on one side, about 3 minutes. Transfer to a rimmed baking sheet, cooked-side up, and roast in the oven until just cooked through, about 10 minutes.

Meanwhile, melt the remaining 3 tablespoons butter in the skillet over medium-high heat. Add the cauliflower and cook, stirring, until golden brown and crisp-tender, about 6 minutes. Add the almonds, raisins, coriander, 1/4 teaspoon salt, and pepper to taste; cook until the almonds are golden, about 2 minutes. Remove from the heat and stir in the lemon juice and parsley.

Divide the fish among plates and serve with the cauliflower and lemon wedges.',
  description: '4 6 -ounce skinless mahi mahi fillets (about 3/4 inch thick)
Kosher salt and freshly ground pepper
4 tablespoons unsalted butter
1/2 head cauliflower, florets cut into 1/2-inch pieces
1/4 cup sliced almonds
1/4 cup golden raisins
1/4 teaspoon ground coriander
1 tablespoon fresh lemon juice
1/4 cup chopped fresh parsley
Lemon wedges, for serving',
  created_at: '2014-04-24 12:44:00.000005',
  updated_at: '2014-04-24 12:44:00.000005',
  category_id: 3,
  imagesrc: open('app/assets/images/mahiCauliflower.jpeg')
  )  
  
  Recipe.create(
  
  name: 'Portuguese-Style Fish Stew',
  user_id: 6,
  description: '3 tablespoons extra-virgin olive oil
2 bay leaves
2 teaspoons paprika (smoked or sweet)
1 small onion, thinly sliced
1 small green bell pepper, thinly sliced
1 14 .5-ounce can diced tomatoes
1 clove garlic, finely chopped
1/4 cup chopped fresh cilantro
Kosher salt and freshly ground pepper
1 1/2 pounds skinless striped bass, cut into 2-inch chunks
4 slices crusty bread, toasted',
  instructions: 'Heat 2 tablespoons olive oil in a medium saucepan over medium-high heat. Add the bay leaves and paprika and cook, stirring, 30 seconds. Add the onion, bell pepper, tomatoes, garlic and 2 tablespoons of the cilantro; season with salt and pepper. Cover and cook until the vegetables are softened, about 10 minutes.

Add 1 cup water and reduce the heat to medium low. Season the fish with salt and pepper, then nestle the pieces among the vegetables in the pan. Cover and simmer until the fish is just cooked through, 5 to 7 minutes.

Divide the stew among bowls. Drizzle with the remaining 1 tablespoon olive oil and sprinkle with the remaining 2 tablespoons cilantro. Serve with the bread.',
  created_at: '2014-04-24 12:44:00.000006',
  updated_at: '2014-04-24 12:44:00.000006',
  category_id: 3,
  imagesrc: open('app/assets/images/fishStew.jpeg')
  )  
  
Recipe.create(
  
  name: 'Baked Salmon',
  user_id: 6,
  description: '4 (5 ounces each) salmon fillets
2 teaspoons olive oil plus 2 tablespoons
Salt and freshly ground black pepper
3 tomatoes, chopped, or 1 (14-ounce) can chopped tomatoes, drained
2 chopped shallots
2 tablespoons fresh lemon juice
1 teaspoon dried oregano
1 teaspoon dried thyme',
  instructions: 'Preheat the oven to 400 degrees F.

Sprinkle salmon with 2 teaspoons olive oil, salt, and pepper. Stir the tomatoes, shallots, 2 tablespoons of oil, lemon juice, oregano, thyme, salt and pepper in a medium bowl to blend.

Place a salmon fillet, oiled side down, atop a sheet of foil. Wrap the ends of the foil to form a spiral shape. Spoon the tomato mixture over the salmon. Fold the sides of the foil over the fish and tomato mixture, covering completely; seal the packets closed. Place the foil packet on a heavy large baking sheet. Repeat until all of the salmon have been individually wrapped in foil and placed on the baking sheet. Bake until the salmon is just cooked through, about 25 minutes. Using a large metal spatula, transfer the foil packets to plates and serve',
  created_at: '2014-04-24 12:44:00.000007',
  updated_at: '2014-04-24 12:44:00.000007',
  category_id: 3,
  imagesrc: open('app/assets/images/bakedSalmon.jpeg')
  )  
  
   Recipe.create(
  
  name: 'Salmon Hash',
  user_id: 6,
  description: '1/4 cup nonfat plain Greek yogurt
1 tablespoon dijon mustard
2 tablespoons chopped fresh dill
2 tablespoons extra-virgin olive oil
3 cups frozen cubed hash browns
Kosher salt and freshly ground pepper
1 red onion, thinly sliced
2 bell peppers (red and/or green), chopped
3/4 pound skinless salmon fillet, cut into 1/2-inch pieces
8 cups baby arugula
Lemon wedges, for serving (optional)',
  instructions: 'Mix the yogurt, mustard and dill in a small bowl.

Heat 1 1/2 tablespoons olive oil in a large nonstick skillet over medium-high heat. Add the hash browns, sprinkle with 1/4 teaspoon each salt and pepper, and cook until browned, about 12 minutes. Transfer to a bowl.

Heat the remaining 1/2 tablespoon olive oil in the skillet, then add the onion, bell peppers and 1/4 teaspoon salt; cook until golden, about 8 minutes. Add the salmon and cook, stirring occasionally, until just cooked through, about 3 minutes. Return the hash browns to the skillet to heat through, then remove from the heat and stir in 3 tablespoons of the yogurt mixture. Season with salt and pepper.

Stir 1 tablespoon water into the remaining yogurt mixture and toss with the arugula in a medium bowl. Serve the salmon hash with the arugula salad, and lemon wedges, if desired.',
  created_at: '2014-04-24 12:44:00.000007',
  updated_at: '2014-04-24 12:44:00.000007',
  category_id: 3,
  imagesrc: open('app/assets/images/salmonHash.jpeg')
  )  

 Recipe.create(
  
  name: 'Salmon with Lemon, Capers, and Rosemary',
  user_id: 6,
  instructions: 'Brush top and bottom of salmon fillets with olive oil and season with salt, pepper, and rosemary. Place each piece of seasoned salmon on a piece of foil large enough to fold over and seal. Top the each piece of salmon with 2 lemon slices, 1 tablespoon of lemon juice, 2 tablespoons of wine, and 1 teaspoon of capers. Wrap up salmon tightly in the foil packets.

Place a grill pan over medium-high heat or preheat a gas or charcoal grill. Place the foil packets on the hot grill and cook for 10 minutes for a 1-inch thick piece of salmon. Serve in the foil packets.',
  description: '4 (6-ounce) salmon fillets
1/4 cup extra-virgin olive oil
1/2 teaspoon salt
1/2 teaspoon freshly ground black pepper
1 tablespoon minced fresh rosemary leaves
8 lemon slices (about 2 lemons)
1/4 cup lemon juice (about 1 lemon)
1/2 cup Marsala wine (or white wine)
4 teaspoons capers
4 pieces of aluminum foil',
  created_at: '2014-04-24 12:44:00.000008',
  updated_at: '2014-04-24 12:44:00.000008',
  category_id: 3,
  imagesrc: open('app/assets/images/lemonCaperSalmon.jpeg')
  )  
  
Recipe.create(
  
  name: 'Shrimp Gumbo',
  user_id: 6,
  instructions: 'Preheat the oven to 350 degrees F.

Place the vegetable oil and flour into a 5 to 6-quart cast iron Dutch oven and whisk together to combine. Place on the middle shelf of the oven, uncovered, and bake for 1 1/2 hours, whisking 2 to 3 times throughout the cooking process.

While the roux is baking, de-head, peel and devein the shrimp. Place the shrimp in a bowl and set in the refrigerator. Place the heads and shells in a 4-quart saucepan along with the 2 quarts of water, set over high heat and bring to a boil. Decrease the heat to low and simmer for 1 hour or until the liquid has reduced to 1-quart. Remove from the heat and strain the liquid into a container, discarding the solids.

Once the roux is done, carefully remove it from the oven and set over medium-high heat. Gently add the onions, celery, green peppers and garlic and cook, moving constantly for 7 to 8 minutes or until the onions begin to turn translucent. Add the tomatoes, salt, black pepper, thyme, cayenne pepper, and bay leaves and stir to combine. Gradually add the shrimp broth while whisking continually. Decrease the heat to low, cover and cook for 35 minutes. Turn off the heat, add the shrimp and sausage and stir to combine. Add the file powder while stirring constantly. Cover and allow to sit for 10 minutes prior to serving. Serve over rice.',
  description: '4 ounces vegetable oil
4 ounces all-purpose flour
1 1/2 pounds raw, whole, head-on medium-sized (31-50 count) shrimp
2 quarts water
1 cup diced onion
1/2 cup diced celery
1/2 cup diced green peppers
2 tablespoons minced garlic
1/2 cup peeled, seeded and chopped tomato
1 tablespoon kosher salt
1/2 teaspoon freshly ground black pepper
1 teaspoon fresh thyme, chopped
1/4 teaspoon cayenne pepper
2 bay leaves
1/2 pound andouille sausage, cut into 1/4-inch pieces and browned
1 tablespoon file powder',
  created_at: '2014-04-24 12:44:00.000009',
  updated_at: '2014-04-24 12:44:00.000009',
  category_id: 3,
  imagesrc: open('app/assets/images/shrimpGumbo.jpeg')
  )  
  
Recipe.create(
  
  name: 'Whole-Wheat Spaghetti with Lemon, Basil, and Salmon',
  user_id: 6,
  instructions: 'Bring a large pot of salted water to a boil over high heat. Add the pasta and cook until tender but still firm to the bite, stirring occasionally, about 8 to 10 minutes. Drain pasta and transfer to a large bowl. Add the garlic, extra-virgin olive oil, salt, and pepper. Toss to combine.

Meanwhile, warm the olive oil in a medium skillet over medium-high heat. Season the salmon with salt and pepper. Add the fish to the pan and cook until medium-rare, about 2 minutes per side, depending on the thickness of the fish. Remove the salmon from the pan.

Add the basil, capers, lemon zest, and lemon juice to the spaghetti mixture and toss to combine. Set out 4 serving plates or shallow bowls. Place 1/2 cup spinach in each bowl. Top with 1/4 of the pasta. Top each mound of pasta with a piece of salmon. Serve immediately.',
  description: '1/2 pound whole-wheat spaghetti pasta
1 clove garlic, minced
2 tablespoons extra-virgin olive oil
1/2 teaspoon salt, plus more for seasoning
1/2 teaspoon freshly ground black pepper, plus more for seasoning
1 tablespoon olive oil
4 (4-ounce) pieces salmon
1/4 cup chopped fresh basil leaves
3 tablespoons capers
1 lemon, zested
2 tablespoons lemon juice
2 cups fresh baby spinach leaves',
  created_at: '2014-04-24 12:44:00.000009',
  updated_at: '2014-04-24 12:44:00.000009',
  category_id: 3,
  imagesrc: open('app/assets/images/spaghettiSalmon.jpeg')
  )  
  
  Recipe.create(
  
  name: 'Spicy Shrimp Orecchiette',
  user_id: 6,
  instructions: 'Bring a large pot of salted water to a boil. Add the pasta and cook as the label directs. Reserve 1 1/2 cups cooking water, then drain.

Meanwhile, heat 2 tablespoons olive oil in a large skillet over medium-high heat. Add the chopped fennel bulb and 1/2 teaspoon salt and cook, stirring occasionally, until golden brown, 6 to 8 minutes. Reduce the heat to medium and add the garlic, tomato paste and red pepper flakes. Cook, stirring, 2 more minutes (add a splash of water if the mixture is sticking). Stir in the tomato, shrimp, 1/2 teaspoon salt and 1 cup of the reserved cooking water. Bring to a simmer and cook, stirring occasionally, until the tomatoes are saucy, about 8 more minutes.

Add the pasta and cheese to the sauce and toss to coat. Drizzle with olive oil, season with salt and add more of the reserved pasta water to loosen, if necessary. Stir in the basil leaves and fennel fronds. Divide among plates.',
  description: 'Kosher salt
12 ounces orecchiette pasta
2 tablespoons extra-virgin olive oil, plus more for drizzling
1 small bulb fennel, chopped, plus 1 tablespoon chopped fennel fronds
2 cloves garlic, thinly sliced
2 tablespoons tomato paste
1/4 teaspoon red pepper flakes
1 large tomato, chopped
1/2 pound medium shrimp, peeled, deveined and roughly chopped 1/2 cup grated parmesan cheese
1 cup torn fresh basil',
  created_at: '2014-04-24 12:44:00.0000010',
  updated_at: '2014-04-24 12:44:00.0000010',
  category_id: 3,
  imagesrc: open('app/assets/images/spicyShrimp.jpeg')
  )  

Recipe.create(
  
  name: 'Spicy Shrimp Broth',
  user_id: 6,
  instructions: 'Mix the yogurt, mustard and dill in a small bowl.

Heat 1 1/2 tablespoons olive oil in a large nonstick skillet over medium-high heat. Add the hash browns, sprinkle with 1/4 teaspoon each salt and pepper, and cook until browned, about 12 minutes. Transfer to a bowl.

Heat the remaining 1/2 tablespoon olive oil in the skillet, then add the onion, bell peppers and 1/4 teaspoon salt; cook until golden, about 8 minutes. Add the salmon and cook, stirring occasionally, until just cooked through, about 3 minutes. Return the hash browns to the skillet to heat through, then remove from the heat and stir in 3 tablespoons of the yogurt mixture. Season with salt and pepper.

Stir 1 tablespoon water into the remaining yogurt mixture and toss with the arugula in a medium bowl. Serve the salmon hash with the arugula salad, and lemon wedges, if desired.',
  description: '1/4 cup nonfat plain Greek yogurt
1 tablespoon dijon mustard
2 tablespoons chopped fresh dill
2 tablespoons extra-virgin olive oil
3 cups frozen cubed hash browns
Kosher salt and freshly ground pepper
1 red onion, thinly sliced
2 bell peppers (red and/or green), chopped
3/4 pound skinless salmon fillet, cut into 1/2-inch pieces
8 cups baby arugula
Lemon wedges, for serving (optional)',
  created_at: '2014-04-24 12:44:00.0000011',
  updated_at: '2014-04-24 12:44:00.0000011',
  category_id: 3,
  imagesrc: open('app/assets/images/spicyShrimpBroth.jpeg')
  )  
  
  Recipe.create(
  
  name: 'Tilapia With Hash Browns',
  user_id: 6,
  instructions: 'Preheat the oven to 425 degrees F. Toss the hash browns with the garlic and 1 teaspoon salt in a bowl. Heat 2 tablespoons olive oil in a large nonstick ovenproof skillet over medium heat. Add the hash browns, flatten with a spatula and cook until the bottom is golden brown, 6 to 8 minutes. Drizzle with 2 tablespoons olive oil. Flip the potato cake and pat it back into shape. Cook until crisp and golden, 6 to 8 minutes.

Meanwhile, mix the olives, tomatoes, roasted peppers, scallions and parsley in a bowl. Cut the fish into 12 pieces and season with the dried herbs, salt and pepper.

Scatter half of the olive mixture over the potato cake and top with the fish. Scatter the remaining olive mixture on top and drizzle with the remaining 1 tablespoon olive oil. Transfer the skillet to the oven and bake until the fish is cooked through, about 12 minutes. Drizzle with olive oil and season with salt. Serve from the skillet.',
  description: '1 20 -ounce bag frozen shredded hash browns, thawed
4 cloves garlic, smashed and thinly sliced
Kosher salt
5 tablespoons extra-virgin olive oil,
plus more for drizzling
1/2 cup pitted Spanish green olives, roughly chopped
3/4 pound tomatoes, cut into 1-inch pieces
1/4 cup diced roasted red peppers
3 scallions, white and light green parts only, chopped
2 tablespoons chopped fresh parsley
1 1/2 pounds skinless tilapia fillets
1 teaspoon herbes de Provence or dried rosemary
Freshly ground pepper',
  created_at: '2014-04-24 12:44:00.0000012',
  updated_at: '2014-04-24 12:44:00.0000012',
  category_id: 3,
  imagesrc: open('app/assets/images/tilapiaHashBrowns.jpeg')
  )  

Recipe.create(

  name: 'Chicken Tortilla Soup',
  user_id: 6,
  instructions: 'Place the chicken, tomatoes (and juices), beans, broth, water, onion, garlic, jalapeno, cumin, and chili powder in a slow cooker. Cover and cook on high for
   3 to 4 hours or on low for 6 to 8 hours.
Uncover the slow cooker and use tongs to remove the chicken from the pot. Once cool enough to handle, remove the meat from the bones and shred, then return the
 meat to the pot. Stir in the lemon juice. Crumble a few tortilla chips into each bowl and cover with some soup. Serve sprinkled with cilantro and grated cheese.',
  description: '3 chicken thighs, skin removed
10 -ounce can diced tomatoes
with green chiles
1 1/2 cups cooked black beans
1 1/2 cups chicken broth
1 1/2 cups water
1 yellow onion, finely chopped
3 garlic cloves, finely minced
1 jalapeno, finely chopped
1/2 teaspoon ground cumin
1/2 teaspoon chili powder
Juice of 1/2 lemon
20 tortilla chips
3 tablespoons finely chopped fresh cilantro
1/2 cup shredded Monterey Jack cheese
',
  created_at: '2014-04-24 12:44:00.0000013',
  updated_at: '2014-04-24 12:44:00.0000013',
  category_id: 4,
  imagesrc: open('app/assets/images/chickenTortillaSoup.jpeg')
  )  
  
  Recipe.create(
  
  name: 'Parmesan Fish Sticks',
  user_id: 6,
  instructions: 'Preheat the oven to 450 degrees F.

Rinse the salmon fillet and pat dry with paper towels. Cut the fish in half to make 2 fillets each about 4 by 4 1/2-inches in size. Starting on the longest edge, 
slice the fillets into 1/2-inch pieces. Lay the widest pieces, from the center, cut side down, and slice in half lengthways so all the pieces are equally about 1/2 by 1/2 by 4 1/2-inches in size.

Place the flour in a medium bowl and season with the salt and pepper. Place the egg whites in another bowl and beat until frothy, about 30 seconds. Combine the Parmesan and bread crumbs in a third bowl.

Coat the salmon pieces in the seasoned flour and pat to remove any excess flour. Dip the floured salmon in the egg whites and then into the Parmesan mixture, 
gently pressing the mixture into the fish. Place the breaded salmon pieces on a liberally oiled baking sheet. Drizzle lightly with the olive oil. Bake for 15 to 20 minutes until golden brown.

Mix the mayonnaise, yogurt, Dijon mustard, and parsley (or chives, if using) in a small dipping bowl.

Arrange the fish sticks on a serving platter and serve with the dipping sauce.
',
  description: '1 (18-ounce) center-cut salmon fillet, about 9 by 4 inches, skinned
1/2 cup all-purpose flour
1/2 teaspoon fine sea salt
1/4 teaspoon freshly ground black pepper
3 egg whites
1 cup grated Parmesan
1 cup seasoned bread crumbs
Olive oil, for drizzling
1/3 cup reduced fat mayonnaise
1/3 cup lowfat plain yogurt
1 tablespoon Dijon mustard
1 tablespoon chopped fresh parsley or chives

',
  created_at: '2014-04-24 12:44:00.0000014',
  updated_at: '2014-04-24 12:44:00.0000014',
  category_id: 4,
  imagesrc: open('app/assets/images/fishSticks.jpeg')
  )  

Recipe.create(

  name: 'Crunchy, Oven Baked Chicken Toes',
  user_id: 6,
  instructions: 'In a pie pan or other shallow, large dish, pour out the corn flakes. Crush the cereal up with your hands. Mix in bread crumbs, sugar, salt, pepper, and allspice - 
  your SECRET ingredient. Do not tell anybody what your secret ingredient is - ever! If they ask how you make your special chicken toes, tell them about everything EXCEPT the secret.

Drizzle about 3 tablespoons vegetable oil evenly over the breading, tossing and turning it to mix the oil all through the bread crumbs and crushed-up corn flakes.
 Have the GH pour the oil out slowly. A vegetable oil bottle has a big opening so, 3

tablespoons will pour out pretty quickly, probably by the time you can count to 5, so watch the GH closely and count really loudly!

Have your GH cut the chicken fingers into toes, 2-inch pieces. Turn the chicken in flour, eggs and then in the special crunchy breading. Arrange the chicken toes on a nonstick baking sheet. 
Make your GH go and wash their hands. Place the chicken toes in the oven and cook 15 minutes or until crisp and brown all over.

Mix together honey mustard and barbecue sauce in a small bowl. Serve hot chicken toes with honey mustard and barbecue sauce for dipping.

',
  description: '1 cup corn flakes
1 cup plain bread crumbs
2 tablespoons brown sugar
1 teaspoon salt
1/2 teaspoon black pepper
1/2 teaspoon ground allspice - the SECRET ingredient
3 tablespoons vegetable oil
1 1/2 pounds chicken breast tenders, 2 packages, cut into 2-inch pieces by GH (Grown-up Helpers)
1/3 cup all-purpose flour
2 eggs, beaten
1/4 cup honey mustard (recommended: Guldens)
1/4 cup barbecue sauce



',
  created_at: '2014-04-24 12:44:00.0000015',
  updated_at: '2014-04-24 12:44:00.0000015',
  category_id: 4,
  imagesrc: open('app/assets/images/chickenToes.jpeg')
  )  
  
Recipe.create(

  name: 'Light Chicken Caesar Salad',
  user_id: 6,
  instructions: 'Make the croutons: Preheat the oven to 350 degrees F. Toss the bread cubes in a large bowl with 1 tablespoon olive oil.
   Spread on a baking sheet and bake until crisp, tossing halfway through, about 20 minutes.

Meanwhile, make the dressing: Puree the yogurt, 2 tablespoons parmesan, the garlic, anchovies, lemon juice, mustard and 2 tablespoons water in a mini food processor or a blender.

Pound the chicken between 2 pieces of plastic wrap with a heavy skillet until 1/2 inch thick. Brush a rimmed baking sheet with the remaining 1 tablespoon olive oil; 
add the chicken and season with salt. Brush evenly with 1 tablespoon of the dressing and sprinkle with 2 tablespoons parmesan. Broil, undisturbed, until golden and cooked through, about 5 minutes. 
Transfer to a cutting board.

Toss the lettuce, croutons and the remaining dressing and 3/4 cup parmesan in a large bowl. Thinly slice the chicken. Divide the salad among bowls, top with the chicken and season with pepper.


',
  description: '4 cups cubed day-old crusty bread (preferably whole wheat)
2 tablespoons extra-virgin olive oil
1/2 cup nonfat plain Greek yogurt
1 cup shredded parmesan cheese (about 2 ounces)
1 small clove garlic
2 anchovy fillets
Juice of 1 lemon
1 teaspoon dijon mustard
1 pound skinless, boneless chicken breasts
Kosher salt
2 romaine lettuce hearts, chopped
Freshly ground pepper


',
  created_at: '2014-04-24 12:44:00.0000016',
  updated_at: '2014-04-24 12:44:00.0000016',
  category_id: 4,
  imagesrc: open('app/assets/images/chickenSalad.jpeg')
  )  
  
Recipe.create(

  name: 'Quick and Creamy Fruit Salad',
  user_id: 6,
  instructions: 'Put the apples, melon, pineapple, dried cherries, yogurt, cream of coconut and salt in a large bowl and stir.

',
  description: '2 Granny Smith apples, cored and cut into 1/2-inch chunks
1 medium honeydew melon, cut into 1/2-inch chunks (about 2 cups)
1 20 -ounce can pineapple rings in syrup, drained and cut into chunks
1/2 cup dried cherries
1/2 cup plain yogurt
1/2 cup cream of coconut
Pinch of salt


',
  created_at: '2014-04-24 12:44:00.0000017',
  updated_at: '2014-04-24 12:44:00.0000017',
  category_id: 4,
  imagesrc: open('app/assets/images/fruitSalad.jpeg')
  )  
  
Recipe.create(

  name: 'Oven Fried Chicken',
  user_id: 6,
  instructions: 'Preheat oven to 375 degrees F. Lightly spray a baking sheet with olive oil.

Combine the crackers and corn cereal crumbs, sesame seeds, cayenne, and garlic powder in a shallow bowl. Reserve.

In a large bowl, combine egg whites, yogurt, Dijon mustard, and salt. Add the chicken pieces and coat thoroughly with the yogurt mixture.

One at a time, dip the chicken pieces in the cracker mixture, packing crumbs onto chicken. Arrange the chicken on a baking sheet and spray lightly with olive oil cooking spray.

Bake for 45 to 50 minutes, or until juices run clear when chicken is pierced with a knife.

',
  description: '1/2 sleeve (about 20) whole-grain salted crackers, pulsed in a food processor until fine (about 1/2 cup)
2 1/2 cups corn cereal flakes, pulsed in a food processor to fine crumbs (about 1/2 cup)
2 tablespoons sesame seeds
3/4 teaspoon cayenne pepper
1/2 teaspoon garlic powder
2 egg whites
1 cup lowfat, plain yogurt
1 tablespoon Dijon mustard
1/2 teaspoon salt
Olive oil cooking spray
4 medium sized skinless chicken breasts and 4 skinless chicken thighs, rinsed and patted dry (about 3 1/2 pounds chicken)

',
  created_at: '2014-04-24 12:44:00.0000018',
  updated_at: '2014-04-24 12:44:00.0000018',
  category_id: 4,
  imagesrc: open('app/assets/images/ovenFriedChicken.jpeg')
  )  
  
Recipe.create(

  name: 'Garlic Chicken and Potatoes',
  user_id: 6,
  instructions: 'Position a rack in the lower third of the oven and preheat to 425 degrees F. Toss the potatoes with 1 tablespoon olive oil, the cumin seeds,
   3/4 teaspoon salt, and pepper to taste. Spread in a large baking dish and roast until the potatoes begin to brown, 25 to 30 minutes.

Meanwhile, heat the remaining 2 tablespoons olive oil in a small skillet over medium heat. Add the garlic and cook, stirring frequently, until lightly golden, about 2 minutes. 
Remove from the heat and stir in the brown sugar, lemon juice and red pepper flakes.

Remove the baking dish from the oven, push the potatoes to the sides and arrange the chicken breasts in the middle. Season the chicken with salt and drizzle with the garlic mixture.
 Return to the oven and bake until the chicken is cooked through and the potatoes are tender, about 20 minutes. Remove from the oven; transfer the chicken to a cutting board and slice.
  Add the cilantro to the baking dish and toss with the potatoes. Serve the chicken with the potatoes and lemon wedges. Drizzle with the pan juices.


',
  description: '2 pounds small red-skinned potatoes, quartered
3 tablespoons extra-virgin olive oil
1/2 teaspoon cumin seeds (optional)
Kosher salt and freshly ground pepper
4 cloves garlic, finely chopped
2 tablespoons packed light brown sugar
1 lemon (1/2 juiced, 1/2 cut into wedges)
Pinch of red pepper flakes
4 skinless, boneless chicken breasts (1 1/2 to 1 3/4 pounds)
2 tablespoons chopped fresh cilantro or parsley



',
  created_at: '2014-04-24 12:44:00.0000019',
  updated_at: '2014-04-24 12:44:00.0000019',
  category_id: 4,
  imagesrc: open('app/assets/images/chickenAndPotatoes.jpeg')
  )  
  
Recipe.create(
 
  name: 'Fruit Salsa',
  user_id: 6,
  instructions: 'Combine the kiwi, mango, papaya, mint and orange juice in a large bowl. Refrigerate for up to 1 hour before serving.


',
  description: '2 kiwis, peeled and diced
1 mango, peeled and diced
1/2 papaya, peeled and diced
2 tablespoons chopped fresh mint
1/2 cup orange juice


',
  created_at: '2014-04-24 12:44:00.0000020',
  updated_at: '2014-04-24 12:44:00.0000020',
  category_id: 4,
  imagesrc: open('app/assets/images/fruitSalsa.jpeg')
  )  
  
  Recipe.create(
 
  name: 'Carrot Cupcakes',
  user_id: 6,
  instructions: 'Preheat the oven to 350 F. Line 12 standard muffin cups with paper cupcake liners.

Sift together the flours, baking soda, salt, cinnamon and nutmeg. In a large stand mixer with the paddle attachment, combine the brown sugar, 
oil and eggs until well combined. Add the carrots, applesauce and vanilla. Add the dry ingredients and mix until combined. Stir in 1/4 cup of the chopped walnuts.

Divide the batter among the muffin cups. Bake until a toothpick comes out clean, about 20 minutes. Transfer to a wire rack to cool completely.

With an electric mixer, beat together the cream cheese, confectioners sugar and lemon zest until smooth and creamy. Frost the cooled cupcakes 
and sprinkle with the remaining 2 tablespoons chopped walnuts. Store any leftovers in an airtight container in the refrigerator.)


',
  description: '3/4 cup whole-wheat pastry flour
1/2 cup all-purpose flour
1 teaspoon baking soda
1/4 teaspoon fine salt
1/2 teaspoon ground cinnamon
Pinch ground nutmeg
3/4 cup firmly packed light brown sugar
1/4 cup canola oil
2 large eggs
1 1/2 cups finely shredded carrots (about 2 medium carrots, peeled)
1/2 cup natural applesauce
1/2 teaspoon vanilla extract
1/4 cup plus 2 tablespoons finely chopped walnuts
4 ounces low-fat cream cheese, such as
Neufchatel, at room temperature
3/4 cup confectioners sugar, sifted
1/2 teaspoon finely grated lemon zest




',
  created_at: '2014-04-24 12:44:00.0000021',
  updated_at: '2014-04-24 12:44:00.0000021',
  category_id: 5,
  imagesrc: open('app/assets/images/carrotCupcakes.jpeg')
  )  


Recipe.create(

  name: 'Honey Oatmeal-Raisin Cookies',
  user_id: 6,
  instructions: 'Preheat the oven to 350 degrees F. Mist 2 baking sheets with cooking spray. Beat the butter, canola oil, honey, egg, almond butter and vanilla extract in a large bowl with a mixer until combined.

In another bowl, whisk the dry milk, flour, baking soda, cinnamon and salt. Add the flour mixture to the butter mixture and stir to combine. Stir in the oats and raisins.

Scoop tablespoonfuls of batter about 2 inches apart onto the prepared baking sheets. Bake until golden, about 12 minutes. Let the cookies cool 2 minutes on the baking sheets,
 then transfer to a rack to cool completely. Store in a loosely covered container for up to 3 days.


',
  description: 'Cooking spray
2 tablespoons unsalted butter, melted
1/4 cup canola oil
1/2 cup honey
1 large egg
1/4 cup smooth unsalted almond butter
1/2 teaspoon vanilla extract
1/4 cup nonfat dry milk
1 cup whole-wheat pastry flour (or 1/2 cup each all-purpose and whole-wheat flour)
1/2 teaspoon baking soda
1/2 teaspoon ground cinnamon
1/4 teaspoon salt
1 3/4 cups rolled oats
1/2 cup raisins



',
  created_at: '2014-04-24 12:44:00.0000022',
  updated_at: '2014-04-24 12:44:00.0000022',
  category_id: 5,
  imagesrc: open('app/assets/images/oatmealRaisinCookies.jpeg')
  )  

Recipe.create(

  name: 'Double-Chocalate Brownies',
  user_id: 6,
  instructions: 'Preheat the oven to 350 degrees. Coat a 9-by-13-inch baking dish with cooking spray.

Melt the chocolate and butter in a heatproof bowl set over a saucepan of barely simmering water, stirring occasionally; do not let the bottom of the bowl touch the water.

Whisk the flour, cocoa, salt and baking soda in a medium bowl. In a large bowl, whisk the eggs and brown sugar until smooth, then add the yogurt, oil and vanilla and whisk to combine. Whisk in the melted chocolate mixture until blended. Add the dry ingredients and mix until just moistened.

Spread the batter in the prepared pan and sprinkle with walnuts, if desired. Bake for 20 to 25 minutes, or until a toothpick inserted in the center comes out with a few moist crumbs. Cool completely in the pan on a rack before slicing.


',
  description: 'Cooking spray
6 ounces bittersweet chocolate, coarsely chopped
2 tablespoons unsalted butter
1 cup whole-grain pastry flour (or 1/2 cup each whole-wheat and all-purpose flours)
1/4 cup unsweetened cocoa powder
1/4 teaspoon salt
1/4 teaspoon baking soda
4 large eggs
1 cup packed light brown sugar
1/2 cup plain low-fat yogurt
1/4 cup canola oil
2 teaspoons vanilla extract
3/4 cup chopped walnuts (optional)


',
  created_at: '2014-04-24 12:44:00.0000023',
  updated_at: '2014-04-24 12:44:00.0000023',
  category_id: 5,
  imagesrc: open('app/assets/images/chocolateBrownies.jpeg')
  )  


Recipe.create(

  name: 'Low-Fat Cheesecake',
  user_id: 6,
  instructions: 'Preheat the oven to 350 degrees F. Pulse the graham crackers in a food processor until crumbled. Add 1 to 2 tablespoons water and the butter; pulse
   until moistened. Wrap the outside of a 9-inch springform pan with foil to prevent leaks. Coat the inside of the pan with cooking spray and press the crumbs onto the bottom. Bake until browned, 
   about 8 minutes. Let cool, about 10 minutes.

Meanwhile, beat both cream cheeses and the sugar with a mixer on medium-high speed until smooth, 5 minutes, then beat in the sour cream on low. Lightly whisk the 3 egg whites in a bowl, 
then add to the cheese mixture along with the 2 whole eggs, flour, vanilla and lemon zest. Beat on medium speed until fluffy, 3 minutes. Pour over the crust.

Place the cheesecake in a roasting pan and add enough warm water to come one-quarter of the way up the sides of the springform. Bake until the cake is set but the center still jiggles, 
about 1 hour 10 minutes. Turn off the oven; keep the cheesecake inside with the door closed for 20 minutes.

Remove the cake from the water bath and transfer to a rack. Run a knife around the edge, then cool completely. Chill until firm, at least 8 hours. Top as desired.


',
  description: '9 whole low-fat cinnamon graham crackers, broken in half
2 tablespoons unsalted butter, melted
Cooking spray
2 8 -ounce packages Neufchatel cream cheese, softened
2 8 -ounce packages fat-free cream cheese, softened
1 1/2 cups sugar
1 cup reduced-fat sour cream
2 large eggs plus 3 egg whites
2 tablespoons all-purpose flour
1 teaspoon vanilla extract
1 teaspoon finely grated lemon zest
Assorted toppings



',
  created_at: '2014-04-24 12:44:00.0000024',
  updated_at: '2014-04-24 12:44:00.0000024',
  category_id: 5,
  imagesrc: open('app/assets/images/cheesecake.jpeg')
  )  

Recipe.create(

  name: 'Cheesecake Brownies',
  user_id: 6,
  instructions: 'Position the rack in the lower third of the oven and preheat the oven to 350 degrees F.

Line an 8 by 8-inch baking pan with foil so it hangs over the edges by about 1-inch. Spray with cooking spray.

Cheesecake topping: In a medium bowl and using an electric mixer at medium speed, beat the cream cheese until smooth and creamy, about 1 minute.
Beat in the sugar and the vanilla until very smooth, 1 to 2 minutes. Beat in the egg until well blended. Set aside.

Brownie layer: Put the chocolate, butter, and oil in a small microwave-safe bowl and heat at 75 percent power for 30 seconds. Stir and microwave
 again until melted and smooth, about 30 seconds longer. (Alternatively, put the chocolate, butter, and oil in a small heatproof bowl. Bring a small saucepan filled 
 with 1 inch or so of water to a very slow simmer; set the bowl over, not touching, the water, and stir occasionally, until melted and smooth.)

Combine the flour, cocoa powder, baking powder, salt, and cayenne in a medium bowl.

Combine the brown sugar and granulated sugar in a large bowl. Whisk in the buttermilk, egg whites, and vanilla. Add the chocolate mixture and whisk vigorously 
until fully incorporated and the batter is thick and glossy. Gradually add the flour mixture and stir just until it disappears.

Reserve 1/2 cup brownie batter and set aside. Scrape the remaining brownie batter into the prepared pan. Pour the cheesecake mixture evenly over top. Drop the 
reserved brownie batter in large dollops over the topping. Draw the handle of a wooden spoon through the two batters to create a swirled effect.

Bake until the top is just set, 40 to 45 minutes. Let cool completely in the pan on a wire rack. Lift brownies out of the pan by the foil and peel off the foil. 
Spray a knife with cooking spray and cut into 2-inch squares.



',
  description: 'Cooking spray
Cheesecake topping:
8 ounces reduced-fat cream cheese (Neufchatel)
1/3 cup sugar
1/2 teaspoon vanilla extract
1 large egg
Brownie Layer:
2 ounces semisweet chocolate, coarsely chopped
3 tablespoons unsalted butter
2 tablespoons canola oil
1 cup all-purpose flour
1/2 cup unsweetened Dutch-process cocoa powder
1 teaspoon baking powder
1/2 teaspoon fine sea salt
Pinch cayenne pepper
3/4 cup packed dark brown sugar
1/4 cup granulated sugar
1/2 cup lowfat buttermilk
2 large egg whites
2 teaspoons vanilla extract



',
  created_at: '2014-04-24 12:44:00.0000025',
  updated_at: '2014-04-24 12:44:00.0000025',
  category_id: 5,
  imagesrc: open('app/assets/images/cheesecakeBrownies.jpeg')
  )  

Recipe.create(

  name: 'Angel Food Cake',
  user_id: 6,
  instructions: 'Preheat oven to 350 degrees F.

In a food processor spin sugar about 2 minutes until it is superfine. Sift half of the sugar with the salt the cake flour, setting the remaining sugar aside.

In a large bowl, use a balloon whisk to thoroughly combine egg whites, water, orange extract, and cream of tartar. After 2 minutes, switch to a hand mixer. Slowly sift the reserved sugar, beating continuously at medium speed. Once you have achieved medium peaks, sift enough of the flour mixture in to dust the top of the foam. Using a spatula fold in gently. Continue until all of the flour mixture is incorporated.

Carefully spoon mixture into an ungreased tube pan. Bake for 35 minutes before checking for doneness with a wooden skewer. (When inserted halfway between the inner and outer wall, the skewer should come out dry).

Cool upside down on cooling rack for at least an hour before removing from pan.



',
  description: '1 3/4 cups sugar
1/4 teaspoon salt
1 cup cake flour, sifted
12 egg whites (the closer to room temperature the better)
1/3 cup warm water
1 teaspoon orange extract, or extract of your choice
1 1/2 teaspoons cream of tartar




',
  created_at: '2014-04-24 12:44:00.0000026',
  updated_at: '2014-04-24 12:44:00.0000026',
  category_id: 5,
  imagesrc: open('app/assets/images/angelFoodCake.jpeg')
  )  

Recipe.create(

  name: 'Marbled Banana Bread',
  user_id: 6,
  instructions: 'Preheat the oven to 350 degrees F. Lightly mist a 9-by-5-inch metal loaf pan with nonstick cooking spray and dust well with all-purpose flour
   to cover the pan completely, tapping out the excess.

Put the chocolate in a medium microwave-safe bowl and microwave on high in 30-second intervals, stirring, until melted and smooth, 1 minute to 1 minute 30 seconds. 
Set aside to cool slightly while preparing the batter.

Combine the bananas and sugar in a large bowl and mash with a potato masher or fork until mostly smooth with just a few small pieces of banana left. Add the oil and eggs 
and stir until combined. Using a wooden spoon or rubber spatula, mix in both flours, the baking powder, baking soda and salt. Stir in the buttermilk and vanilla.

Stir 1 cup batter into the melted chocolate. Fill the loaf pan with half the banana batter and then half the chocolate batter. Repeat the layers and gently swirl together 
using a spoon or knife. Bake until golden brown on top and a toothpick inserted in the center comes out clean, about 45 minutes.

Cool in the pan 15 minutes, and then turn out onto a wire rack to cool completely. Serve warm or at room temperature.


',
  description: 'Nonstick cooking spray
3/4 cup all-purpose flour, plus extra for dusting the pan
2 ounces bittersweet chocolate, chopped
2 medium very ripe bananas
2/3 cup sugar
1/4 cup canola oil
2 large eggs
3/4 cup white whole wheat flour
1 1/2 teaspoons baking powder
1/2 teaspoon baking soda
1/2 teaspoon kosher salt
1/2 cup buttermilk
1 teaspoon vanilla extract


',
  created_at: '2014-04-24 12:44:00.0000027',
  updated_at: '2014-04-24 12:44:00.0000027',
  category_id: 5,
  imagesrc: open('app/assets/images/bananaBread.jpeg')
  )  

Recipe.create(

  name: 'Chewy Gluten Free Cookies',
  user_id: 6,
  instructions: 'Melt the butter in a heavy-bottom medium saucepan over low heat. Once melted, pour into the bowl of a stand mixer.

In a medium bowl, sift together the rice flour, cornstarch, tapioca flour, xantham gum, salt and baking soda. Set aside.

Add both of the sugars to the bowl with the butter and using the paddle attachment, cream together on medium speed for 1 minute. Add the whole egg, 
egg yolk, milk and vanilla extract and mix until well combined. Slowly incorporate the flour mixture until thoroughly combined. Add the chocolate chips and stir to combine.

Chill the dough in the refrigerator until firm, approximately 1 hour.

Preheat the oven to 375 degrees F.

Shape the dough into 2-ounce balls and place on parchment-lined baking sheets, 6 cookies per sheet. Bake for 14 minutes, rotating the pans after 7
 minutes for even baking. Remove from the oven and cool the cookies on the pans for 2 minutes. Move the cookies to a wire rack and cool completely. Store cooked cookies in an airtight container.




',
  description: '8 ounces unsalted butter
11 ounces brown rice flour, approximately 2 cups
1 1/4 ounces cornstarch, approximately 1/4 cup
1/2 -ounce tapioca flour, approximately 2 tablespoons
1 teaspoon xanthan gum
1 teaspoon kosher salt
1 teaspoon baking soda
2 ounces sugar, approximately 1/4 cup
10 ounces light brown sugar, approximately 1 1/4 cups
1 whole egg
1 egg yolk
2 tablespoons whole milk
1 1/2 teaspoons vanilla extract
12 ounces semisweet chocolate chips


',
  created_at: '2014-04-24 12:44:00.0000028',
  updated_at: '2014-04-24 12:44:00.0000028',
  category_id: 5,
  imagesrc: open('app/assets/images/glutenFreeCookies.jpeg')
  )  

Recipe.create(

  name: 'Chewy Gluten Free Cookies',
  user_id: 6,
  instructions: 'Mist a 5-to-6-quart slow cooker with nonstick cooking spray. Mix the coconut water, coconut milk, 1 1/2 cups water, sugar, vanilla and salt in the bowl of the slow cooker until the sugar is dissolved. Stir in the rice and cook on high 4 hours or low for 5 to 6 hours.

Uncover, stir well and let stand 15 minutes. Transfer to a large bowl and stir in the butter. Continue to cool, stirring, until warm. Stir in the lime zest. Serve warm or chill until cold. Top as desired.



',
  description: 'Nonstick cooking spray
3 cups coconut water
One 13.5-ounce can lite coconut milk
1/2 cup sugar
1 tablespoon vanilla extract
1/2 teaspoon kosher salt
1 1/4 cups short grain brown rice
2 tablespoons unsalted butter, cut into small pieces
1 teaspoon finely grated lime zest
Suggested toppings: diced fresh or dried mango and pineapple, fresh or frozen and thawed raspberries, toasted shaved coconut chips, chopped crystallized ginge


',
  created_at: '2014-04-24 12:44:00.0000029',
  updated_at: '2014-04-24 12:44:00.0000029',
  category_id: 5,
  imagesrc: open('app/assets/images/brownRicePudding.jpeg')
  )  

Recipe.create(

  name: 'Rise and Shine Juice',
  user_id: 6,
  instructions: 'Pass the spinach, apples, carrots, celery, lemon juice and ginger through a juice maker, according to the manufacturers directions. Pour the juice into 2 ice-filled glasses and serve


',
  description: '5 to 6 ounces baby spinach leaves, rinsed
2 apples, halved and cored
2 medium carrots, scrubbed
2 celery sticks
1/2 large lemon
One 2-inch piece ginger, peeled
Ice

',
  created_at: '2014-04-24 12:44:00.0000030',
  updated_at: '2014-04-24 12:44:00.0000030',
  category_id: 1,
  imagesrc: open('app/assets/images/shineJuice.jpeg')
  )  
  
  Recipe.create(

  name: 'Kale Juice',
  user_id: 6,
  instructions: 'Pass all of the ingredients through a juice maker according to the manufacturers directions. Pour into glasses and serve.


',
  description: '1 1/2 pounds kale
2 medium carrots, scrubbed
2 medium apples (such as Fuji or Honeycrisp), halved and cored
1 small lemon, peeled


',
  created_at: '2014-04-24 12:44:00.0000031',
  updated_at: '2014-04-24 12:44:00.0000031',
  category_id: 1,
  imagesrc: open('app/assets/images/kaleJuice.jpeg')
  )  

Recipe.create(

  name: 'Mean Green Juice',
  user_id: 6,
  instructions: 'Peel the cucumbers, saving the peels. Grate cucumber flesh on a box grater. In a medium saucepan, bring sugar and water to a boil. 
  When sugar dissolves, add the grated cucumber and simmer until cucumber is tender, about 10 minutes. Remove from heat and let cool slightly.

In a blender, puree reserved cucumber peel and cucumber syrup until smooth. Line a strainer with cheese cloth over a bowl. Strain cucumber mixture. 
Gather cheesecloth in 1 hand to squeeze out all of the juice. Chill until cool, about 1 hour. Serve in glasses over ice.



',
  description: '2 English cucumbers
3/4 cup sugar
2 cups water
Special equipment: cheesecloth


',
  created_at: '2014-04-24 12:44:00.0000032',
  updated_at: '2014-04-24 12:44:00.0000032',
  category_id: 1,
  imagesrc: open('app/assets/images/meanGreenJuice.jpeg')
  )  
  


Recipe.create(
 
  name: 'Super Green Juice',
  user_id: 6,
  instructions: 'Juice, in this order, the lemons, apples, lettuce, cucumber and greens, following your juicers specific settings 
  for each. Stir in the chia seeds if using and let soak for 5 minutes. Serve the juice immediately over ice, if desired.



',
  description: '1 to 2 large, juicy lemons, peel and pith removed
1 medium Granny Smith apple, peeled and cored
2 romaine lettuce leaves
1/2 large cucumber, washed
1 cup loosely-packed hearty greens, such as spinach or kale
1 tablespoon chia seeds, optional

',
  created_at: '2014-04-24 12:44:00.0000033',
  updated_at: '2014-04-24 12:44:00.0000033',
  category_id: 1,
  imagesrc: open('app/assets/images/superGreenJuice.jpeg')
  )  
  
Recipe.create(
  
  name: 'Watermelon Juice',
  user_id: 6,
  instructions: 'In a blender puree the about half the watermelon with 8 ice cubes. Slowly add half the lemon soda to the blender. Pour into glasses. Repeat with the remaining ingredients.



',
  description: '1/2 seedless watermelon (about 6 to 7 pounds), cut into cubes
16 ice cubes
1 liter lemon-flavored soda


',
  created_at: '2014-04-24 12:44:00.0000034',
  updated_at: '2014-04-24 12:44:00.0000034',
  category_id: 1,
  imagesrc: open('app/assets/images/watermelonJuice.jpeg')
  )  
  
  Recipe.create(

  name: 'Agnolotti With Artichoke Sauce',
  user_id: 6,
  instructions: 'Combine the artichokes, half-and-half, garlic, red pepper flakes and 1/4 teaspoon salt in a large skillet and bring to a 
  simmer over medium heat. Cover and cook until the artichokes are tender, about 5 minutes. Add the peas and continue to cook, covered, until tender, about 5 more minutes. 
  Remove from the heat and stir in the lemon zest and juice. Discard the garlic clove.

Meanwhile, bring a large pot of salted water to a boil. Add the agnolotti and cook as the label directs. Reserve 1/2 cup cooking water, then drain the pasta and transfer to the skillet with the sauce.

Add the parmesan to the skillet and gently stir until the pasta is coated. Thin the sauce with some of the reserved cooking water. Stir in the basil.




',
  description: '1 9 -ounce package frozen artichoke hearts, thawed and coarsely chopped
1 cup half-and-half
1 clove garlic, smashed
1/8 teaspoon red pepper flakes
Kosher salt
1 cup frozen peas (do not thaw)
1 teaspoon finely grated lemon zest
2 teaspoons fresh lemon juice
1 pound refrigerated cheese agnolotti (moon-shaped stuffed pasta) or ravioli
1/4 cup finely grated parmesan cheese
1/4 cup torn fresh basil leaves


',
  created_at: '2014-04-24 12:44:00.0000035',
  updated_at: '2014-04-24 12:44:00.0000035',
  category_id: 2,
  imagesrc: open('app/assets/images/agnolotti.jpeg')
  )  

Recipe.create(

  name: 'Buckwheat Noodle Salad',
  user_id: 6,
  instructions: 'Whisk together the vinegar, sugar, ginger, honey, tamari, sesame oil, and chili sauce in a large bowl until combined. Slowly whisk in the canola oil until the dressing is emulsified.

Add the noodles, carrot, pepper, cucumber, green onions and cilantro. Gently mix to combine and serve.


',
  description: '1/4 cup plus 2 tablespoons rice vinegar
1 teaspoon sugar
2 tablespoons peeled and finely grated fresh ginger
1 tablespoon honey
2 tablespoons tamari
2 teaspoons toasted sesame oil
2 teaspoons chili sauce (recommended: Sriracha)
1/4 cup canola oil
12 ounces buckwheat noodles, cooked according to package directions, rinsed under cold water and drained
1 carrot, peeled and grated on box grater
1 red bell pepper, seeded and julienned
1/4 English cucumber, peeled and grated on a box grater
3 green onions, thinly sliced
1/4 cup chopped fresh cilantro leaves


',
  created_at: '2014-04-24 12:44:00.0000036',
  updated_at: '2014-04-24 12:44:00.0000036',
  category_id: 2,
  imagesrc: open('app/assets/images/noodleSalad.jpeg')
  )  

Recipe.create(

  name: 'Capellini With Spicy Zucchini-Tomato Sauce',
  user_id: 6,
  instructions: 'Heat the olive oil in a large skillet over medium heat. Add the garlic and red pepper flakes and cook until the garlic is just golden, about 1 minute. 
  Crush the tomatoes into the skillet with your hands and add the juice. Add 1/2 teaspoon salt and simmer, stirring occasionally, until the sauce is slightly thickened, about 15 minutes.
   Add the zucchini and cook until crisp-tender, about 5 minutes. Season with salt.

Meanwhile, bring a large pot of salted water to a boil. Add the capellini and cook as the label directs. Drain and add to the sauce along with the basil; toss to coat. Top with parmesan.


',
  description: '3 tablespoons extra-virgin olive oil
1 clove garlic, minced
1/4 teaspoon red pepper flakes
1 28 -ounce can whole San Marzano tomatoes
Kosher salt
1 medium zucchini, cut into small chunks
1/2 pound capellini
1/4 cup chopped fresh basil
Grated parmesan cheese, for topping



',
  created_at: '2014-04-24 12:44:00.0000037',
  updated_at: '2014-04-24 12:44:00.0000037',
  category_id: 2,
  imagesrc: open('app/assets/images/capellini.jpeg')
  )  

Recipe.create(

  name: 'Charred Tomato Gazpacho',
  user_id: 6,
  instructions: 'Preheat a grill or grill pan to medium high. Heat the cumin seeds, coriander seeds and 1/2 cup olive oil in a small
   skillet over medium-low heat until the seeds are toasted, about 3 minutes. Transfer to a liquid measuring cup. Transfer 3 tablespoons of the spiced 
   oil and about half of the seeds to a small bowl; reserve for topping.

Put the bread cubes in a bowl, cover with water and let soak 2 minutes. Drain, squeeze dry and set aside.

Mince the garlic, then sprinkle with a pinch of salt and mash it into a paste with the flat side of a knife.

Toss the tomatoes in a bowl with the remaining 1 tablespoon olive oil and grill until charred, about 3 minutes per side. Transfer half each of the charred 
tomatoes, bread, garlic paste, sugar and vinegar to a blender; add 1/4 teaspoon salt and puree until smooth. With the motor running, add about half of the spiced oil from
 the measuring cup. Pour the mixture through a fine-mesh sieve into a bowl. Blend the remaining tomatoes, bread, garlic paste, sugar and vinegar with the other half of the spiced oil and 1/4 
 teaspoon salt, then strain into the bowl. Chill the soup at least 2 hours.

Dice the cucumber and bell pepper. Season the soup with salt and pepper. Ladle into bowls; drizzle with the reserved spiced oil and top with the diced vegetables.



',
  description: '1/2 teaspoon cumin seeds
1/2 teaspoon coriander seeds, lightly crushed
1/2 cup plus 1 tablespoon extra-virgin olive oil
1/2 cup crustless white bread cubes
1 large clove garlic
Kosher salt
3 1/4 pounds tomatoes, halved
1/2 teaspoon sugar
2 tablespoons sherry vinegar
1 Kirby cucumber
1 green bell pepper
Freshly ground pepper


',
  created_at: '2014-04-24 12:44:00.0000038',
  updated_at: '2014-04-24 12:44:00.0000038',
  category_id: 2,
  imagesrc: open('app/assets/images/gazpacho.jpeg')
  )  
  
  Recipe.create(

  name: 'Chile Cheese Casserole',
  user_id: 6,
  instructions: 'Preheat the oven to 375 degrees F. Lightly coat a rectangular 2-quart baking dish with nonstick cooking spray. Coarsely crush the chips by hand and spread half of them 
  into the bottom of the baking dish.

Whisk the egg whites, eggs, milk, ancho powder, and pepper in a large bowl until well combined. Stir in the chopped chiles, chopped cilantro, and 1/4 cup each of the Cheddar and pepper
 jack cheeses; pour into the pan. Sprinkle the remaining chips over the egg mixture. Bake until the casserole is set around the edges but a little loose in the center, 20 to 25 minutes.

Sprinkle with the remaining 1/4 cup of each cheese and continue to bake until the cheeses are melted and the casserole is set in the center, about 10 minutes. Let stand 10 minutes. 
Serve with the salsa and, sour cream, if using. Garnish with whole cilantro leaves.


',
  description: 'Cooking spray
4 cups baked tortilla chips, 2 1/2 ounces
6 egg whites
4 large eggs
1/4 cup skim milk
3/4 teaspoon ancho chili powder
1/8 teaspoon freshly ground black pepper
1 (4-ounce) can mild chopped green chiles
1 tablespoon chopped fresh cilantro leaves, plus whole leaves for garnish
1/2 cup shredded sharp Cheddar cheese, about 2 ounces
1/2 cup shredded pepper jack cheese, about 2 ounces
1/2 cup prepared green salsa verde
Reduced-fat sour cream, optional




',
  created_at: '2014-04-24 12:44:00.0000039',
  updated_at: '2014-04-24 12:44:00.0000039',
  category_id: 2,
  imagesrc: open('app/assets/images/casserole.jpeg')
  )  
  
  Recipe.create(

  name: 'Crustless Caprese Quiche',
  user_id: 6,
  instructions: 'Preheat the oven to 350 degrees F. Coat a 9-inch deep-sided pie pan with nonstick cooking spray. Evenly sprinkle 2 tablespoons of the breadcrumbs into the pan.

Heat the oil in a large nonstick skillet over medium-low heat. Add the onion and 1/8 teaspoon salt and cover the skillet. Cook, stirring occasionally, until the onions soften without color, about 15 minutes. Stir in the chopped tomatoes and cook for 1 minute. Transfer to a medium bowl and set aside.

Meanwhile, add the eggs, egg whites, ricotta, milk, the remaining 1/3 cup breadcrumbs and 3/4 teaspoon salt to a blender until well combined and smooth. Stir in the sliced basil and the onion-tomato mixture.

Pour the egg mixture into the prepared pie pan. Sprinkle with the mozzarella. Arrange the sliced tomatoes in an overlapping style around the top.

Bake until the eggs are set and the cheese is lightly browned, about 35 minutes. Let stand for 10 minutes to complete the cooking process. Garnish with the fresh basil sprig. Slice into 4 wedges with a sharp knife and serve.


',
  description: 'Nonstick cooking spray
1/3 cup plus 2 tablespoons whole wheat or other whole grain breadcrumbs
2 teaspoons extra-virgin olive oil
1 medium onion, diced
Kosher salt
4 plum tomatoes (2 chopped and 2 thinly sliced crosswise)
2 large eggs plus 2 large egg whites
1/2 cup part-skim ricotta cheese
1/2 cup 2-percent milk
1/4 cup packed fresh basil leaves, thinly sliced, plus 1 sprig for garnish
4 ounces shredded part-skim mozzarella



',
  created_at: '2014-04-24 12:44:00.0000040',
  updated_at: '2014-04-24 12:44:00.0000040',
  category_id: 2,
  imagesrc: open('app/assets/images/quiche.jpeg')
  )  
  
  
 Recipe.create(

  name: 'Grilled Ratatouille Salad',
  user_id: 6,
  instructions: 'Slice the eggplant into 1/2-inch-thick rounds. Soak in a bowl of lightly salted water, 15 to 20 minutes; drain and squeeze out the excess moisture.

Meanwhile, slice the tomatoes and zucchini into 1/2-inch-thick rounds. Stem and seed the bell pepper; slice the pepper and onion into 1/2-inch-thick rings.

Heat a grill or grill pan to medium high. Brush the vegetables with the olive oil on both sides and season with 1/2 teaspoon salt and pepper to taste. Grill the vegetables (in batches if necessary), turning,
 until soft and marked, about 6 minutes for the tomatoes, 7 to 8 minutes for the bell pepper, onion and zucchini, and about 10 minutes for the eggplant. Let cool.

Drizzle the vegetables with the vinegar. Divide the zucchini and eggplant among plates and arrange in a circle, overlapping slightly. Top with the bell pepper, tomato and onion. Sprinkle with the basil.


',
  description: '1 small eggplant
Kosher salt
3 medium tomatoes
1 medium zucchini
1 medium red bell pepper
1 small red onion
3 tablespoons extra-virgin olive oil
Freshly ground pepper
1 tablespoon plus 2 teaspoons red wine vinegar
1/2 cup fresh basil leaves, thinly sliced


',
  created_at: '2014-04-24 12:44:00.0000041',
  updated_at: '2014-04-24 12:44:00.0000041',
  category_id: 2,
  imagesrc: open('app/assets/images/ratatouilleSalad.jpeg')
  )  

 Recipe.create(
 
  name: 'Orecchiette with Broccoli Rabe Pesto',
  user_id: 6,
  instructions: 'Bring a large pot of well-salted water to a boil. Set up a bowl of well-salted ice water. Cook the broccoli rabe in the boiling water for 1 to 2 minutes and 
  then immediately plunge in the salted ice water. This will prevent the broccoli rabe from being overcooked and will set the lovely green color.

Drain the broccoli rabe and squeeze out any excess water; coarsely chop. Place the broccoli rabe in the bowl of a food processor and puree until it is a coarse paste. Add the
 pistachios and parmigiano and puree until smooth. Taste and adjust the seasoning; you probably will need more salt. Add the ricotta and pulse until combined. Taste for seasoning once
  again-it should be full-flavored, slightly bitter and creamy at the same time. Set aside.

Bring a large pot of well-salted water to a boil. (If you are making the pasta right after the pesto, just use the broccoli rabe blanching water.) Cook the pasta 1 minute less
 than the cooking time on the package.

While the pasta is cooking, place the pesto in a large skillet and add about 1 to 1 1/2 cups of the pasta cooking water; place over medium-high heat. When the pasta is ready, 
drain and add to the skillet with the pesto. Stir vigorously to combine and cook until the sauce is creamy and heated through, 1 to 2 minutes; add salt to taste. Remove from the heat, 
add 1 to 2 tablespoons olive oil, if desired, and stir vigorously. Garnish with more parmigiano. Voila!



',
  description: '1 bunch broccoli rabe, tough lower stems removed
1/2 cup pistachios, toasted
3/4 cup grated parmigiano-reggiano cheese, plus more for garnish
Kosher salt
1/4 cup part-skim ricotta cheese
1/2 pound orecchiette pasta
High-quality extra-virgin olive oil, for finishing (optional)


',
  created_at: '2014-04-24 12:44:00.0000042',
  updated_at: '2014-04-24 12:44:00.0000042',
  category_id: 2,
  imagesrc: open('app/assets/images/broccoliRabePesto.jpeg')
  )  

Recipe.create(

  name: 'Spicy Vegan Sloppy Joes',
  user_id: 6,
  instructions: 'Pulse the mushrooms in batches in a food processor until finely chopped. Set aside.

Heat the oil in a large nonstick skillet over medium-high heat. Add the onions, 1 tablespoon beer and 1/4 teaspoon salt and cook, stirring frequently, until the onions
 are lightly browned, about 5 minutes. Add the walnuts and peppers and cook, stirring occasionally, until the peppers are crisp-tender, about 3 minutes. Add the mushrooms, 
 3/4 teaspoon black pepper and chipotle powder and cook, stirring frequently, until the mushrooms are just cooked through, about 5 minutes.

Add the remaining beer, the ketchup, tomato paste and 1/8 teaspoon salt and cook while stirring until the sauce is the consistency that you like, about 2 minutes.

Spoon the mixture onto each bun. Serve with toppings if desired.



',
  description: '1 pound cremini mushrooms, halved
1 tablespoon extra-virgin olive oil
1 large sweet onion, diced
1 3/4 cups light beer (drink whats left in the bottle)
Kosher salt
1/3 cup finely chopped walnuts
1 small green bell pepper, seeded and diced
Freshly ground black pepper
1/2 teaspoon chipotle chile powder
1/4 cup ketchup
3 tablespoons tomato paste
6 whole grain hamburger buns
Shredded red cabbage or lettuce, pickled jalapeno and scallions, for serving, optional


',
  created_at: '2014-04-24 12:44:00.0000043',
  updated_at: '2014-04-24 12:44:00.0000043',
  category_id: 2,
  imagesrc: open('app/assets/images/sloppyJoe.jpeg')
  )  

