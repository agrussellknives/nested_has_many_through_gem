require 'nested_has_many_through_gem/nested_has_many_through'

module NestedHasManyThroughGem
  class Railtie < ::Rails::Railtie
    initializer "nested_has_many_through.use_nested_has_man_through" do
      ::ActiveRecord::Associations::HasManyThroughAssociation.send :include, NestedHasManyThrough::Association

      if defined?(::ActiveRecord::Reflection::ThroughReflection)
        ::ActiveRecord::Reflection::ThroughReflection.send :include, NestedHasManyThrough::Reflection
      else
        ::ActiveRecord::Reflection::AssociationReflection.send :include, NestedHasManyThrough::Reflection
      end
    end
  end
end
