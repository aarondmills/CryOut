require 'test_helper'

class CoordinatorsControllerTest < ActionController::TestCase
  setup do
    @coordinator = coordinators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coordinators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coordinator" do
    assert_difference('Coordinator.count') do
      post :create, :coordinator => @coordinator.attributes
    end

    assert_redirected_to coordinator_path(assigns(:coordinator))
  end

  test "should show coordinator" do
    get :show, :id => @coordinator.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @coordinator.to_param
    assert_response :success
  end

  test "should update coordinator" do
    put :update, :id => @coordinator.to_param, :coordinator => @coordinator.attributes
    assert_redirected_to coordinator_path(assigns(:coordinator))
  end

  test "should destroy coordinator" do
    assert_difference('Coordinator.count', -1) do
      delete :destroy, :id => @coordinator.to_param
    end

    assert_redirected_to coordinators_path
  end
end
