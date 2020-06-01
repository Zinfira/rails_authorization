require 'rails_helper'

describe Recipe, :vcr => true do

  it "returns a 200 success header when the API call is made" do
    response = Recipe.get_meal
    expect(response.code).to(eq(200))
  end
end