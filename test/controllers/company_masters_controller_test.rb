require 'test_helper'

class CompanyMastersControllerTest < ActionController::TestCase
  setup do
    @company_master = company_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_master" do
    assert_difference('CompanyMaster.count') do
      post :create, company_master: { charge_person: @company_master.charge_person, company_cd: @company_master.company_cd, company_name: @company_master.company_name, contact: @company_master.contact, division_name: @company_master.division_name, tel_no: @company_master.tel_no }
    end

    assert_redirected_to company_master_path(assigns(:company_master))
  end

  test "should show company_master" do
    get :show, id: @company_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company_master
    assert_response :success
  end

  test "should update company_master" do
    patch :update, id: @company_master, company_master: { charge_person: @company_master.charge_person, company_cd: @company_master.company_cd, company_name: @company_master.company_name, contact: @company_master.contact, division_name: @company_master.division_name, tel_no: @company_master.tel_no }
    assert_redirected_to company_master_path(assigns(:company_master))
  end

  test "should destroy company_master" do
    assert_difference('CompanyMaster.count', -1) do
      delete :destroy, id: @company_master
    end

    assert_redirected_to company_masters_path
  end
end
