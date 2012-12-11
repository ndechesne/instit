require 'test_helper'

class ElevesControllerTest < ActionController::TestCase
  setup do
    @elefe = eleves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eleves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elefe" do
    assert_difference('Eleve.count') do
      post :create, elefe: { addr: @elefe.addr, birth: @elefe.birth, firstName: @elefe.firstName, gender: @elefe.gender, lastName: @elefe.lastName }
    end

    assert_redirected_to elefe_path(assigns(:elefe))
  end

  test "should show elefe" do
    get :show, id: @elefe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elefe
    assert_response :success
  end

  test "should update elefe" do
    put :update, id: @elefe, elefe: { addr: @elefe.addr, birth: @elefe.birth, firstName: @elefe.firstName, gender: @elefe.gender, lastName: @elefe.lastName }
    assert_redirected_to elefe_path(assigns(:elefe))
  end

  test "should destroy elefe" do
    assert_difference('Eleve.count', -1) do
      delete :destroy, id: @elefe
    end

    assert_redirected_to eleves_path
  end
end
