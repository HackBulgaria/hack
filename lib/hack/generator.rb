module Hack
  class Generator < Thor::Group
    include Thor::Actions

    class << self
      def inherited(child)
        child.source_root template_directory_for(child)
      end

      private

        def template_directory_for(child)
          normalized_path = child.name.
            sub(/\AHack::/, '').
            sub(/Command\z/, '').
            underscorize

          Hack.root.join 'templates', normalized_path
        end
    end
  end
end
