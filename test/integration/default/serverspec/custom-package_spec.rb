require_relative 'spec_helper'

#Should include yum-gd recipe
describe file('/etc/yum.repos.d/datadog.repo') do
  it { should be_file }
end

describe file('/etc/yum.repos.d/gdcustom.repo') do
  it { should be_file }
end

describe file('/etc/yum.repos.d/opsmatic.repo') do
  it { should be_file }
end

describe file('/etc/yum.repos.d/s3tools.repo') do
  it { should be_file }
end

describe file('/etc/yum.repos.d/scalr.repo') do
  it { should be_file }
end

#Should install dependant packages
describe package('python27') do
  it { should be_installed }
end

describe package('python27-devel') do
  it { should be_installed }
end