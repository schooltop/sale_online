require 'test_helper'

class MaterialTasksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:material_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material_task" do
    assert_difference('MaterialTask.count') do
      post :create, :material_task => { }
    end

    assert_redirected_to material_task_path(assigns(:material_task))
  end

  test "should show material_task" do
    get :show, :id => material_tasks(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => material_tasks(:one).to_param
    assert_response :success
  end

  test "should update material_task" do
    put :update, :id => material_tasks(:one).to_param, :material_task => { }
    assert_redirected_to material_task_path(assigns(:material_task))
  end

  test "should destroy material_task" do
    assert_difference('MaterialTask.count', -1) do
      delete :destroy, :id => material_tasks(:one).to_param
    end

    assert_redirected_to material_tasks_path
  end
end
