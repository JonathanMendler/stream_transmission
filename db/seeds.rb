# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_1 = User.create!(name: "JohnnyOnTheMend", email: "JohnnyOnTheMend@gmail.com", password_digest: "password", image_url: "https://static-cdn.jtvnw.net/jtv_user_pictures/8440005f-9020-491b-894f-6bd6680fbfa0-profile_image-300x300.png")

user_2 = User.create!(name: "FutureWolfington", email: "Future@test.com", password_digest: "password", image_url: "https://static-cdn.jtvnw.net/jtv_user_pictures/429e9d0f-ab6b-4997-b589-db818e7686f3-profile_banner-480-320x160.jpeg")

user_3 = User.create!(name: "ArcherLewys", email: "Archer@test.com", password_digest: "password", image_url: "https://static-cdn.jtvnw.net/jtv_user_pictures/db65fe6d-719d-4352-b09b-e260ae6cf9e3-profile_image-150x150.png")

user_4 = User.create!(name: "BloodSamus", email: "Samus@test.com", password_digest: "password", image_url: "https://static-cdn.jtvnw.net/jtv_user_pictures/2c9fe809-d89d-4426-8a78-4cafcf0e4613-profile_image-300x300.png")

game_1 = Game.create!(name: "Elden Ring", genre: "Action Role-Playing", player_support: "Single-Player, Online Multi-Player", image_url: "https://www.techspot.com/images2/news/bigimage/2022/03/2022-03-17-image-37.jpg")

game_2 = Game.create!(name: "Dead By Daylight", genre: "Asymmetrical Survival Horror", player_support: "Online Multi-Player", image_url: "https://m.media-amazon.com/images/I/81-wleSomEL._SX1200_._FMwebp_.jpg")

game_3 = Game.create!(name: "Diablo IV", genre: "Action Role-Playing", player_support: "Online Single-Player, Online Multi-Player", image_url: "https://blz-contentstack-images.akamaized.net/v3/assets/blt77f4425de611b362/blt6d7b0fd8453e72b9/646e720a71d9db111a265e8c/d4-open-graph_001.jpg")

game_4 = Game.create!(name: "The Oregon Trail", genre: "Adventure", player_support: "Single-Player", image_url: "https://www.heypoorplayer.com/wp-content/uploads/2022/12/oregontraillogo.jpg")

Stat.create!(user_id: user_1.id, game_id: game_1.id, avg_viewers: 32, time_streamed: 109, followers_gained: 48, review: "I'm on my 2nd playthrough & imagine I'll be doing a 3rd very soon!")

Stat.create!(user_id: user_1.id, game_id: game_2.id, avg_viewers: 23, time_streamed: 206, followers_gained: 119, review: "Good times.")

Stat.create!(user_id: user_2.id, game_id: game_2.id, avg_viewers: 41, time_streamed: 407, followers_gained: 197, review: "I got motion sickness *blargh*")

Stat.create!(user_id: user_3.id, game_id: game_3.id, avg_viewers: 63, time_streamed: 98, followers_gained: 98, review: "One of my favorites & chat seems to agree!")

Stat.create!(user_id: user_4.id, game_id: game_3.id, avg_viewers: 76, time_streamed: 312, followers_gained: 104, review: "I've got over 300 hours. I can't stop playing it, but I also wouldn't recommend. Weird, right?")
