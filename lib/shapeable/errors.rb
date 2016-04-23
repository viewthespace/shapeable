module Shapeable
  module Errors
    class InvalidShapeError < NameError
      def initialize(path, shape, version: nil)
        resource = path.name.split('::').last.constantize
        if version
          super("Invalid shape #{path}::V#{version}::#{resource}#{shape.camelize}Serializer")
        else
          super("Invalid shape #{path}::#{resource}#{shape.camelize}Serializer")
        end
      end
    end

    class UnresolvedShapeError < Exception
      def initialize(msg = 'Unable to resolve shape.' \
                     ' Try specifying a default version and shape.'
                    )
        super
      end
    end
  end
end
