json.array!(@job_schedulers) do |job_scheduler|
  json.extract! job_scheduler, :id, :event_at, :frequency
  json.url job_scheduler_url(job_scheduler, format: :json)
end
