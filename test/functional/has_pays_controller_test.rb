require 'test_helper'

class HasPaysControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:has_pays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create has_pay" do
    assert_difference('HasPay.count') do
      post :create, :has_pay => { }
    end

    assert_redirected_to has_pay_path(assigns(:has_pay))
  end

  test "should show has_pay" do
    get :show, :id => has_pays(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => has_pays(:one).to_param
    assert_response :success
  end

  test "should update has_pay" do
    put :update, :id => has_pays(:one).to_param, :has_pay => { }
    assert_redirected_to has_pay_path(assigns(:has_pay))
  end

  test "should destroy has_pay" do
    assert_difference('HasPay.count', -1) do
      delete :destroy, :id => has_pays(:one).to_param
    end

    assert_redirected_to has_pays_path
  end
end
