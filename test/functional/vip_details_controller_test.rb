require 'test_helper'

class VipDetailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vip_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vip_detail" do
    assert_difference('VipDetail.count') do
      post :create, :vip_detail => { }
    end

    assert_redirected_to vip_detail_path(assigns(:vip_detail))
  end

  test "should show vip_detail" do
    get :show, :id => vip_details(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vip_details(:one).to_param
    assert_response :success
  end

  test "should update vip_detail" do
    put :update, :id => vip_details(:one).to_param, :vip_detail => { }
    assert_redirected_to vip_detail_path(assigns(:vip_detail))
  end

  test "should destroy vip_detail" do
    assert_difference('VipDetail.count', -1) do
      delete :destroy, :id => vip_details(:one).to_param
    end

    assert_redirected_to vip_details_path
  end
end
