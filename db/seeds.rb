require 'faker'


user1 = User.new( email: 'one@gmail.com', avatar: 'https://bit.ly/3cvbjKU', password: 'pppppp', password_confirmation: 'pppppp')
user2 = User.new( email: 'two@gmail.com', avatar: 'https://go.aws/2uR55UX', password: 'pppppp', password_confirmation: 'pppppp')
user3 = User.new( email: 'three@gmail.com', avatar: 'https://bit.ly/3csJgMs', password: 'pppppp', password_confirmation: 'pppppp')
user4 = User.new( email: 'four@gmail.com', avatar: 'https://bit.ly/32LOrCB', password: 'pppppp', password_confirmation: 'pppppp')
user5 = User.new( email: 'five@gmail.com', avatar: 'https://bit.ly/32LOCOh', password: 'pppppp', password_confirmation: 'pppppp')
user6 = User.new( email: 'six@gmail.com', avatar: 'https://bit.ly/32NamJz', password: 'pppppp', password_confirmation: 'pppppp')

user1.save
user2.save
user3.save
user4.save
user5.save
user6.save

users = [user1,user2,user3,user4,user5,user6]

10.times do
    users.each do |user|

        user.posts.create(content: Faker::Quote.matz, counter: 0)

    end
end
    
