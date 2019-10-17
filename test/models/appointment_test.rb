require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  test "The message cant be blank" do
      user = User.create(name:"Oscar", lastname:"Vargas", identification:"73648273", email:"oscar@gmail.com")
      visitor = Visitor.create(name:"Ferney", lastname:"Medina", identification:"56789876")
      reason = Reason.create(description:"Process to access to holberton")
      message = Appointment.new(reason_id: reason.id, user_id: user.id, visitor_id: visitor.id, message:"")
      assert_not message.save
  end
end



