require 'test_helper'

class Cambridge::InventoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cambridge_inventories_index_url
    assert_response :success
  end

  test "should get new" do
    get cambridge_inventories_new_url
    assert_response :success
  end

  test "should get show" do
    get cambridge_inventories_show_url
    assert_response :success
  end

end
