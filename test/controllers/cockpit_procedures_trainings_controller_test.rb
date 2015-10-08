require 'test_helper'

class CockpitProceduresTrainingsControllerTest < ActionController::TestCase
  setup do
    @cockpit_procedures_training = cockpit_procedures_trainings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cockpit_procedures_trainings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cockpit_procedures_training" do
    assert_difference('CockpitProceduresTraining.count') do
      post :create, cockpit_procedures_training: { date_completed: @cockpit_procedures_training.date_completed, trainee_id: @cockpit_procedures_training.trainee_id, training_record_id: @cockpit_procedures_training.training_record_id, user_id: @cockpit_procedures_training.user_id }
    end

    assert_redirected_to cockpit_procedures_training_path(assigns(:cockpit_procedures_training))
  end

  test "should show cockpit_procedures_training" do
    get :show, id: @cockpit_procedures_training
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cockpit_procedures_training
    assert_response :success
  end

  test "should update cockpit_procedures_training" do
    patch :update, id: @cockpit_procedures_training, cockpit_procedures_training: { date_completed: @cockpit_procedures_training.date_completed, trainee_id: @cockpit_procedures_training.trainee_id, training_record_id: @cockpit_procedures_training.training_record_id, user_id: @cockpit_procedures_training.user_id }
    assert_redirected_to cockpit_procedures_training_path(assigns(:cockpit_procedures_training))
  end

  test "should destroy cockpit_procedures_training" do
    assert_difference('CockpitProceduresTraining.count', -1) do
      delete :destroy, id: @cockpit_procedures_training
    end

    assert_redirected_to cockpit_procedures_trainings_path
  end
end
