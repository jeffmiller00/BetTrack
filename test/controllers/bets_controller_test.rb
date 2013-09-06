require 'test_helper'

class BetsControllerTest < ActionController::TestCase
  setup do
    @bet = bets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bet" do
    assert_difference('Bet.count') do
      post :create, bet: { amount: @bet.amount, bet: @bet.bet, bet_type_id: @bet.bet_type_id, date: @bet.date, description: @bet.description, source_id: @bet.source_id, sport_id: @bet.sport_id, spread: @bet.spread, won: @bet.won }
    end

    assert_redirected_to bet_path(assigns(:bet))
  end

  test "should show bet" do
    get :show, id: @bet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bet
    assert_response :success
  end

  test "should update bet" do
    patch :update, id: @bet, bet: { amount: @bet.amount, bet: @bet.bet, bet_type_id: @bet.bet_type_id, date: @bet.date, description: @bet.description, source_id: @bet.source_id, sport_id: @bet.sport_id, spread: @bet.spread, won: @bet.won }
    assert_redirected_to bet_path(assigns(:bet))
  end

  test "should destroy bet" do
    assert_difference('Bet.count', -1) do
      delete :destroy, id: @bet
    end

    assert_redirected_to bets_path
  end
end
