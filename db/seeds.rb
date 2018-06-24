User.create!(
    email: "andre@aob.com.jm",
    password: "Rails#2018",
    password_confirmation: "Rails#2018",
    name: "Andre O. Brown",
    roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
    email: "andre2@aob.com.jm",
    password: "Rails#2018",
    password_confirmation: "Rails#2018",
    name: "Andre O. Brown II"
)

puts "1 Regular user created"

3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

puts "3 topics created"

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum dictum lacinia magna ac cursus. Sed sodales vestibulum justo nec commodo. Proin facilisis facilisis arcu, et interdum risus cursus in. In aliquet est id placerat sodales. Sed aliquam in sem in suscipit. Nullam semper imperdiet elementum. Aenean sed mauris nunc. Nam vulputate, magna non dignissim maximus, nulla ante pretium ex, eu placerat mauris diam sed ex. Sed id ullamcorper elit, imperdiet ultrices orci. Phasellus euismod sem condimentum magna sagittis, in ultrices purus varius. Integer eleifend sem non erat scelerisque sollicitudin. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras magna quam, ultricies non felis quis, congue dignissim sapien.",
        topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilised: 50
    )
end

puts "5 skills created"

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Ruby on Rails",
        body: "Praesent feugiat aliquam varius. Nullam blandit odio sit amet vulputate egestas. Sed erat felis, ultricies in vehicula a, gravida a erat. Proin eu nulla leo. Nullam pulvinar molestie elit ac egestas. Quisque nisl felis, volutpat eget congue eget, scelerisque quis augue. Nullam vitae finibus turpis. Donec enim mi, pulvinar vel nisi vel, ornare ultrices ligula.",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200"
    )

end

puts "9 portolio items created"

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Angular",
        body: "Praesent feugiat aliquam varius. Nullam blandit odio sit amet vulputate egestas. Sed erat felis, ultricies in vehicula a, gravida a erat. Proin eu nulla leo. Nullam pulvinar molestie elit ac egestas. Quisque nisl felis, volutpat eget congue eget, scelerisque quis augue. Nullam vitae finibus turpis. Donec enim mi, pulvinar vel nisi vel, ornare ultrices ligula.",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200"
    )

end

puts "1 portolio item created"

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}"
    )
end

puts "3 technologies created"