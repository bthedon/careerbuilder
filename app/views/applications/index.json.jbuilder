json.array!(@applications) do |application|
  json.extract! application, :id, :email, :job_id, :resume, :first_name, :last_name, :cover_letter, :opt_in, :address
  json.url application_url(application, format: :json)
end
