require 'rails_helper'

describe RecipeService, :vcr => true do

  it "returns a 200 success header when the API call is made" do
    response = RecipeService.get_meal
    expect(response.code).to(eq(200))
  end
end