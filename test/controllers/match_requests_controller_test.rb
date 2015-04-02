require 'test_helper'

class MatchRequestsControllerTest < ActionController::TestCase
  setup do
    @match_request = match_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_request" do
    assert_difference('MatchRequest.count') do
      post :create, match_request: { request_user_id: @match_request.request_user_id, target_user_id: @match_request.target_user_id }
    end

    assert_redirected_to match_request_path(assigns(:match_request))
  end

  test "should show match_request" do
    get :show, id: @match_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_request
    assert_response :success
  end

  test "should update match_request" do
    patch :update, id: @match_request, match_request: { request_user_id: @match_request.request_user_id, target_user_id: @match_request.target_user_id }
    assert_redirected_to match_request_path(assigns(:match_request))
  end

  test "should destroy match_request" do
    assert_difference('MatchRequest.count', -1) do
      delete :destroy, id: @match_request
    end

    assert_redirected_to match_requests_path
  end
end
