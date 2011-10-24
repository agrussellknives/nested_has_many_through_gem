require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "action_mailer/railtie"

Bundler.require

module Dummy
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.active_support.deprecation = :stderr
    config.root = config.root.join("spec/dummy")
  end
end
