module SexyScopes
  %w( Version VERSION ).each do |constant|
    autoload constant, 'sexy_scopes/version'
  end
  
  extend ActiveSupport::Autoload
  
  autoload :Wrappers
  autoload :ExpressionWrappers
  autoload :PredicateWrappers
end

if defined? Rails::Railtie
  require 'sexy_scopes/railtie'
else
  require 'sexy_scopes/active_record'
end
