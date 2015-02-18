require 'test_helper'

module Hack
  class ColorTest < MiniTest::Test
    def test_normal
      color = Color.new(char = 'c')

      assert_equal char, color.normal
    end

    def test_black
      color = Color.new(char = 'c')

      assert_equal "\e[0;90mc\e[0m", color.black
    end

    def test_white
      color = Color.new(char = 'c')

      assert_equal "\e[0;37mc\e[0m", color.white
    end

    def test_orange
      color = Color.new(char = 'c')

      assert_equal "\e[0;31mc\e[0m", color.orange
    end

    def test_yellow
      color = Color.new(char = 'c')

      assert_equal "\e[0;33mc\e[0m", color.yellow
    end

    def test_gray
      color = Color.new(char = 'c')

      assert_equal "\e[0;36mc\e[0m", color.gray
    end
  end
end
