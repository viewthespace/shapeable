require 'shapeable/version'

module Shapeable

  def versioner mod, **opts
    normalize_options(opts)
    self.prepend_before_filter opts do
      if request.accept
        version = request.accept[/version\s?=\s?(\d+)/, 1]
        shape = request.accept[/shape\s?=\s?(\w+)/, 1]
        mod_version = mod.const_get("V#{version}")
        resource_name = mod.name.split('::').last
        if shape
          @versioner_serializer = mod_version.const_get("#{resource_name}#{shape.camelize}Serializer")
        else
          @versioner_serializer = mod_version.const_get("#{resource_name}Serializer")
        end
      end
    end
  end

  private

  def normalize_options(opts)
    opts.keep_if do |k, _v|
      [:except, :only].include?(k)
    end
  end

end

if defined? ActionController::Base
  ActionController::Base.class_eval do
    attr_accessor :versioner_serializer
    extend Shapeable
  end
end
