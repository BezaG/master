require 'test_helper'

class HoneyOrdersControllerTest < ActionController::TestCase
  setup do
    @honey_order = honey_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:honey_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create honey_order" do
    assert_difference('HoneyOrder.count') do
      post :create, honey_order: { amount: @honey_order.amount, company: @honey_order.company, honey_id: @honey_order.honey_id, location: @honey_order.location, price: @honey_order.price, user_id: @honey_order.user_id }
    end

    assert_redirected_to honey_order_path(assigns(:honey_order))
  end

  test "should show honey_order" do
    get :show, id: @honey_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @honey_order
    assert_response :success
  end

  test "should update honey_order" do
    patch :update, id: @honey_order, honey_order: { amount: @honey_order.amount, company: @honey_order.company, honey_id: @honey_order.honey_id, location: @honey_order.location, price: @honey_order.price, user_id: @honey_order.user_id }
    assert_redirected_to honey_order_path(assigns(:honey_order))
  end

  test "should destroy honey_order" do
    assert_difference('HoneyOrder.count', -1) do
      delete :destroy, id: @honey_order
    end

    assert_redirected_to honey_orders_path
  end
end
