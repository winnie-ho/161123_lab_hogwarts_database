require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require_relative ('models/student')

# show all students
get '/students' do
  @students = Student.all()
  erb(:index)
end