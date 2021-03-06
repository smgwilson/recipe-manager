require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  def setup
    @chef = Chef.new(chefname: "bob", email: "bob@example.com")
    @recipe = @chef.recipes.build(name: "chicken parm", summary: "this is the best chicken parm recipe ever",
              description: "heat oil, add onions, add tomato sauce, add chicken, cook for 20 minutes")
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end

  test "chef_id should be present" do
    @recipe.chef_id = nil
    assert.not @recipe.valid?
  end

  test "name should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end

  test "name length should not be long" do

  end

  test "name length should not be short" do

  end

  test "summary should be present" do

  end

  test "summary length should not be too long" do

  end

  test "summary length should not be too short" do

  end

  test "description must be present" do

  end

  test "description length should not be too long" do

  end

  test "description length should not be too short" do

  end
end
