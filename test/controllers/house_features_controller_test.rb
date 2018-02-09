require 'test_helper'

class HouseFeaturesControllerTest < ActionController::TestCase
  setup do
    @house_feature = house_features(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:house_features)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create house_feature" do
    assert_difference('HouseFeature.count') do
      post :create, house_feature: { feature_id: @house_feature.feature_id, house_id: @house_feature.house_id }
    end

    assert_redirected_to house_feature_path(assigns(:house_feature))
  end

  test "should show house_feature" do
    get :show, id: @house_feature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @house_feature
    assert_response :success
  end

  test "should update house_feature" do
    patch :update, id: @house_feature, house_feature: { feature_id: @house_feature.feature_id, house_id: @house_feature.house_id }
    assert_redirected_to house_feature_path(assigns(:house_feature))
  end

  test "should destroy house_feature" do
    assert_difference('HouseFeature.count', -1) do
      delete :destroy, id: @house_feature
    end

    assert_redirected_to house_features_path
  end
end
