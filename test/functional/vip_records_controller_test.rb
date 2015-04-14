require 'test_helper'

class VipRecordsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vip_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vip_record" do
    assert_difference('VipRecord.count') do
      post :create, :vip_record => { }
    end

    assert_redirected_to vip_record_path(assigns(:vip_record))
  end

  test "should show vip_record" do
    get :show, :id => vip_records(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vip_records(:one).to_param
    assert_response :success
  end

  test "should update vip_record" do
    put :update, :id => vip_records(:one).to_param, :vip_record => { }
    assert_redirected_to vip_record_path(assigns(:vip_record))
  end

  test "should destroy vip_record" do
    assert_difference('VipRecord.count', -1) do
      delete :destroy, :id => vip_records(:one).to_param
    end

    assert_redirected_to vip_records_path
  end
end
