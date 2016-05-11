require 'test_helper'

class JobSchedulersControllerTest < ActionController::TestCase
  setup do
    @job_scheduler = job_schedulers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_schedulers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_scheduler" do
    assert_difference('JobScheduler.count') do
      post :create, job_scheduler: { event_at: @job_scheduler.event_at, frequency: @job_scheduler.frequency }
    end

    assert_redirected_to job_scheduler_path(assigns(:job_scheduler))
  end

  test "should show job_scheduler" do
    get :show, id: @job_scheduler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_scheduler
    assert_response :success
  end

  test "should update job_scheduler" do
    patch :update, id: @job_scheduler, job_scheduler: { event_at: @job_scheduler.event_at, frequency: @job_scheduler.frequency }
    assert_redirected_to job_scheduler_path(assigns(:job_scheduler))
  end

  test "should destroy job_scheduler" do
    assert_difference('JobScheduler.count', -1) do
      delete :destroy, id: @job_scheduler
    end

    assert_redirected_to job_schedulers_path
  end
end
