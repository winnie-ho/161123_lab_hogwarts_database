require_relative ('../models/student')
require_relative('../models/house')
require('pry-byebug')

house1 = House.new({
  "name"=>"Gryffindor",
  "logo_url"=>"gryffindor_logo.jpg"
  })

house2 = House.new({
  "name"=>"Hufflepuff",
  "logo_url"=>"hufflepuff_logo.png"
  })

house3 = House.new({
  "name"=>"Ravenclaw",
  "logo_url"=>"ravenclaw_logo.jpg"
  })

house4 = House.new({
  "name"=>"Slytherin",
  "logo_url"=>"slytherin_logo.jpg"
  })

house1.save()
house2.save()
house3.save()
house4.save()


student1 = Student.new({
  "first_name"=>"Harry",
  "last_name"=>"Potter",
  "house_id"=>house1.id,
  "age"=>12
  })

student2 = Student.new({
  "first_name"=>"Ron",
  "last_name"=>"Weasley",
  "house_id"=>house1.id,
  "age"=>12
  })

student3 = Student.new({
  "first_name"=>"Hermione",
  "last_name"=>"Granger",
  "house_id"=>house1.id,
  "age"=>12
  })

student4 = Student.new({
  "first_name"=>"Draco",
  "last_name"=>"Malfoy",
  "house_id"=>house4.id,
  "age"=>12
  })


student1.save()
student2.save()
student3.save()
student4.save()


binding.pry
nil