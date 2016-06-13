require 'spec_helper'

describe Joborder do
  it 'has a version number' do
    expect(Joborder::VERSION).not_to be nil
  end

  subject{ Joborder::Joborder.new }

  it 'given an empty string, return an empty sequence' do
    expect(subject.listjobs()).to eq("")
  end
end
