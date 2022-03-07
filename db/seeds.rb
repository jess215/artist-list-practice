# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Company.destroy_all

big_hit = Company.create(name:'Big Hit', ceo:'Jiwon Park', worth:'5,500,000,000')
jyp = Company.create(name:'JYP', ceo:'Jung Wook', worth:'1,100,000,000')
yg = Company.create(name:'YG', ceo:'Hwang Bo-kyung', worth:'800,000,000')
sm = Company.create(name:'SM', ceo:'Lee Sung Soo', worth:'665,000,000')
stone = Company.create(name:'STONE', ceo:'Jung Hyung-jin', worth:'200,000,000')

puts "seeded DB"
p Company.all