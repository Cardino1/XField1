# frozen_string_literal: true

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  parallelize(workers: :number_of_processors)
  parallelize_setup do |worker|
    ActiveRecord::Base.establish_connection
  end
  parallelize_teardown do |worker|
    ActiveRecord::Base.connection_pool.disconnect!
  end

  fixtures :all
end
