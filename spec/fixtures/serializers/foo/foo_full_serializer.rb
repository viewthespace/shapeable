module Serializers
  module Foo

    class FooFullSerializer < ActiveModel::Serializer
      attributes :first_name, :last_name

      def first_name
        "#{object.first_name} full"
      end

    end

  end
end
