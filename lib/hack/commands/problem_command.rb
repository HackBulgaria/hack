module Hack
  class ProblemCommand < Generator
    argument :name

    def copy_support_files
      copy_file "templates/problem/Gemfile", "#{name}/Gemfile"
      copy_file "templates/problem/Rakefile", "#{name}/Rakefile"
    end

    def copy_solution_and_test
      copy_file "templates/problem/solution.rb", "#{name}/solution.rb"
      copy_file "templates/problem/test_solution.rb", "#{name}/test_solution.rb"
    end

    def copy_rubocop_config
      copy_file "templates/problem/.rubocop.yml", "#{name}/.rubocop.yml"
    end
  end
end
