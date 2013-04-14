require 'test_helper'

class OrderInfosControllerTest < ActionController::TestCase
  setup do
    @order_info = order_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_info" do
    assert_difference('OrderInfo.count') do
      post :create, order_info: { author: @order_info.author, business_cd: @order_info.business_cd, contract_end_date: @order_info.contract_end_date, contract_start_date: @order_info.contract_start_date, department_cd: @order_info.department_cd, general_order_date: @order_info.general_order_date, general_order_no: @order_info.general_order_no, general_other: @order_info.general_other, general_receipt_date: @order_info.general_receipt_date, income_date: @order_info.income_date, order_no: @order_info.order_no, other: @order_info.other, payment_site: @order_info.payment_site, project_cd: @order_info.project_cd, revenue_unit_code: @order_info.revenue_unit_code, work_end_date: @order_info.work_end_date, work_place: @order_info.work_place, work_start_date: @order_info.work_start_date }
    end

    assert_redirected_to order_info_path(assigns(:order_info))
  end

  test "should show order_info" do
    get :show, id: @order_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_info
    assert_response :success
  end

  test "should update order_info" do
    patch :update, id: @order_info, order_info: { author: @order_info.author, business_cd: @order_info.business_cd, contract_end_date: @order_info.contract_end_date, contract_start_date: @order_info.contract_start_date, department_cd: @order_info.department_cd, general_order_date: @order_info.general_order_date, general_order_no: @order_info.general_order_no, general_other: @order_info.general_other, general_receipt_date: @order_info.general_receipt_date, income_date: @order_info.income_date, order_no: @order_info.order_no, other: @order_info.other, payment_site: @order_info.payment_site, project_cd: @order_info.project_cd, revenue_unit_code: @order_info.revenue_unit_code, work_end_date: @order_info.work_end_date, work_place: @order_info.work_place, work_start_date: @order_info.work_start_date }
    assert_redirected_to order_info_path(assigns(:order_info))
  end

  test "should destroy order_info" do
    assert_difference('OrderInfo.count', -1) do
      delete :destroy, id: @order_info
    end

    assert_redirected_to order_infos_path
  end
end
