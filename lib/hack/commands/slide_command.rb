module Hack
  class SlideCommand < Generator
    argument :name

    def copy_slim_templates
      copy_file "index.slim", "#{name}/index.slim"
      copy_file "lecture.slim", "#{name}/lecture.slim"
    end

    def copy_support_files
      copy_file "Gemfile", "#{name}/Gemfile"
      copy_file "Rakefile", "#{name}/Rakefile"
    end

    def copy_stylesheets
      copy_file "css/reveal.css", "#{name}/css/reveal.css"
      copy_file "css/simple.css", "#{name}/css/simple.css"
      copy_file "css/googlecode.css", "#{name}/css/googlecode.css"
    end

    def copy_fonts
      copy_file "css/fonts/Fixedsys500c.eot", "#{name}/css/fonts/Fixedsys500c.eot"
      copy_file "css/fonts/Fixedsys500c.otf", "#{name}/css/fonts/Fixedsys500c.otf"
      copy_file "css/fonts/Fixedsys500c.svg", "#{name}/css/fonts/Fixedsys500c.svg"
      copy_file "css/fonts/Fixedsys500c.ttf", "#{name}/css/fonts/Fixedsys500c.ttf"
      copy_file "css/fonts/Fixedsys500c.woff", "#{name}/css/fonts/Fixedsys500c.woff"
    end

    def copy_javascripts
      copy_file "js/head.min.js", "#{name}/js/head.min.js"
      copy_file "js/highlight.js", "#{name}/js/highlight.js"
      copy_file "js/reveal.js", "#{name}/js/reveal.js"
    end
  end
end
