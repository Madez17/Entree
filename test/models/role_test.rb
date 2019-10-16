require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  test "Tle type will be not empty" do
    type = Role.new(text: "")
    assert_not type.save
  end
  
end
