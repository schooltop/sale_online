require 'test_helper'

class ServiceStylesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_style" do
    assert_difference('ServiceStyle.count') do
      post :create, :service_style => { }
    end

    assert_redirected_to service_style_path(assigns(:service_style))
  end

  test "should show service_style" do
    get :show, :id => service_styles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => service_styles(:one).to_param
    assert_response :success
  end

  test "should update service_style" do
    put :update, :id => service_styles(:one).to_param, :service_style => { }
    assert_redirected_to service_style_path(assigns(:service_style))
  end

  test "should destroy service_style" do
    assert_difference('ServiceStyle.count', -1) do
      delete :destroy, :id => service_styles(:one).to_param
    end

    assert_redirected_to service_styles_path
  end
end
