require 'test_helper'

class TrainingRecordsControllerTest < ActionController::TestCase
  setup do
    @training_record = training_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:training_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training_record" do
    assert_difference('TrainingRecord.count') do
      post :create, training_record: { trainee_id: @training_record.trainee_id, type_of_training: @training_record.type_of_training }
    end

    assert_redirected_to training_record_path(assigns(:training_record))
  end

  test "should show training_record" do
    get :show, id: @training_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @training_record
    assert_response :success
  end

  test "should update training_record" do
    patch :update, id: @training_record, training_record: { trainee_id: @training_record.trainee_id, type_of_training: @training_record.type_of_training }
    assert_redirected_to training_record_path(assigns(:training_record))
  end

  test "should destroy training_record" do
    assert_difference('TrainingRecord.count', -1) do
      delete :destroy, id: @training_record
    end

    assert_redirected_to training_records_path
  end
end
