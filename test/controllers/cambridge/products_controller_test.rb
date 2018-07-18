require 'test_helper'

class Cambridge::ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get cambridge_products_edit_url
    assert_response :success
  end

  test "should get index" do
    get cambridge_products_index_url
    assert_response :success
  end

  test "should get new" do
    get cambridge_products_new_url
    assert_response :success
  end

end
