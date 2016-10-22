Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/models/*.rb'].each {|file| require file }

user1 = User.new(1, 'John')
user2 = User.new(2, 'Mark')

quote1 = Quote.new(1, 'Sample first quote', user1)
quote2 = Quote.new(2, 'Sample last quote', user2)

quote2.update(:title, 'Modified title', user1)

Comment.new(1, quote1, 'Sample comment', user1)

post1 = Post.new(1, 'example of post', user2)
Comment.new(1, post1, 'Sample comment', user2)

post1.destroy(user1)