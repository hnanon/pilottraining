require 'test_helper'

class TraineesControllerTest < ActionController::TestCase
  setup do
    @trainee = trainees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trainees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trainee" do
    assert_difference('Trainee.count') do
      post :create, trainee: { first_name: @trainee.first_name, identification: @trainee.identification, last_name: @trainee.last_name, pilot_position: @trainee.pilot_position }
    end

    assert_redirected_to trainee_path(assigns(:trainee))
  end

  test "should show trainee" do
    get :show, id: @trainee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trainee
    assert_response :success
  end

  test "should update trainee" do
    patch :update, id: @trainee, trainee: { first_name: @trainee.first_name, identification: @trainee.identification, last_name: @trainee.last_name, pilot_position: @trainee.pilot_position }
    assert_redirected_to trainee_path(assigns(:trainee))
  end

  test "should destroy trainee" do
    assert_difference('Trainee.count', -1) do
      delete :destroy, id: @trainee
    end

    assert_redirected_to trainees_path
  end
end
