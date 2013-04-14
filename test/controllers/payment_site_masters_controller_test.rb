require 'test_helper'

class PaymentSiteMastersControllerTest < ActionController::TestCase
  setup do
    @payment_site_master = payment_site_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_site_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_site_master" do
    assert_difference('PaymentSiteMaster.count') do
      post :create, payment_site_master: { payment_site_code: @payment_site_master.payment_site_code, payment_site_name: @payment_site_master.payment_site_name }
    end

    assert_redirected_to payment_site_master_path(assigns(:payment_site_master))
  end

  test "should show payment_site_master" do
    get :show, id: @payment_site_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment_site_master
    assert_response :success
  end

  test "should update payment_site_master" do
    patch :update, id: @payment_site_master, payment_site_master: { payment_site_code: @payment_site_master.payment_site_code, payment_site_name: @payment_site_master.payment_site_name }
    assert_redirected_to payment_site_master_path(assigns(:payment_site_master))
  end

  test "should destroy payment_site_master" do
    assert_difference('PaymentSiteMaster.count', -1) do
      delete :destroy, id: @payment_site_master
    end

    assert_redirected_to payment_site_masters_path
  end
end
