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
      ordered_jobs
    end
    
  end
end
