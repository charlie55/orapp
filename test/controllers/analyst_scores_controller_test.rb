require 'test_helper'

class AnalystScoresControllerTest < ActionController::TestCase
  setup do
    @analyst_score = analyst_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:analyst_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create analyst_score" do
    assert_difference('AnalystScore.count') do
      post :create, analyst_score: { name: @analyst_score.name, score: @analyst_score.score }
    end

    assert_redirected_to analyst_score_path(assigns(:analyst_score))
  end

  test "should show analyst_score" do
    get :show, id: @analyst_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @analyst_score
    assert_response :success
  end

  test "should update analyst_score" do
    patch :update, id: @analyst_score, analyst_score: { name: @analyst_score.name, score: @analyst_score.score }
    assert_redirected_to analyst_score_path(assigns(:analyst_score))
  end

  test "should destroy analyst_score" do
    assert_difference('AnalystScore.count', -1) do
      delete :destroy, id: @analyst_score
    end

    assert_redirected_to analyst_scores_path
  end
end
