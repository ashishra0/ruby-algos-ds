begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = '--format documentation'
  # t.rcov = true
  end
  task default: :spec
rescue LoadError
  # rspec not available
end