# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




users = User.create!([{email: 'rogerwhite@awesome.com', password: '12345678'},
                    {email: 'juniperruby@awesome.com', password: '12345678'}])



space1 = Space.create!({description: "A place where you can go and take off your hat.",
                            address: "Dream Forest", cost: "112", user_id: users[0].id})


photo1 = Photo.new({space_id: space1.id})
photo1.image = File.open("public/assets/cabin1_1.jpg")
photo1.save!

photo2 = Photo.new({space_id: space1.id})
photo2.image = File.open("public/assets/cabin1_2.jpg")
photo2.save!

photo3 = Photo.new({space_id: space1.id})
photo3.image = File.open("public/assets/cabin1_3.jpg")
photo3.save!

space2 = Space.create!({description: "A lovely remote retreat away from it all",
                            address: "Columbia Gorge", cost: "96", user_id: users[1].id})

photo4 = Photo.new({space_id: space2.id})
photo4.image = File.open("public/assets/cabin2_1.jpg")
photo4.save!

photo5 = Photo.new({space_id: space2.id})
photo5.image = File.open("public/assets/cabin2_2.jpg")
photo5.save!

photo6 = Photo.new({space_id: space2.id})
photo6.image = File.open("public/assets/cabin2_3.jpg")
photo6.save!

photo7 = Photo.new({space_id: space2.id})
photo7.image = File.open("public/assets/cabin2_4.jpg")
photo7.save!
