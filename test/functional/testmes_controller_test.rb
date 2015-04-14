require 'test_helper'

class TestmesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testme" do
    assert_difference('Testme.count') do
      post :create, :testme => { }
    end

    assert_redirected_to testme_path(assigns(:testme))
  end

  test "should show testme" do
    get :show, :id => testmes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => testmes(:one).to_param
    assert_response :success
  end

  test "should update testme" do
    put :update, :id => testmes(:one).to_param, :testme => { }
    assert_redirected_to testme_path(assigns(:testme))
  end

  test "should destroy testme" do
    assert_difference('Testme.count', -1) do
      delete :destroy, :id => testmes(:one).to_param
    end

    assert_redirected_to testmes_path
  end
end
