require 'test_helper'

class ServiceTasksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_task" do
    assert_difference('ServiceTask.count') do
      post :create, :service_task => { }
    end

    assert_redirected_to service_task_path(assigns(:service_task))
  end

  test "should show service_task" do
    get :show, :id => service_tasks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => service_tasks(:one).to_param
    assert_response :success
  end

  test "should update service_task" do
    put :update, :id => service_tasks(:one).to_param, :service_task => { }
    assert_redirected_to service_task_path(assigns(:service_task))
  end

  test "should destroy service_task" do
    assert_difference('ServiceTask.count', -1) do
      delete :destroy, :id => service_tasks(:one).to_param
    end

    assert_redirected_to service_tasks_path
  end
end
