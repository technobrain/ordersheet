require 'test_helper'

class OrderChargePeopleControllerTest < ActionController::TestCase
  setup do
    @order_charge_person = order_charge_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:OrderChargePeople)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_charge_person" do
    assert_difference('OrderChargePerson.count') do
      post :create, order_charge_person: { basic_amount: @order_charge_person.basic_amount, deduction_bid: @order_charge_person.deduction_bid, employee_id: @order_charge_person.employee_id, order_id: @order_charge_person.order_id, overtime_bid: @order_charge_person.overtime_bid, time_limit_lower: @order_charge_person.time_limit_lower, time_limit_upper: @order_charge_person.time_limit_upper }
    end

    assert_redirected_to order_charge_person_path(assigns(:order_charge_person))
  end

  test "should show order_charge_person" do
    get :show, id: @order_charge_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_charge_person
    assert_response :success
  end

  test "should update order_charge_person" do
    patch :update, id: @order_charge_person, order_charge_person: { basic_amount: @order_charge_person.basic_amount, deduction_bid: @order_charge_person.deduction_bid, employee_id: @order_charge_person.employee_id, order_id: @order_charge_person.order_id, overtime_bid: @order_charge_person.overtime_bid, time_limit_lower: @order_charge_person.time_limit_lower, time_limit_upper: @order_charge_person.time_limit_upper }
    assert_redirected_to order_charge_person_path(assigns(:order_charge_person))
  end

  test "should destroy order_charge_person" do
    assert_difference('OrderChargePerson.count', -1) do
      delete :destroy, id: @order_charge_person
    end

    assert_redirected_to order_charge_people_path
  end
end
