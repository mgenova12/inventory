require 'test_helper'

class Trappe::ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get trappe_products_edit_url
    assert_response :success
  end

  test "should get index" do
    get trappe_products_index_url
    assert_response :success
  end

  test "should get new" do
    get trappe_products_new_url
    assert_response :success
  end

end
