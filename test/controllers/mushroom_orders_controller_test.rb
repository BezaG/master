require 'test_helper'

class MushroomOrdersControllerTest < ActionController::TestCase
  setup do
    @mushroom_order = mushroom_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mushroom_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mushroom_order" do
    assert_difference('MushroomOrder.count') do
      post :create, mushroom_order: { company: @mushroom_order.company, location: @mushroom_order.location, mushroom_id: @mushroom_order.mushroom_id, price: @mushroom_order.price, quantity: @mushroom_order.quantity, user_id: @mushroom_order.user_id }
    end

    assert_redirected_to mushroom_order_path(assigns(:mushroom_order))
  end

  test "should show mushroom_order" do
    get :show, id: @mushroom_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mushroom_order
    assert_response :success
  end

  test "should update mushroom_order" do
    patch :update, id: @mushroom_order, mushroom_order: { company: @mushroom_order.company, location: @mushroom_order.location, mushroom_id: @mushroom_order.mushroom_id, price: @mushroom_order.price, quantity: @mushroom_order.quantity, user_id: @mushroom_order.user_id }
    assert_redirected_to mushroom_order_path(assigns(:mushroom_order))
  end

  test "should destroy mushroom_order" do
    assert_difference('MushroomOrder.count', -1) do
      delete :destroy, id: @mushroom_order
    end

    assert_redirected_to mushroom_orders_path
  end
end
