require 'test_helper'

class OrderBreakTimesControllerTest < ActionController::TestCase
  setup do
    @order_break_time = order_break_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_break_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_break_time" do
    assert_difference('OrderBreakTime.count') do
      post :create, order_break_time: { break_time: @order_break_time.break_time, detail_no: @order_break_time.detail_no, order_no: @order_break_time.order_no }
    end

    assert_redirected_to order_break_time_path(assigns(:order_break_time))
  end

  test "should show order_break_time" do
    get :show, id: @order_break_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_break_time
    assert_response :success
  end

  test "should update order_break_time" do
    patch :update, id: @order_break_time, order_break_time: { break_time: @order_break_time.break_time, detail_no: @order_break_time.detail_no, order_no: @order_break_time.order_no }
    assert_redirected_to order_break_time_path(assigns(:order_break_time))
  end

  test "should destroy order_break_time" do
    assert_difference('OrderBreakTime.count', -1) do
      delete :destroy, id: @order_break_time
    end

    assert_redirected_to order_break_times_path
  end
end
