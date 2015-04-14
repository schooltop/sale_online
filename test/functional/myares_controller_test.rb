require 'test_helper'

class MyaresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myare" do
    assert_difference('Myare.count') do
      post :create, :myare => { }
    end

    assert_redirected_to myare_path(assigns(:myare))
  end

  test "should show myare" do
    get :show, :id => myares(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => myares(:one).to_param
    assert_response :success
  end

  test "should update myare" do
    put :update, :id => myares(:one).to_param, :myare => { }
    assert_redirected_to myare_path(assigns(:myare))
  end

  test "should destroy myare" do
    assert_difference('Myare.count', -1) do
      delete :destroy, :id => myares(:one).to_param
    end

    assert_redirected_to myares_path
  end
end
