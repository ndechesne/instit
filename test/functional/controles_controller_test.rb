require 'test_helper'

class ControlesControllerTest < ActionController::TestCase
  setup do
    @controle = controles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:controles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create controle" do
    assert_difference('Controle.count') do
      post :create, controle: { date: @controle.date, description: @controle.description, matiere_id: @controle.matiere_id, name: @controle.name, notemax: @controle.notemax }
    end

    assert_redirected_to controle_path(assigns(:controle))
  end

  test "should show controle" do
    get :show, id: @controle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @controle
    assert_response :success
  end

  test "should update controle" do
    put :update, id: @controle, controle: { date: @controle.date, description: @controle.description, matiere_id: @controle.matiere_id, name: @controle.name, notemax: @controle.notemax }
    assert_redirected_to controle_path(assigns(:controle))
  end

  test "should destroy controle" do
    assert_difference('Controle.count', -1) do
      delete :destroy, id: @controle
    end

    assert_redirected_to controles_path
  end
end
