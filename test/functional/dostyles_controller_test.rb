require 'test_helper'

class DostylesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dostyles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dostyle" do
    assert_difference('Dostyle.count') do
      post :create, :dostyle => { }
    end

    assert_redirected_to dostyle_path(assigns(:dostyle))
  end

  test "should show dostyle" do
    get :show, :id => dostyles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dostyles(:one).to_param
    assert_response :success
  end

  test "should update dostyle" do
    put :update, :id => dostyles(:one).to_param, :dostyle => { }
    assert_redirected_to dostyle_path(assigns(:dostyle))
  end

  test "should destroy dostyle" do
    assert_difference('Dostyle.count', -1) do
      delete :destroy, :id => dostyles(:one).to_param
    end

    assert_redirected_to dostyles_path
  end
end
