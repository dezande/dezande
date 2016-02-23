ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # include Devise::TestHelpers

  # fonction
  def assert_presence(model, field)
    model.valid?
    assert_match /doit être rempli\(e\)/, model.errors[field].join,
      "Presence error for #{field} not found on #{model.class}"
  end

  def assert_unique(model, field)
    model.valid?
    assert_match /n\'est pas disponible/, model.errors[field].join,
      "Unique error for #{field} not found on #{model.class}"
  end
end
