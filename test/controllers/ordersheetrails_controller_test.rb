require 'test_helper'

class OrdersheetrailsControllerTest < ActionController::TestCase
  setup do
    @ordersheetrail = ordersheetrails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordersheetrails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordersheetrail" do
    assert_difference('Ordersheetrail.count') do
      post :create, ordersheetrail: { charge_person: @ordersheetrail.charge_person, company_cd: @ordersheetrail.company_cd, company_name: @ordersheetrail.company_name, contact: @ordersheetrail.contact, division_name: @ordersheetrail.division_name, g: @ordersheetrail.g, mod_date: @ordersheetrail.mod_date, ordersheet: @ordersheetrail.ordersheet, reg_date: @ordersheetrail.reg_date, scaffold: @ordersheetrail.scaffold, string: @ordersheetrail.string, tel_no: @ordersheetrail.tel_no }
    end

    assert_redirected_to ordersheetrail_path(assigns(:ordersheetrail))
  end

  test "should show ordersheetrail" do
    get :show, id: @ordersheetrail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordersheetrail
    assert_response :success
  end

  test "should update ordersheetrail" do
    patch :update, id: @ordersheetrail, ordersheetrail: { charge_person: @ordersheetrail.charge_person, company_cd: @ordersheetrail.company_cd, company_name: @ordersheetrail.company_name, contact: @ordersheetrail.contact, division_name: @ordersheetrail.division_name, g: @ordersheetrail.g, mod_date: @ordersheetrail.mod_date, ordersheet: @ordersheetrail.ordersheet, reg_date: @ordersheetrail.reg_date, scaffold: @ordersheetrail.scaffold, string: @ordersheetrail.string, tel_no: @ordersheetrail.tel_no }
    assert_redirected_to ordersheetrail_path(assigns(:ordersheetrail))
  end

  test "should destroy ordersheetrail" do
    assert_difference('Ordersheetrail.count', -1) do
      delete :destroy, id: @ordersheetrail
    end

    assert_redirected_to ordersheetrails_path
  end
end
