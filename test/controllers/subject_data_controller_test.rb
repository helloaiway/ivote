require 'test_helper'

class SubjectDataControllerTest < ActionController::TestCase
  setup do
    @subject_datum = subject_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subject_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subject_datum" do
    assert_difference('SubjectDatum.count') do
      post :create, subject_datum: { description: @subject_datum.description, end_time: @subject_datum.end_time, start_time: @subject_datum.start_time, style: @subject_datum.style, subject: @subject_datum.subject, template: @subject_datum.template, topic_img: @subject_datum.topic_img, type: @subject_datum.type }
    end

    assert_redirected_to subject_datum_path(assigns(:subject_datum))
  end

  test "should show subject_datum" do
    get :show, id: @subject_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subject_datum
    assert_response :success
  end

  test "should update subject_datum" do
    patch :update, id: @subject_datum, subject_datum: { description: @subject_datum.description, end_time: @subject_datum.end_time, start_time: @subject_datum.start_time, style: @subject_datum.style, subject: @subject_datum.subject, template: @subject_datum.template, topic_img: @subject_datum.topic_img, type: @subject_datum.type }
    assert_redirected_to subject_datum_path(assigns(:subject_datum))
  end

  test "should destroy subject_datum" do
    assert_difference('SubjectDatum.count', -1) do
      delete :destroy, id: @subject_datum
    end

    assert_redirected_to subject_data_path
  end
end
