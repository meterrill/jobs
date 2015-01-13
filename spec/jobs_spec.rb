require('rspec')
require('jobs')

describe(Jobs) do
  describe("#job_title") do
    it("lets you enter job title") do
      test_job = Jobs.new("janitor")
      expect(test_job.job_title()).to eq("janitor")
    end
  end

  describe(".all") do
    it("is empty for now") do
      expect(Jobs.all()).to eq([])
    end
  end
end
