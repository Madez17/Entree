class AppointmentMailer < ApplicationMailer
   def appointment_email(appointment)
    @user = appointment.user
    @appointment = appointment
    @visitor = appointment.visitor
    @reason = appointment.reason
    mail(to: @user.email, subject: 'You have a visitor')
  end  
end
