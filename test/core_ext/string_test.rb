require 'test_helper'

module Hack
  class StringTest < MiniTest::Test
    def test_underscorize
      assert_equal 'hack/namespace', 'Hack::Namespace'.underscorize
      assert_equal 'hack/name_space', 'Hack::NameSpace'.underscorize
    end
  end
end
