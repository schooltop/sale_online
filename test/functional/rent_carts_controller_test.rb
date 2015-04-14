require 'test_helper'

class RentCartsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rent_carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rent_cart" do
    assert_difference('RentCart.count') do
      post :create, :rent_cart => { }
    end

    assert_redirected_to rent_cart_path(assigns(:rent_cart))
  end

  test "should show rent_cart" do
    get :show, :id => rent_carts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => rent_carts(:one).to_param
    assert_response :success
  end

  test "should update rent_cart" do
    put :update, :id => rent_carts(:one).to_param, :rent_cart => { }
    assert_redirected_to rent_cart_path(assigns(:rent_cart))
  end

  test "should destroy rent_cart" do
    assert_difference('RentCart.count', -1) do
      delete :destroy, :id => rent_carts(:one).to_param
    end

    assert_redirected_to rent_carts_path
  end
end
