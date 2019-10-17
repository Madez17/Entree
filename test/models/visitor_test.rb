require 'test_helper'

class VisitorTest < ActiveSupport::TestCase
  test "The name will be not empty" do
    user = Visitor.new(lastname: "Cardenas", identification: 123456)
    assert_not user.save
  end

  test "The last name will be not empty" do
    user = Visitor.new(name: "Jose", identification: 123456)
    assert_not user.save
  end

  test "The identification will be not emty" do
    user = Visitor.new(name: "Jose", lastname: "Cardenas")
    assert_not user.save
  end

end
