require 'test_helper'

class ClothingTypesControllerTest < ActionController::TestCase
  setup do
    @clothing_type = clothing_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clothing_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clothing_type" do
    assert_difference('ClothingType.count') do
      post :create, clothing_type: { name: @clothing_type.name }
    end

    assert_redirected_to clothing_type_path(assigns(:clothing_type))
  end

  test "should show clothing_type" do
    get :show, id: @clothing_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clothing_type
    assert_response :success
  end

  test "should update clothing_type" do
    patch :update, id: @clothing_type, clothing_type: { name: @clothing_type.name }
    assert_redirected_to clothing_type_path(assigns(:clothing_type))
  end

  test "should destroy clothing_type" do
    assert_difference('ClothingType.count', -1) do
      delete :destroy, id: @clothing_type
    end

    assert_redirected_to clothing_types_path
  end
end
