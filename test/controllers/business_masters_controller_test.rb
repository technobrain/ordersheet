require 'test_helper'

class BusinessMastersControllerTest < ActionController::TestCase
  setup do
    @business_master = business_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_master" do
    assert_difference('BusinessMaster.count') do
      post :create, business_master: { business_cd: @business_master.business_cd, business_name: @business_master.business_name, project_cd: @business_master.project_cd }
    end

    assert_redirected_to business_master_path(assigns(:business_master))
  end

  test "should show business_master" do
    get :show, id: @business_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_master
    assert_response :success
  end

  test "should update business_master" do
    patch :update, id: @business_master, business_master: { business_cd: @business_master.business_cd, business_name: @business_master.business_name, project_cd: @business_master.project_cd }
    assert_redirected_to business_master_path(assigns(:business_master))
  end

  test "should destroy business_master" do
    assert_difference('BusinessMaster.count', -1) do
      delete :destroy, id: @business_master
    end

    assert_redirected_to business_masters_path
  end
end
