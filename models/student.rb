require ('pg')
require_relative ('../db/sql_runner')

class Student

  attr_accessor :first_name, :last_name, :house, :age
  attr_reader :id

  def initialize(options)
    @id = options["id"].to_i
    @first_name = options["first_name"]
    @last_name = options["last_name"]
    @house = options["house"]
    @age = options["age"].to_i
  end

  def save
    sql = "INSERT INTO students (first_name, last_name, house, age) VALUES ('#{@first_name}', '#{@last_name}', '#{@house}', #{@age}) RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = #{id};"
    result = SqlRunner.run(sql)
    return result[0]
  end

  def self.all
    sql = "SELECT * FROM students;"
    result = SqlRunner.run(sql)
    students = result.map { |student| Student.new(student)}
    return students
  end


end