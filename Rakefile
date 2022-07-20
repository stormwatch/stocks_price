require "rake/testtask"
require "rubocop/rake_task"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

RuboCop::RakeTask.new do |task|
  task.requires << "rubocop-minitest"
  task.requires << "rubocop-performance"
end

task default: :test
