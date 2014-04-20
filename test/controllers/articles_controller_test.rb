require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'get_index' do
    get :index
    assert_response :success
  end

  test 'post_create' do
    post :create, {:name => 'test_name', :text => 'texttext'}
    assert_response :redirect
    assert_equal Article.count, 1
  end

  test 'delete_destroy' do
    post :create, {:name => 'test_name', :text => 'texttext'}
    assert_equal Article.count, 1
    delete :destroy, {:id => 980190963}
    assert_response :redirect
    assert_equal Article.count, 0
  end
end
