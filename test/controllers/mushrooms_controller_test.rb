require 'test_helper'

class MushroomsControllerTest < ActionController::TestCase
  setup do
    @mushroom = mushrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mushrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mushroom" do
    assert_difference('Mushroom.count') do
      post :create, mushroom: { company: @mushroom.company, day_of_supply: @mushroom.day_of_supply, location: @mushroom.location, price: @mushroom.price, quantity: @mushroom.quantity, reciept: @mushroom.reciept, user_id: @mushroom.user_id }
    end

    assert_redirected_to mushroom_path(assigns(:mushroom))
  end

  test "should show mushroom" do
    get :show, id: @mushroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mushroom
    assert_response :success
  end

  test "should update mushroom" do
    patch :update, id: @mushroom, mushroom: { company: @mushroom.company, day_of_supply: @mushroom.day_of_supply, location: @mushroom.location, price: @mushroom.price, quantity: @mushroom.quantity, reciept: @mushroom.reciept, user_id: @mushroom.user_id }
    assert_redirected_to mushroom_path(assigns(:mushroom))
  end

  test "should destroy mushroom" do
    assert_difference('Mushroom.count', -1) do
      delete :destroy, id: @mushroom
    end

    assert_redirected_to mushrooms_path
  end
end
