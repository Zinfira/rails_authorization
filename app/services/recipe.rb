class Recipe 
  def self.get_meal
    response = HTTParty.get('https://www.themealdb.com/api/json/v1/'+ ENV['API_key'] + '/random.php')
  end
end
