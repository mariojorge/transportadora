require 'test_helper'

class MotoristasControllerTest < ActionController::TestCase
  setup do
    @motorista = motoristas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motoristas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motorista" do
    assert_difference('Motorista.count') do
      post :create, :motorista => @motorista.attributes
    end

    assert_redirected_to motorista_path(assigns(:motorista))
  end

  test "should show motorista" do
    get :show, :id => @motorista.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @motorista.to_param
    assert_response :success
  end

  test "should update motorista" do
    put :update, :id => @motorista.to_param, :motorista => @motorista.attributes
    assert_redirected_to motorista_path(assigns(:motorista))
  end

  test "should destroy motorista" do
    assert_difference('Motorista.count', -1) do
      delete :destroy, :id => @motorista.to_param
    end

    assert_redirected_to motoristas_path
  end
end
