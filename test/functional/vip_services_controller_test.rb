require 'test_helper'

class VipServicesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vip_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vip_service" do
    assert_difference('VipService.count') do
      post :create, :vip_service => { }
    end

    assert_redirected_to vip_service_path(assigns(:vip_service))
  end

  test "should show vip_service" do
    get :show, :id => vip_services(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vip_services(:one).to_param
    assert_response :success
  end

  test "should update vip_service" do
    put :update, :id => vip_services(:one).to_param, :vip_service => { }
    assert_redirected_to vip_service_path(assigns(:vip_service))
  end

  test "should destroy vip_service" do
    assert_difference('VipService.count', -1) do
      delete :destroy, :id => vip_services(:one).to_param
    end

    assert_redirected_to vip_services_path
  end
end
