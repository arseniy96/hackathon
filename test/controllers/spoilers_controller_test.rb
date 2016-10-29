require 'test_helper'

class SpoilersControllerTest < ActionController::TestCase
  setup do
    @spoiler = spoilers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spoilers)
  end

  test "should create spoiler" do
    assert_difference('Spoiler.count') do
      post :create, spoiler: {  }
    end

    assert_response 201
  end

  test "should show spoiler" do
    get :show, id: @spoiler
    assert_response :success
  end

  test "should update spoiler" do
    put :update, id: @spoiler, spoiler: {  }
    assert_response 204
  end

  test "should destroy spoiler" do
    assert_difference('Spoiler.count', -1) do
      delete :destroy, id: @spoiler
    end

    assert_response 204
  end
end
