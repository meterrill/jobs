class Jobs
  @@all_jobs = []

  define_method(:initialize) do |job_title, job_skill|
    @job_title = job_title
    @job_skill = job_skill
  end

  define_method(:job_title) do
    @job_title
  end

  define_singleton_method(:all) do
    @@all_jobs
  end

  define_method(:save)do
    @@all_jobs.push(self)
  end

  define_singleton_method(:clear) do
    @@all_jobs = []
  end
end
