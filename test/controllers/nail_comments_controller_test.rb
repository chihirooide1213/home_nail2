require 'test_helper'

class NailCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nail_comments_index_url
    assert_response :success
  end

  test "should get show" do
    get nail_comments_show_url
    assert_response :success
  end

  test "should get edit" do
    get nail_comments_edit_url
    assert_response :success
  end

end
