require ('pg')
require_relative ('../db/sql_runner')

class House

  attr_accessor :name, :logo_url
  attr_reader :id

  def initialize(options)
    @name = options['name']
    @logo_url = options['logo_url']
    @id = options['id'].to_i
end

  def save()
    sql = "INSERT INTO houses (name, logo_url) VALUES ('#{@name}', '#{@logo_url}') RETURNING *;"
    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses;"
    result = SqlRunner.run(sql)
    houses = result.map{|house|House.new(house)}
    return houses
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = #{id};"
    result = SqlRunner.run(sql)
    return result[0]

  end
end