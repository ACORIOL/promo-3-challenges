require_relative '../config/application'
require_relative '../models/post'
require_relative '../models/user'

require 'faker'
require 'nokogiri'
require 'open-uri'

puts 'Seeding database...'

# TODO: Your code goes here
# 1. create fake users
# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users

source = Nokogiri::HTML(open('https://news.ycombinator.com/'))

posts = {}
ratings = []

source.search('table table tr td.title a').each do |element|
  next if element.inner_text == 'More'
end

source.search('table table tr td.subtext').each do |element|
  ratings << (element.search('span').inner_text[0].to_i || 0)
end

10.times { User.create(name: Faker::Name.name, email: Faker:: Internet.email)}

User.find_each do |user| #utiliser .find_each plutot que .all.each!
  index = rand(30)
  post_name = posts.keys[index]
  post_url = posts[post_name]
  post_rating = ratings[index]

  user.posts.create(name: post_name, date: Time.now, rating: post_rating, source_url: post_url)
end