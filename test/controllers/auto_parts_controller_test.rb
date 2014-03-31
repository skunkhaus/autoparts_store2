require 'test_helper'

class AutoPartsControllerTest < ActionController::TestCase
  setup do
    @auto_part = auto_parts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auto_parts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auto_part" do
    assert_difference('AutoPart.count') do
      post :create, auto_part: { description: @auto_part.description, name: @auto_part.name, price: @auto_part.price, vehicle_make: @auto_part.vehicle_make, vehicle_model: @auto_part.vehicle_model }
    end

    assert_redirected_to auto_part_path(assigns(:auto_part))
  end

  test "should show auto_part" do
    get :show, id: @auto_part
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auto_part
    assert_response :success
  end

  test "should update auto_part" do
    patch :update, id: @auto_part, auto_part: { description: @auto_part.description, name: @auto_part.name, price: @auto_part.price, vehicle_make: @auto_part.vehicle_make, vehicle_model: @auto_part.vehicle_model }
    assert_redirected_to auto_part_path(assigns(:auto_part))
  end

  test "should destroy auto_part" do
    assert_difference('AutoPart.count', -1) do
      delete :destroy, id: @auto_part
    end

    assert_redirected_to auto_parts_path
  end
end
