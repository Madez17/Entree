require 'test_helper'

class ReasonTest < ActiveSupport::TestCase
  test "The message cant be blank" do
      reason = Reason.create(description:"")
      assert_not reason.save
  end 
end
