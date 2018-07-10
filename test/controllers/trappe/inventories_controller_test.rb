require 'test_helper'

class Trappe::InventoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trappe_inventories_index_url
    assert_response :success
  end

  test "should get new" do
    get trappe_inventories_new_url
    assert_response :success
  end

  test "should get show" do
    get trappe_inventories_show_url
    assert_response :success
  end

end
