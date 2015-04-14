require 'test_helper'

class SpasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spa" do
    assert_difference('Spa.count') do
      post :create, :spa => { }
    end

    assert_redirected_to spa_path(assigns(:spa))
  end

  test "should show spa" do
    get :show, :id => spas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => spas(:one).to_param
    assert_response :success
  end

  test "should update spa" do
    put :update, :id => spas(:one).to_param, :spa => { }
    assert_redirected_to spa_path(assigns(:spa))
  end

  test "should destroy spa" do
    assert_difference('Spa.count', -1) do
      delete :destroy, :id => spas(:one).to_param
    end

    assert_redirected_to spas_path
  end
end
