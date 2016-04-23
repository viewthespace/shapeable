module Shapeable
  class Configuration

    attr_accessor :path, :default_version, :default_shape, :enforce_versioning

    def initialize
      @path = nil
      @default_version = nil
      @default_shape = nil
      @enforce_versioning = true
    end

    def as_json
      {
        path: path,
        default_version: default_version,
        default_shape: default_shape,
        enforce_versioning: enforce_versioning
      }
    end
  end
end
