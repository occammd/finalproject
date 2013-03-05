require 'test_helper'

class CasesControllerTest < ActionController::TestCase
  setup do
    @case = cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create case" do
    assert_difference('Case.count') do
      post :create, case: { anesthesia_id: @case.anesthesia_id, case_cart: @case.case_cart, finished: @case.finished, finished_at: @case.finished_at, notes: @case.notes, operation_date: @case.operation_date, or_room: @case.or_room, patient_id: @case.patient_id, position: @case.position, started: @case.started, started_at: @case.started_at, surgeon_id: @case.surgeon_id, surgery: @case.surgery, time_estimate: @case.time_estimate, triage: @case.triage }
    end

    assert_redirected_to case_path(assigns(:case))
  end

  test "should show case" do
    get :show, id: @case
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @case
    assert_response :success
  end

  test "should update case" do
    put :update, id: @case, case: { anesthesia_id: @case.anesthesia_id, case_cart: @case.case_cart, finished: @case.finished, finished_at: @case.finished_at, notes: @case.notes, operation_date: @case.operation_date, or_room: @case.or_room, patient_id: @case.patient_id, position: @case.position, started: @case.started, started_at: @case.started_at, surgeon_id: @case.surgeon_id, surgery: @case.surgery, time_estimate: @case.time_estimate, triage: @case.triage }
    assert_redirected_to case_path(assigns(:case))
  end

  test "should destroy case" do
    assert_difference('Case.count', -1) do
      delete :destroy, id: @case
    end

    assert_redirected_to cases_path
  end
end
