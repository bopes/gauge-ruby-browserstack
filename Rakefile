require 'rubygems'
require 'parallel'
require 'json'
require 'dotenv/tasks'
require_relative 'config'

spec_dir_path = 'specs'

@browsers = JSON.load(open('browsers.json'))
@parallel_limit = ENV['nodes'] || 3
@parallel_limit = @parallel_limit.to_i


task :single do
	begin
		ENV['SELENIUM_BROWSER'] = "firefox"
		ENV['SELENIUM_VERSION'] = "50.0"
		ENV['BS_AUTOMATE_OS'] = "OS X"
		ENV['BS_AUTOMATE_OS_VERSION'] = "Sierra"

		sh "gauge --tags single #{spec_dir_path}"
	rescue Exception => e
		puts "Error while running task:\n#{e.inspect}"
	end
end

task :local do
	begin
		ENV['SELENIUM_BROWSER'] = "firefox"
		ENV['SELENIUM_VERSION'] = "50.0"
		ENV['BS_AUTOMATE_OS'] = "OS X"
		ENV['BS_AUTOMATE_OS_VERSION'] = "Sierra"

		ENV['BS_LOCAL'] = 'true'

		sh "gauge --tags local #{spec_dir_path}"
	rescue Exception => e
		puts "Error while running task:\n#{e.inspect}"
	end
end

task :parallel do
	Parallel.each(@browsers, in_threads: @parallel_limit) do |browser|
		begin
			ENV['SELENIUM_BROWSER'] = browser['browser']
			ENV['SELENIUM_VERSION'] = browser['browser_version']
			ENV['BS_AUTOMATE_OS'] = browser['os']
			ENV['BS_AUTOMATE_OS_VERSION'] = browser['os_version']

			puts "Running with: #{browser.inspect}"
			sh "gauge --tags single #{spec_dir_path}"
		rescue Exception => e
			puts "Error while running task:\n#{e.inspect}"
		end
	end
end

task :default => [:single, :local, :parallel]