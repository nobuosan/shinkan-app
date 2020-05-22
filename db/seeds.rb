Category.find_or_create_by(name:"活動")
Category.find_or_create_by(name:"お店")
Category.find_or_create_by(name:"BBQ")
Category.find_or_create_by(name:"ドライブ")

User.create!(name: "nobuosan",
            email: 'shukatsu.nobuo@gmail.com',
            password: 'tanaka',
            password_confirmation:'tanaka' ,
            admin: true)
