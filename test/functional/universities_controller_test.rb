require 'test_helper'

class UniversitiesControllerTest < ActionController::TestCase
  setup do
    @university = universities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:universities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create university" do
    assert_difference('University.count') do
      post :create, :university => @university.attributes
    end

    assert_redirected_to university_path(assigns(:university))
  end

  test "should show university" do
    get :show, :id => @university.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @university.to_param
    assert_response :success
  end

  test "should update university" do
    put :update, :id => @university.to_param, :university => @university.attributes
    assert_redirected_to university_path(assigns(:university))
  end

  test "should destroy university" do
    assert_difference('University.count', -1) do
      delete :destroy, :id => @university.to_param
    end

    assert_redirected_to universities_path
  end
end
