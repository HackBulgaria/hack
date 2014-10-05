module Hack
  class SlideCommand < Generator
    argument :name

    def copy_index_slim
      copy_file "templates/slide/index.slim", "#{name}/index.slim"
    end

    def copy_stylesheets
      copy_file "templates/slide/css/reveal.css", "#{name}/css/reveal.css"
      copy_file "templates/slide/css/simple.css", "#{name}/css/simple.css"
    end

    def copy_javascripts
      copy_file "templates/slide/js/head.min.js", "#{name}/js/head.min.js"
      copy_file "templates/slide/js/highlight.js", "#{name}/js/highlight.js"
      copy_file "templates/slide/js/reveal.js", "#{name}/js/reveal.js"
    end
  end
end
