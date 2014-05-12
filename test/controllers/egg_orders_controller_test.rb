require 'test_helper'

class EggOrdersControllerTest < ActionController::TestCase
  setup do
    @egg_order = egg_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:egg_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create egg_order" do
    assert_difference('EggOrder.count') do
      post :create, egg_order: { company: @egg_order.company, daily_quantity: @egg_order.daily_quantity, location: @egg_order.location, per_: @egg_order.per_, price: @egg_order.price, tel: @egg_order.tel, user: @egg_order.user }
    end

    assert_redirected_to egg_order_path(assigns(:egg_order))
  end

  test "should show egg_order" do
    get :show, id: @egg_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @egg_order
    assert_response :success
  end

  test "should update egg_order" do
    patch :update, id: @egg_order, egg_order: { company: @egg_order.company, daily_quantity: @egg_order.daily_quantity, location: @egg_order.location, per_: @egg_order.per_, price: @egg_order.price, tel: @egg_order.tel, user: @egg_order.user }
    assert_redirected_to egg_order_path(assigns(:egg_order))
  end

  test "should destroy egg_order" do
    assert_difference('EggOrder.count', -1) do
      delete :destroy, id: @egg_order
    end

    assert_redirected_to egg_orders_path
  end
end
