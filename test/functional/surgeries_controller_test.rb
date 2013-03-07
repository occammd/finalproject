require 'test_helper'

class SurgeriesControllerTest < ActionController::TestCase
  setup do
    @surgery = surgeries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surgeries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surgery" do
    assert_difference('Surgery.count') do
      post :create, surgery: { anesthesia_id: @surgery.anesthesia_id, case_cart: @surgery.case_cart, finished: @surgery.finished, finished_at: @surgery.finished_at, notes: @surgery.notes, operation_date: @surgery.operation_date, or_room: @surgery.or_room, patient_id: @surgery.patient_id, position: @surgery.position, started: @surgery.started, started_at: @surgery.started_at, surgeon_id: @surgery.surgeon_id, surgery: @surgery.surgery, time_estimate: @surgery.time_estimate, triage: @surgery.triage }
    end

    assert_redirected_to surgery_path(assigns(:surgery))
  end

  test "should show surgery" do
    get :show, id: @surgery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surgery
    assert_response :success
  end

  test "should update surgery" do
    put :update, id: @surgery, surgery: { anesthesia_id: @surgery.anesthesia_id, case_cart: @surgery.case_cart, finished: @surgery.finished, finished_at: @surgery.finished_at, notes: @surgery.notes, operation_date: @surgery.operation_date, or_room: @surgery.or_room, patient_id: @surgery.patient_id, position: @surgery.position, started: @surgery.started, started_at: @surgery.started_at, surgeon_id: @surgery.surgeon_id, surgery: @surgery.surgery, time_estimate: @surgery.time_estimate, triage: @surgery.triage }
    assert_redirected_to surgery_path(assigns(:surgery))
  end

  test "should destroy surgery" do
    assert_difference('Surgery.count', -1) do
      delete :destroy, id: @surgery
    end

    assert_redirected_to surgeries_path
  end
end
