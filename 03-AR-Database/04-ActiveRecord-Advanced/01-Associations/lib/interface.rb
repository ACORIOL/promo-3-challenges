require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'

User.where(name: 'toto', email: 'toto@toto.fr').first_or_create

p User.last

def ask(prompt)
  print "#{prompt} "
  gets.to_s.chomp
end

def create_post(user)
  name = ask('Name:')
  source_url = ask('Source URL:')
  rating = ask('Rating:')
  post_params = { name: name, source_url: source_url, date: Time.now, rating: rating }
  # TODO: use ActiveRecord to add a new post for the user logged in!
  post = user.posts.create(post_params)     #CHECK SI CEST SUFFISANT ?!

  p Post.last
end

def list_posts(user)
  # TODO: use ActiveRecord to get all posts of the current user
  user_posts = user.posts.pluck(:name)
  puts user_posts
end

def delete_posts(user)
  # TODO: use ActiveRecord to delete all posts of current user
  user.posts.delete_all
end

logged_in = false

until logged_in
  puts 'Please login with your <id>'
  user_id = ask('User:').to_i
    # TODO: instantiate a user with his <id>
  logged_in = true if User.exists?(user_id)
  user = User.find(user_id)
end

while true
  puts "Hey #{user.name}, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Exit"

  case ask('>').to_i
  when 1 then create_post(user)
  when 2 then list_posts(user)
  when 3 then delete_posts(user)
  when 4 then break
  end
end
