require 'test_helper'

class FriendsListsControllerTest < ActionController::TestCase
  setup do
    @friends_list = friends_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:friends_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create friends_list" do
    assert_difference('FriendsList.count') do
      post :create, friends_list: { age: @friends_list.age, name: @friends_list.name }
    end

    assert_redirected_to friends_list_path(assigns(:friends_list))
  end

  test "should show friends_list" do
    get :show, id: @friends_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @friends_list
    assert_response :success
  end

  test "should update friends_list" do
    patch :update, id: @friends_list, friends_list: { age: @friends_list.age, name: @friends_list.name }
    assert_redirected_to friends_list_path(assigns(:friends_list))
  end

  test "should destroy friends_list" do
    assert_difference('FriendsList.count', -1) do
      delete :destroy, id: @friends_list
    end

    assert_redirected_to friends_lists_path
  end
end
