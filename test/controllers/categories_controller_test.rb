require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase

  def setup
    @category = Category.create(name: "sports")
  end

  test "should get catefories index" do
    get :index
    assert_response :success
  end

  test "should get new action" do
    get :new
    assert_response :success
  end

  test "should get show action" do
    get(:show, {'id' => @category.id})
    assert_response :success
  end

end