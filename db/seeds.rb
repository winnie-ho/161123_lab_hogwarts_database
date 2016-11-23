require_relative ('../models/student')
require_relative('../models/house')
require('pry-byebug')

house1 = House.new({
  "name"=>"Gryffindor",
  "logo_url"=>"http://vignette3.wikia.nocookie.net/harrypotter/images/9/96/Gryffindor_crest_by_tuliipiie-d491bqc.jpg/revision/latest?cb=20130508231701"
  })

house2 = House.new({
  "name"=>"Hufflepuff",
  "logo_url"=>"http://thefangirlproject.com/wp-content/uploads/2014/08/hufflepuff_crest.png"
  })

house3 = House.new({
  "name"=>"Ravenclaw",
  "logo_url"=>"https://s-media-cache-ak0.pinimg.com/originals/f4/2e/94/f42e94d3ec6cc1f676f720d11a0d037e.jpg"
  })

house4 = House.new({
  "name"=>"Slytherin",
  "logo_url"=>"http://g01.a.alicdn.com/kf/HTB1aYgnKXXXXXaeXXXXq6xXFXXXJ/Christmas-gift-Harry-Potter-Slytherin-Logo-Multicolour-Tattoo-For-Body-Art-Painting-Nontoxic-And-Tasteless-Cosplay.jpg"
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