require 'test_helper'

class ImportUsersFromExcelTest < ActionDispatch::IntegrationTest
  setup do
    @user=users(:one)
  end

  test "should get file_import/new page loaded" do
    get '/file_import/new'
    assert_response :success
  end

  
  test "should post to file_import/show page" do
    @user.save do
      get '/file_import/show', controller: 'file_import', action: 'post'
      assert :success
    end
  end
end
