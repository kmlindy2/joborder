require "joborder/version"

module Joborder
  
  class Joborder

    #
    # If a job is not in orderjobs, add it.
    # If the job has a dependency, insert it before the job.
    #      
    def listjobs(jobs="")
      ordered_jobs = ""
      
      jobs.split(/\s*,\s*/).each do |job_and_dep|
        job, dep = job_and_dep.split(/\s*=>\s*/)

        #
        # Report error if job is self dependent
        #
        return "Self Dependent job '#{job}'" if dep == job
        
        #
        # add job if not already in the list (as a
        # dependency of another job)
        #
        ordered_jobs << job if !ordered_jobs.include? job

        #
        # Insert dependency before the given job, even if
        # it's not in the original list
        #
        if dep

          #
          # Report an error if dependencies are circular
          #
          if ordered_jobs.include? dep
            return "Circular dependencies!" if ordered_jobs.index(job) < ordered_jobs.index(dep)
          end

          
          ordered_jobs.insert(ordered_jobs.index(job), dep) if !ordered_jobs.include? dep
        end

      end
      
      ordered_jobs
    end
    
  end
end
