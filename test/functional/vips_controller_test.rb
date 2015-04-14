require 'test_helper'

class VipsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vip" do
    assert_difference('Vip.count') do
      post :create, :vip => { }
    end

    assert_redirected_to vip_path(assigns(:vip))
  end

  test "should show vip" do
    get :show, :id => vips(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vips(:one).to_param
    assert_response :success
  end

  test "should update vip" do
    put :update, :id => vips(:one).to_param, :vip => { }
    assert_redirected_to vip_path(assigns(:vip))
  end

  test "should destroy vip" do
    assert_difference('Vip.count', -1) do
      delete :destroy, :id => vips(:one).to_param
    end

    assert_redirected_to vips_path
  end
end
