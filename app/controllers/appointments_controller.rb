class AppointmentsController < ApplicationController
    def index
        @reasons = Reason.all
        @users = User.all
        @appointment = Appointment.new
    end
end
