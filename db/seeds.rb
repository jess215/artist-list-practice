# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Company.destroy_all
Group.destroy_all

big_hit = Company.create(name:'Big Hit', ceo:'Jiwon Park', worth:'5,500,000,000')
jyp = Company.create(name:'JYP', ceo:'Jung Wook', worth:'1,100,000,000')
yg = Company.create(name:'YG', ceo:'Hwang Bo-kyung', worth:'800,000,000')
sm = Company.create(name:'SM', ceo:'Lee Sung Soo', worth:'665,000,000')
stone = Company.create(name:'STONE', ceo:'Jung Hyung-jin', worth:'200,000,000')

puts "seeded DB"
p Company.all

big_hit.groups.create(name:'BTS', members:7, debuted:2013)
big_hit.groups.create(name:'TXT', members:5, debuted:2019)
jyp.groups.create(name:'Stray Kids', members:8, debuted:2017)
jyp.groups.create(name:'2PM', members:8, debuted:2008)
jyp.groups.create(name:'GOT7', members:7, debuted:2014)
jyp.groups.create(name:'Twice', members:9, debuted:2015)
jyp.groups.create(name:'Day6', members:6, debuted:2015)
jyp.groups.create(name:'Itzy', members:5, debuted:2019)
yg.groups.create(name:'BIGBANG', members:5, debuted:2006)
yg.groups.create(name:'2NE1', members:4, debuted:2009)
yg.groups.create(name:'Winner', members:5, debuted:2013)
yg.groups.create(name:'iKon', members:7, debuted:2015)
yg.groups.create(name:'BLACKPINK', members:4, debuted:2016)
yg.groups.create(name:'TREASURE', members:12, debuted:2020)
sm.groups.create(name:'TVXQ', members:2, debuted:2003)
sm.groups.create(name:'SUPER JUNIOR', members:14, debuted:2005)
sm.groups.create(name:'Girls Generation', members:9, debuted:2007)
sm.groups.create(name:'SHINee', members:5, debuted:2008)
sm.groups.create(name:'EXO', members:12, debuted:2012)
sm.groups.create(name:'Red Velvet', members:5, debuted:2014)
sm.groups.create(name:'NCT', members:22, debuted:2017)
sm.groups.create(name:'SuperM', members:7, debuted:2019)
sm.groups.create(name:'aespa', members:4, debuted:2020)

puts 'DB Seeded'
p Groups.all