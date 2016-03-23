require 'test_helper'

class SignpostsControllerTest < ActionController::TestCase
  setup do
    @signpost = signposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:signposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create signpost" do
    assert_difference('Signpost.count') do
      post :create, signpost: {  }
    end

    assert_redirected_to signpost_path(assigns(:signpost))
  end

  test "should show signpost" do
    get :show, id: @signpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @signpost
    assert_response :success
  end

  test "should update signpost" do
    patch :update, id: @signpost, signpost: {  }
    assert_redirected_to signpost_path(assigns(:signpost))
  end

  test "should destroy signpost" do
    assert_difference('Signpost.count', -1) do
      delete :destroy, id: @signpost
    end

    assert_redirected_to signposts_path
  end
end
