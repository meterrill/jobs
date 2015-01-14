require('rspec')
require('jobs')

describe(Jobs) do
    before() do
      Jobs.clear()
    end

  # Left off adding second property (mopping). Reference 'Creating our own classes' lesson.
  describe("#job_title") do
    it("lets you enter job title") do
      test_job = Jobs.new("janitor", "mopping")
      expect(test_job.job_title()).to eq("janitor")
    end
  end

  describe(".all") do
    it("is empty for now") do
      expect(Jobs.all()).to eq([])
    end
  end

  describe("#save") do
    it("adds a job title to the array of saved jobs") do
      test_job = Jobs.new("CEO")
      test_job.save()
      expect(Jobs.all()).to eq([test_job])
    end
  end

  describe(".clear") do
    it("empties out all the saved jobs") do
      Jobs.new("CEO").save()
      Jobs.clear()
      expect(Jobs.all()).to eq([])
    end
  end
end
