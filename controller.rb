require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require_relative ('models/student')
require_relative ('models/house')

# show all students
get '/students' do
  @students = Student.all()
  erb(:index)
end

#serve up new student form
get '/students/new' do
  @houses = House.all()
  erb(:new)
end

#actually add new student to db
post '/students' do
  student = Student.new(params)
  student.save()
  redirect to ('/students')
end



