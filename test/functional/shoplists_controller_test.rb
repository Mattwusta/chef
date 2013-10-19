require 'test_helper'

class ShoplistsControllerTest < ActionController::TestCase
  setup do
    @shoplist = shoplists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shoplists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shoplist" do
    assert_difference('Shoplist.count') do
      post :create, shoplist: { description: @shoplist.description }
    end

    assert_redirected_to shoplist_path(assigns(:shoplist))
  end

  test "should show shoplist" do
    get :show, id: @shoplist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shoplist
    assert_response :success
  end

  test "should update shoplist" do
    put :update, id: @shoplist, shoplist: { description: @shoplist.description }
    assert_redirected_to shoplist_path(assigns(:shoplist))
  end

  test "should destroy shoplist" do
    assert_difference('Shoplist.count', -1) do
      delete :destroy, id: @shoplist
    end

    assert_redirected_to shoplists_path
  end
end
