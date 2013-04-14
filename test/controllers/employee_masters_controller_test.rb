require 'test_helper'

class EmployeeMastersControllerTest < ActionController::TestCase
  setup do
    @employee_master = employee_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_master" do
    assert_difference('EmployeeMaster.count') do
      post :create, employee_master: { address1: @employee_master.address1, address2: @employee_master.address2, birth_date: @employee_master.birth_date, birth_place: @employee_master.birth_place, education_level: @employee_master.education_level, emai_address2: @employee_master.emai_address2, email_address1: @employee_master.email_address1, emergency_tel_no: @employee_master.emergency_tel_no, employee_cd: @employee_master.employee_cd, employee_name: @employee_master.employee_name, employee_name_kana: @employee_master.employee_name_kana, fax_no: @employee_master.fax_no, mobile_tel_no1: @employee_master.mobile_tel_no1, mobile_tel_no2: @employee_master.mobile_tel_no2, other: @employee_master.other, position_cd: @employee_master.position_cd, postal_cd: @employee_master.postal_cd, station: @employee_master.station, tel_no: @employee_master.tel_no, unit_cd: @employee_master.unit_cd }
    end

    assert_redirected_to employee_master_path(assigns(:employee_master))
  end

  test "should show employee_master" do
    get :show, id: @employee_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_master
    assert_response :success
  end

  test "should update employee_master" do
    patch :update, id: @employee_master, employee_master: { address1: @employee_master.address1, address2: @employee_master.address2, birth_date: @employee_master.birth_date, birth_place: @employee_master.birth_place, education_level: @employee_master.education_level, emai_address2: @employee_master.emai_address2, email_address1: @employee_master.email_address1, emergency_tel_no: @employee_master.emergency_tel_no, employee_cd: @employee_master.employee_cd, employee_name: @employee_master.employee_name, employee_name_kana: @employee_master.employee_name_kana, fax_no: @employee_master.fax_no, mobile_tel_no1: @employee_master.mobile_tel_no1, mobile_tel_no2: @employee_master.mobile_tel_no2, other: @employee_master.other, position_cd: @employee_master.position_cd, postal_cd: @employee_master.postal_cd, station: @employee_master.station, tel_no: @employee_master.tel_no, unit_cd: @employee_master.unit_cd }
    assert_redirected_to employee_master_path(assigns(:employee_master))
  end

  test "should destroy employee_master" do
    assert_difference('EmployeeMaster.count', -1) do
      delete :destroy, id: @employee_master
    end

    assert_redirected_to employee_masters_path
  end
end
