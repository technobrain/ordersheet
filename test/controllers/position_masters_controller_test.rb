require 'test_helper'

class PositionMastersControllerTest < ActionController::TestCase
  setup do
    @position_master = position_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:position_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create position_master" do
    assert_difference('PositionMaster.count') do
      post :create, position_master: { position_expenses: @position_master.position_expenses, position_name: @position_master.position_name }
    end

    assert_redirected_to position_master_path(assigns(:position_master))
  end

  test "should show position_master" do
    get :show, id: @position_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @position_master
    assert_response :success
  end

  test "should update position_master" do
    patch :update, id: @position_master, position_master: { position_expenses: @position_master.position_expenses, position_name: @position_master.position_name }
    assert_redirected_to position_master_path(assigns(:position_master))
  end

  test "should destroy position_master" do
    assert_difference('PositionMaster.count', -1) do
      delete :destroy, id: @position_master
    end

    assert_redirected_to position_masters_path
  end
end
