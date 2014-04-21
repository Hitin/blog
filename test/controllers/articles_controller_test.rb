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
    a = Article.create(:name => 'test_name', :text => 'texttext')
    assert_equal Article.count, 1
    delete :destroy, {:id => a.id}
    assert_response :redirect
    assert_equal Article.count, 0
  end


  test 'put_update' do
    a = Article.create(:name => 'test_name', :text => 'texttext')
    assert_equal Article.count, 1
    f1 = Article.first.name
    put :update, {:id => a.id, :name => 'Petr', :text => 'proba1'}
    f2 = Article.first.name
    assert_response :redirect
    assert_not_equal f1, f2
  end

end
