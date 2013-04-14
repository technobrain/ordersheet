require 'test_helper'

class OrderArrivalDatesControllerTest < ActionController::TestCase
  setup do
    @order_arrival_date = order_arrival_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_arrival_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_arrival_date" do
    assert_difference('OrderArrivalDate.count') do
      post :create, order_arrival_date: { arrival_date: @order_arrival_date.arrival_date, detail_no: @order_arrival_date.detail_no, order_no: @order_arrival_date.order_no }
    end

    assert_redirected_to order_arrival_date_path(assigns(:order_arrival_date))
  end

  test "should show order_arrival_date" do
    get :show, id: @order_arrival_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_arrival_date
    assert_response :success
  end

  test "should update order_arrival_date" do
    patch :update, id: @order_arrival_date, order_arrival_date: { arrival_date: @order_arrival_date.arrival_date, detail_no: @order_arrival_date.detail_no, order_no: @order_arrival_date.order_no }
    assert_redirected_to order_arrival_date_path(assigns(:order_arrival_date))
  end

  test "should destroy order_arrival_date" do
    assert_difference('OrderArrivalDate.count', -1) do
      delete :destroy, id: @order_arrival_date
    end

    assert_redirected_to order_arrival_dates_path
  end
end
