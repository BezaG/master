require 'test_helper'

class HoneysControllerTest < ActionController::TestCase
  setup do
    @honey = honeys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:honeys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create honey" do
    assert_difference('Honey.count') do
      post :create, honey: { amount: @honey.amount, company: @honey.company, condition: @honey.condition, honey_type: @honey.honey_type, location: @honey.location, price: @honey.price, reciept: @honey.reciept, user_id: @honey.user_id }
    end

    assert_redirected_to honey_path(assigns(:honey))
  end

  test "should show honey" do
    get :show, id: @honey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @honey
    assert_response :success
  end

  test "should update honey" do
    patch :update, id: @honey, honey: { amount: @honey.amount, company: @honey.company, condition: @honey.condition, honey_type: @honey.honey_type, location: @honey.location, price: @honey.price, reciept: @honey.reciept, user_id: @honey.user_id }
    assert_redirected_to honey_path(assigns(:honey))
  end

  test "should destroy honey" do
    assert_difference('Honey.count', -1) do
      delete :destroy, id: @honey
    end

    assert_redirected_to honeys_path
  end
end
