require 'sqlite3'

def create_scheme(db)
  #TODO: create your db scheme
  sql = %q{ CREATE TABLE IF NOT EXISTS blog
    (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name VARCHAR(500),
      rating INT TYPE DEFAULT 0,
      source_url VARCHAR(200),
      date DATE
    )
  }  # %q allows for multiline string in ruby
  db.execute(sql)
end

def create_post(db, post)
  #TODO: add a new post to your db
  p db.execute(" INSERT INTO blog (name, rating, source_url, date)
    VALUES ('#{post[:name]}', #{post[:rating]}, '#{post[:source_url]}', '#{post[:date]}') ")
end

def get_posts(db)
   #TODO: list all posts
   db.execute("SELECT * FROM blog")
end

def get_post(db, id)
  #TODO: get a specific post
  a = db.execute("SELECT * FROM blog WHERE id = #{id}")
  a.first
end

def update_post(db, id, name)
	#TODO: update a post's name in your db
  db.execute("UPDATE blog SET name = #{name} WHERE id = #{id} ")
end

def delete_posts(db)
  #TODO: delete a post in your db
  db.execute("DELETE FROM blog")
end

def delete_post(db, id)
  #TODO: delete a specific post in your db
  db.execute("DELETE FROM blog WHERE id = #{id}")
end
