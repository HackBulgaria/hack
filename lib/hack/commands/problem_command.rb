module Hack
  class ProblemCommand < Generator
    argument :name

    def copy_support_files
      copy_file "Gemfile", "#{name}/Gemfile"
      copy_file "Rakefile", "#{name}/Rakefile"
    end

    def copy_solution_and_test
      copy_file "solution.rb", "#{name}/solution.rb"
      copy_file "solution_test.rb", "#{name}/solution_test.rb"
    end

    def copy_rubocop_config
      copy_file ".rubocop.yml", "#{name}/.rubocop.yml"
    end
  end
end
