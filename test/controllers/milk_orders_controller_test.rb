require 'test_helper'

class MilkOrdersControllerTest < ActionController::TestCase
  setup do
    @milk_order = milk_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:milk_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create milk_order" do
    assert_difference('MilkOrder.count') do
      post :create, milk_order: { company: @milk_order.company, daily_quantity: @milk_order.daily_quantity, location: @milk_order.location, milk_id: @milk_order.milk_id, price: @milk_order.price, user_id: @milk_order.user_id }
    end

    assert_redirected_to milk_order_path(assigns(:milk_order))
  end

  test "should show milk_order" do
    get :show, id: @milk_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @milk_order
    assert_response :success
  end

  test "should update milk_order" do
    patch :update, id: @milk_order, milk_order: { company: @milk_order.company, daily_quantity: @milk_order.daily_quantity, location: @milk_order.location, milk_id: @milk_order.milk_id, price: @milk_order.price, user_id: @milk_order.user_id }
    assert_redirected_to milk_order_path(assigns(:milk_order))
  end

  test "should destroy milk_order" do
    assert_difference('MilkOrder.count', -1) do
      delete :destroy, id: @milk_order
    end

    assert_redirected_to milk_orders_path
  end
end
