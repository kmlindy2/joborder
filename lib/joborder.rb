require "joborder/version"

module Joborder
  
  class Joborder

    #
    # If a job is not in orderjobs, add it.
    # If the job has a dependency, insert it before the job.
    #
    # Because we're just return the list of ordered jobs as
    # a string, regex is being used to check and/or insert
    # jobs into the list of ordered jobs. This could just as
    # easily be done with Array#index
    #
    #      
    def listjobs(jobs="")
      ordered_jobs = ""
      
      jobs.split(/\s*,\s*/).each do |job_and_dep|
        job, dep = job_and_dep.split(/\s*=>\s*/)
        
        #
        # add job if not already in the list (as a
        # dependency of another job)
        #
        ordered_jobs << job if !ordered_jobs.include? job
      end
      
      ordered_jobs
    end
    
  end
end
