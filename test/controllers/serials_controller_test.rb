require 'test_helper'

class SerialsControllerTest < ActionController::TestCase
  setup do
    @serial = serials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serials)
  end

  test "should create serial" do
    assert_difference('Serial.count') do
      post :create, serial: {  }
    end

    assert_response 201
  end

  test "should show serial" do
    get :show, id: @serial
    assert_response :success
  end

  test "should update serial" do
    put :update, id: @serial, serial: {  }
    assert_response 204
  end

  test "should destroy serial" do
    assert_difference('Serial.count', -1) do
      delete :destroy, id: @serial
    end

    assert_response 204
  end
end
