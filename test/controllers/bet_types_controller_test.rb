require 'test_helper'

class BetTypesControllerTest < ActionController::TestCase
  setup do
    @bet_type = bet_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bet_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bet_type" do
    assert_difference('BetType.count') do
      post :create, bet_type: { name: @bet_type.name }
    end

    assert_redirected_to bet_type_path(assigns(:bet_type))
  end

  test "should show bet_type" do
    get :show, id: @bet_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bet_type
    assert_response :success
  end

  test "should update bet_type" do
    patch :update, id: @bet_type, bet_type: { name: @bet_type.name }
    assert_redirected_to bet_type_path(assigns(:bet_type))
  end

  test "should destroy bet_type" do
    assert_difference('BetType.count', -1) do
      delete :destroy, id: @bet_type
    end

    assert_redirected_to bet_types_path
  end
end
