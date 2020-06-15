require 'faker'


user1 = User.new( email: 'godzilla@gmail.com', avatar: 'https://bit.ly/3cvbjKU',   description: Faker::Movies::Lebowski.quote, background: 'https://bit.ly/2BcHNLN',  password: 'pppppp', password_confirmation: 'pppppp')
user2 = User.new( email: 'alexander@gmail.com', avatar: 'https://go.aws/2uR55UX',  description: Faker::Movies::Lebowski.quote, background: 'https://bit.ly/2ULClGV',  password: 'pppppp', password_confirmation: 'pppppp')
user3 = User.new( email: 'natalie@gmail.com', avatar: 'https://bit.ly/3csJgMs',    description: Faker::Movies::Lebowski.quote, background: 'https://bit.ly/2BZshDs',  password: 'pppppp', password_confirmation: 'pppppp')
user4 = User.new( email: 'dimartino@gmail.com', avatar: 'https://bit.ly/32LOrCB',  description: Faker::Movies::Lebowski.quote, background: 'https://bit.ly/2zAB9ic',  password: 'pppppp', password_confirmation: 'pppppp')
user5 = User.new( email: 'mishima@gmail.com', avatar: 'https://bit.ly/32LOCOh',    description: Faker::Movies::Lebowski.quote, background: 'https://go.aws/3d1PIcf',  password: 'pppppp', password_confirmation: 'pppppp')
user6 = User.new( email: 'hakuho@gmail.com', avatar: 'https://bit.ly/32NamJz',     description: Faker::Movies::Lebowski.quote, background: 'https://bit.ly/2Yxfq3e',  password: 'pppppp', password_confirmation: 'pppppp')

user1.save
user2.save
user3.save
user4.save
user5.save
user6.save

user1.posts.new(content:'Whoever fights monsters should see to it that in the process he does not become a monster. If you gaze long enough into an abyss, the abyss will gaze back into you.',
                avatar: 'https://ab.co/2XZxLGQ',counter: 0).save
user1.posts.new(content:"What would an ocean be without a monster lurking in the dark? It would be like sleep without dreams.",
                avatar: 'https://bit.ly/2XZ7ngu',counter: 0).save
user2.posts.new(content:"It's an universal law: intolerance is the first sign of an inadequate education. An ill-educated person behaves with arrogant impatience, whereas truly profound education breeds humility.",
                avatar: 'https://bit.ly/2MYL8Rm',counter: 0).save
user3.posts.new(content:'I look inside myself and ask do I feel like a man or a woman, and the answer is, I feel like shit.',
                avatar: 'https://bit.ly/2N09RVo',counter: 0).save
user3.posts.new(content:"This means that if someone acts like a fascist, has fascist beliefs, repeats fascist talking points, and hangs out with other fascists, the fact that they publicly denounce fascism should be worth absolutely nothing to you.",
                avatar: 'https://cnn.it/2B8lPK9',counter: 0).save
user4.posts.new(content:'Sometimes life is like this tunnel. You can’t always see the light at the end of the tunnel, but if you keep moving, you will come to a better place.',
                avatar: 'https://bit.ly/2zwGjM2',counter: 0).save
user4.posts.new(content:"There's no different angle, no clever solution, no trickety trick that's gonna move that rock. You gotta face it head on.",
                avatar: 'https://i.imgur.com/TWUTgWX.png',counter: 0).save
user4.posts.new(content:"The true mind can weather all lies and illusions without being lost. The true heart can touch the poison of hatred without being harmed. From beginningless time, darkness thrives in the void, but always yields to purifying light.",
                avatar: 'https://bit.ly/2MXeRKr',counter: 0).save
                
users = [user1,user2,user3,user4,user5,user6]

20.times do
    new_user = User.new( email: Faker::Internet.email,
                         avatar: "https://picsum.photos/#{rand(320..360)}/#{rand(320..360)}",
                         background: "https://picsum.photos/#{rand(800)}/#{rand(400)}",
                         description: Faker::TvShows::DrWho.quote, 
                         password: 'pppppp',
                         password_confirmation: 'pppppp')
    new_user.save
    new_user.listenings.new(other_id: 1).save
    User.find_by_id(1).listeners.new(other_id:new_user.id).save
    new_user.listenings.new(other_id: 2).save
    User.find_by_id(2).listeners.new(other_id:new_user.id).save

    new_user.likes.create(post_id: 1,result:1)
    post = Post.find_by_id(1)
    post.counter += 1
    post.save
    new_user.likes.create(post_id: 8,result:1)
    post = Post.find_by_id(8)
    post.counter += 1
    post.save

end 

(7..20).each do |x|

    user = User.find_by_id(x)
    user.listenings.new(other_id: 3).save
    User.find_by_id(3).listeners.new(other_id:user.id).save
    user.listenings.new(other_id: 4).save
    User.find_by_id(4).listeners.new(other_id:user.id).save

    user.likes.create(post_id: 5,result:1)
    post = Post.find_by_id(5)
    post.counter += 1
    post.save
    user.likes.create(post_id: 7,result:1)
    post = Post.find_by_id(7)
    post.counter += 1
    post.save
    user.likes.create(post_id: 2,result:1)
    post = Post.find_by_id(2)
    post.counter += 1
    post.save

end

(21..26).each do |x|

    user = User.find_by_id(x)
    user.listenings.new(other_id: 5).save
    User.find_by_id(5).listeners.new(other_id:user.id).save
    user.listenings.new(other_id: 6).save
    User.find_by_id(6).listeners.new(other_id:user.id).save

    user.likes.create(post_id: 3,result:1)
    post = Post.find_by_id(3)
    post.counter += 1
    post.save
    user.likes.create(post_id: 4,result:1)
    post = Post.find_by_id(4)
    post.counter += 1
    post.save
    user.likes.create(post_id: 6,result:1)
    post = Post.find_by_id(6)
    post.counter += 1
    post.save
end


(1..6).each do |x|
    users.each do |user|
        if x!= user.id
            user.listenings.new(other_id: x).save
            User.find_by_id(x).listeners.new(other_id:user.id).save
        end
    end
end

(7..26).each do |x|
    user = User.find_by_id(x)
    user.posts.create(content: Faker::Quote.matz, counter: 0, avatar:"https://loremflickr.com/#{rand(600)}/#{rand(300)}")
    user.posts.create(content: Faker::Quote.matz, counter: 0, avatar:"https://loremflickr.com/#{rand(800)}/#{rand(600)}")
end

user1.posts.new(content:"Monsters exist, but they are too few in number to be truly dangerous. More dangerous are the common men, the functionaries ready to believe and to act without asking questions.",
    avatar: 'https://bit.ly/2Y4fg4l',counter: 0).save
user2.posts.new(content:'The belly is an ungrateful wretch, it never remembers past favors, it always wants more tomorrow.',
    avatar: 'https://bit.ly/3e3CQUn',counter: 0).save
user2.posts.new(content:"In keeping silent about evil, in burying it so deep within us that no sign of it appears on the surface, we are implanting it, and it will rise up a thousand fold in the future.",
    avatar: 'https://bit.ly/30FT95J',counter: 0).save
user3.posts.new(content:"It must needs be remarked that the skull of the chad has a brow ridge most pronounced whereas the skull of the incel is most inadequate in this regard predisposing him to a life a lamentation and cuckoldry.",
    avatar: 'https://bit.ly/2Y0ZmHT',counter: 0).save
user5.posts.new(content:'True beauty is something that attacks, overpowers, robs, and finally destroys.',
    avatar: 'https://bit.ly/2UFeyZ2',counter: 0).save
user5.posts.new(content:"Young people get the foolish idea that what is new for them must be new for everybody else too. No matter how unconventional they get, they're just repeating what others before them have done.",
    avatar: 'https://bit.ly/37rSs1t',counter: 0).save
user5.posts.new(content:"The past does not only draw us back to the past. There are certain memories of the past that have strong steel springs and, when we who live in the present touch them, they are suddenly stretched taut and then they propel us into the future.",
    avatar: 'https://bit.ly/2Yu2drO',counter: 0).save

user6.posts.new(content:'Sumo is, and I think I am being objective in my assessment, simply the greatest sport in the history of the universe. In Japan, rotund pale flabby guys are considered the epitome of masculinity. Don’t you just love that?',
    avatar: 'https://bit.ly/30GoBRn',counter: 0).save
user6.posts.new(content:"Sumo it’s a long physical and emotional climb to the top, with little sleep, lots of dirt and sweat, constant humiliation, cooking, running errands and scrubbing backs, and the awesome task of accompanying 200-kilogram senior wrestlers to the restroom",
    avatar: 'https://bit.ly/37wOt3q',counter: 0).save
user6.posts.new(content:"Sumo remains the “official” national sport. This is fitting, partly because of its history that dates back as far as the third century. and too for its hoary, quasi-religious ritualism- but mostly because, in Japan, it’s a more exciting sport",
    avatar: 'https://bit.ly/3fpJ8Oa',counter: 0).save