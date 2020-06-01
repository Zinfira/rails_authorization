class RecipeService

  def self.get_meal
    response = HTTParty.get('https://www.themealdb.com/api/json/v1/' + ENV["API_Key"] + '/random.php')
  end

end
