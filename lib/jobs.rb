class Jobs
  define_method(:initialize) do |job_title|
    @job_title = job_title
  end

  define_method(:job_title) do
    @job_title
  end

  define_singleton_method(:all) do
    []
  end
end
