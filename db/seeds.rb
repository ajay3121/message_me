# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name:"uday",password:"password")
User.create(name:"vijay",password:"password")
User.create(name:"reddy",password:"password")
User.create(name:"sunitha",password:"password")
User.create(name:"rahul",password:"password")
Message.create(body:"this is the second message",user_id:1)
Message.create(body:"Hi how are u",user_id:2)
Message.create(body:"iam fine what about u",user_id:3)
Message.create(body:"iam great",user_id:4)
Message.create(body:"iam good ",user_id:5)
Message.create(body:"this is the last message by last person",user_id:6)
