require 'test_helper'

class VipStylesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vip_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vip_style" do
    assert_difference('VipStyle.count') do
      post :create, :vip_style => { }
    end

    assert_redirected_to vip_style_path(assigns(:vip_style))
  end

  test "should show vip_style" do
    get :show, :id => vip_styles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vip_styles(:one).to_param
    assert_response :success
  end

  test "should update vip_style" do
    put :update, :id => vip_styles(:one).to_param, :vip_style => { }
    assert_redirected_to vip_style_path(assigns(:vip_style))
  end

  test "should destroy vip_style" do
    assert_difference('VipStyle.count', -1) do
      delete :destroy, :id => vip_styles(:one).to_param
    end

    assert_redirected_to vip_styles_path
  end
end
