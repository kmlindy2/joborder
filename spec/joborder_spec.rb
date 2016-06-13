require 'spec_helper'

describe Joborder do
  it 'has a version number' do
    expect(Joborder::VERSION).not_to be nil
  end

  subject{ Joborder::Joborder.new }

  it 'given an empty string, return an empty sequence' do
    expect(subject.listjobs()).to eq("")
  end

  it 'adds any job with no dependcies to the list of ordered jobs' do
    expect(subject.listjobs("a =>")).to eq("a")
    expect(subject.listjobs("a =>, b => ")).to eq("ab")
    expect(subject.listjobs("a =>, b => , c=>")).to eq("abc")
  end

  it 'injects dependency before job' do
    expect(subject.listjobs("a => b")).to eq("ba")
    expect(subject.listjobs("a =>, b => c, c =>")).to eq("acb")
    expect(subject.listjobs("a =>, b => c, c =>a")).to eq("acb")
    expect(subject.listjobs("a =>, b => c, c => f, d => a, e => b, f => ")).to eq("afcbde")
  end  

end
