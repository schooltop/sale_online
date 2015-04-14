require 'test_helper'

class VipconsumnosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vipconsumnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vipconsumno" do
    assert_difference('Vipconsumno.count') do
      post :create, :vipconsumno => { }
    end

    assert_redirected_to vipconsumno_path(assigns(:vipconsumno))
  end

  test "should show vipconsumno" do
    get :show, :id => vipconsumnos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vipconsumnos(:one).to_param
    assert_response :success
  end

  test "should update vipconsumno" do
    put :update, :id => vipconsumnos(:one).to_param, :vipconsumno => { }
    assert_redirected_to vipconsumno_path(assigns(:vipconsumno))
  end

  test "should destroy vipconsumno" do
    assert_difference('Vipconsumno.count', -1) do
      delete :destroy, :id => vipconsumnos(:one).to_param
    end

    assert_redirected_to vipconsumnos_path
  end
end
