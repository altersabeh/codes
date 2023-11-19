# frozen_string_literal: true

require 'bundler/gem_tasks'

PROGRAMS = [
  'hello',
  'fibonacci'
]

task :default do
  puts 'Specify the name of Ruby program to run !'
end

PROGRAMS.each do |program|
  desc "Run the #{program} program"
  task "ruby-#{program}".to_sym do
    sh "cd ruby/#{program} && rake"
  end
end
