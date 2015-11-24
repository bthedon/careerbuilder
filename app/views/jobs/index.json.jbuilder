json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :city, :state, :description, :is_active, :is_internal, :requirements, :is_remote, :hourly_rate, :user_id
  json.url job_url(job, format: :json)
end
