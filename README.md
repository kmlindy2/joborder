# Joborder

Given a list of jobs in the format job => dependency, return a string representing the jobs in order such that all dependencies are met.

Jobs cannot be self dependent.

Dependencies cannot be circular (i.e. "a => b, b => c, c => a")

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'joborder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install joborder

## Usage

joborder = Joborder::Joborder.new
ordered_jobs = joborder.listjobs("a =>, b => c, c => f, d => a, e => b, f => ")  # => "afcbde"

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/joborder.

