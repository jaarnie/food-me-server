require 'test_helper'

class UserFavouritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_favourite = user_favourites(:one)
  end

  test "should get index" do
    get user_favourites_url, as: :json
    assert_response :success
  end

  test "should create user_favourite" do
    assert_difference('UserFavourite.count') do
      post user_favourites_url, params: { user_favourite: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show user_favourite" do
    get user_favourite_url(@user_favourite), as: :json
    assert_response :success
  end

  test "should update user_favourite" do
    patch user_favourite_url(@user_favourite), params: { user_favourite: {  } }, as: :json
    assert_response 200
  end

  test "should destroy user_favourite" do
    assert_difference('UserFavourite.count', -1) do
      delete user_favourite_url(@user_favourite), as: :json
    end

    assert_response 204
  end
end
