class AppointmentsController < ApplicationController
    def index
        @reasons = Reason.all
        @users = User.all
        @appointment = Appointment.new
    end
    
    def create
       vistor = visitor_parameters
       @visitor = Visitor.find_by(identification: vistor[:identification])
       unless @visitor
            @visitor = Visitor.new(vistor)
            unless  @visitor.save
                @errors = @visitor.errors
                render "create" and return
            end
       end
       appointment = Appointment.new(appointment_parameter)
       appointment.visitor_id = @visitor.id
       unless appointment.save
            @errors = appointment.errors
            render "create" and return
       end
       AppointmentMailer.appointment_email(appointment).deliver_now
    end

    def get_users
        @users = User.select(:name, :lastname, :id).all
        render json: @users
    end

    private
    def visitor_parameters
        params.require(:visitor).permit(:name, :lastname, :identification)
    end

    def appointment_parameter
        params.require(:appointment).permit(:reason_id, :message, :user_id)
    end
end
