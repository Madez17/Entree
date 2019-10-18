class AppointmentsController < ApplicationController
    def index
        @reasons = Reason.all
        @users = User.all
        @appointment = Appointment.new
    end



    def get_user
        p "aqui estoy"
        @users = User.select(:name, :lastname, :id).all
        render json: @users
    end
end
