# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?

  describe user('root') do
    it { should exist }
  end
  end

describe port(80) do
  it { should be_listening }
end

describe command('curl localhost') do
  its('stdout') { should match('Hello, world') }
end
