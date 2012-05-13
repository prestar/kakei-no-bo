require 'test_helper'

class MonthlydataControllerTest < ActionController::TestCase
  setup do
    @monthlydatum = monthlydata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monthlydata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monthlydatum" do
    assert_difference('Monthlydatum.count') do
      post :create, monthlydatum: {  }
    end

    assert_redirected_to monthlydatum_path(assigns(:monthlydatum))
  end

  test "should show monthlydatum" do
    get :show, id: @monthlydatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monthlydatum
    assert_response :success
  end

  test "should update monthlydatum" do
    put :update, id: @monthlydatum, monthlydatum: {  }
    assert_redirected_to monthlydatum_path(assigns(:monthlydatum))
  end

  test "should destroy monthlydatum" do
    assert_difference('Monthlydatum.count', -1) do
      delete :destroy, id: @monthlydatum
    end

    assert_redirected_to monthlydata_path
  end
end
