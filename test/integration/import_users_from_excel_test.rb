require 'test_helper'

class ImportUsersFromExcelTest < ActionDispatch::IntegrationTest
  setup do
    @user=users(:one)
  end

  test "should get new" do
    get 'file_import/new'
    assert_response :success
  end

  test "should create user" do
    post 'file_import/show'
    assert_response :success
  end
end
